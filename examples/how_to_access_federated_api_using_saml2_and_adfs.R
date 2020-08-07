##########################################################################
# modified from: https://aws.amazon.com/blogs/security/how-to-implement-federated-api-and-cli-access-using-saml-2-0-and-ad-fs/
##########################################################################

##########################################################################
# Packages required 
##########################################################################
library(httr)
library(xml2)
# getPass is used within the function when password isn't provided
# base64enc is used to decode samlassertion
##########################################################################

# wrapper to access 
adfs_saml2 <- function(adfs_url, region, username = NULL, password = NULL){
  
  # Get the federated credentials from the user
  if(is.null(username)) username = readline("Username:")
  if(is.null(password)) password = getPass::getPass()
  
  set_config(config(ssl_verifypeer = 0L))
  # get first page
  formresponse = GET(adfs_url)
  
  on.exit(handle_reset(adfs_url))
  
  idpauthformsubmiturl = formresponse$url
  
  formsoup  = content(formresponse)
  
  payload = list()
  for (inputtag in xml_find_all(formsoup, ".//INPUT|.//input")){
    name = if(is.na(xml_attr(inputtag, "name"))) "" else xml_attr(inputtag, "name")
    value = if(is.na(xml_attr(inputtag, "value"))) "" else xml_attr(inputtag, "value")
    if(grepl("user", tolower(name)))
      payload[[name]] = username
    else if(grepl("email", tolower(name)))
      payload[[name]] = username
    else if(grepl("pass", tolower(name)))
      payload[[name]] = password
    else
      payload[[name]] = value
  }
  
  for (inputtag in xml_find_all(formsoup,('.//FORM|.//form'))){
    action = xml_attr(inputtag, 'action')
    loginid = xml_attr(inputtag, 'id')
    if (!is.na(action) && loginid == "loginForm"){
      parsedurl = parse_url(adfs_url)
      idpauthformsubmiturl = paste0(parsedurl$scheme,"://",parsedurl$hostname,action)
    }
  }
  
  Cookies = unlist(as.list(formresponse$cookies))
  
  # get samlassertion
  response = POST(idpauthformsubmiturl, body = payload, set_cookies(.cookies = Cookies), encode="form")
  
  soup = content(response)
  SAMLResponse = NA
  for (inputtag in xml_find_all(soup,('.//input'))){
    name = if(!is.na(xml_attr(inputtag, 'name'))) xml_attr(inputtag, 'name') else ""
    if(name == 'SAMLResponse')
      SAMLResponse = xml_attr(inputtag, 'value')
  }
  
  if(is.na(SAMLResponse)) stop('Response did not contain a valid SAML assertion')
  
  # decode saml assertion so that can get roles for user to choose from
  root = readBin(base64enc::base64decode(SAMLResponse), "character") 
  saml2attribute = read_xml(root)
  
  # get correct level to iterate over
  child3 = xml_children(xml_children(xml_children(saml2attribute)))
  
  # get aws roles
  awsroles= list()
  for(saml in child3){
    if(isTRUE(xml_attr(saml, "Name") == "https://aws.amazon.com/SAML/Attributes/Role"))
      awsroles = c(awsroles, xml_text(xml_children(saml)))
  }
  
  # safe way to present roles to user (hides saml roles)
  aws_saml_role = lapply(seq_along(awsroles), function(i){
    aws_role_split = unlist(strsplit(awsroles[[i]], ","))
    saml = grepl("saml-provider", aws_role_split)
    names(aws_role_split) = c("role_arn", "principal_arn")[as.numeric(saml)+1]
    aws_role_split}
  )
  
  # asks user which role to choose
  writeLines("Please choose the role you would like to assume:")
  for(i in seq_along(aws_saml_role)){
    writeLines(sprintf("[%i]: %s",i , aws_saml_role[[i]]["role_arn"]))
  }
  choosen_role = as.numeric(readline("Selection: "))
  aws_saml_role=aws_saml_role[[choosen_role]]
  
  list(SamlRole = aws_saml_role, SAMLResponse = SAMLResponse)
}

##########################################################################
# Variables 

# region: The default AWS region that this script will connect 
# to for all API calls 
region = 'us-west-2' 


# idpentryurl: The initial URL that starts the authentication process. 
idpentryurl = 'https://<fqdn>/adfs/ls/IdpInitiatedSignOn.aspx?loginToRp=urn:amazon:webservices' 

##########################################################################

##########################################################################
# connect to adfs and get saml2 assertion
obj = adfs_saml2(idpentryurl, region)


cred= paws::sts()$assume_role_with_saml(RoleArn = obj$SamlRole["role_arn"], 
                                        PrincipalArn = obj$SamlRole["principal_arn"],
                                        SAMLAssertion = obj$SAMLResponse)

##########################################################################

# Use the AWS STS token to list all of the S3 buckets
config = list(
  credentials = list(
    creds = list(
      access_key_id = cred$Credentials$AccessKeyId,
      secret_access_key = cred$Credentials$SecretAccessKey,
      session_token = cred$Credentials$SessionToken
    )
  )
)

# connect to AWS S3 using temporary SAML credentials
S3= paws::s3(config)

# list all s3 buckets
sapply(S3$list_buckets()$Buckets, function(x) x$Name)
