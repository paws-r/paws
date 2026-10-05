# odbc (1.7.2)

* GitHub: <https://github.com/r-dbi/odbc>
* Email: <mailto:hadley@posit.co>
* GitHub mirror: <https://github.com/cran/odbc>

Run `revdepcheck::revdep_details(, "odbc")` for more info

## In both

*   checking whether package ‘odbc’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/Users/Dyfan.Jones/Library/CloudStorage/OneDrive-TheVeryGroup/Documents/Packages/paws-dev/paws.common/revdep/checks.noindex/odbc/new/odbc.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘odbc’ ...
** this is package ‘odbc’ version ‘1.7.2’
** package ‘odbc’ successfully unpacked and MD5 sums checked
** using staged installation
Found pkg-config cflags and libs!
PKG_CFLAGS=-I/opt/homebrew/opt/unixodbc/include
PKG_LIBS=-L/opt/homebrew/lib -lodbc
<stdin>:1:10: fatal error: 'sql.h' file not found
    1 | #include <sql.h>
      |          ^~~~~~~
...
 * deb: unixodbc-dev (Debian, Ubuntu, etc)
 * rpm: unixODBC-devel (Fedora, CentOS, RHEL)
 * csw: unixodbc_dev (Solaris)
 * pacman: unixodbc (Archlinux, Manjaro, etc)
 * brew: unixodbc (Mac OSX)
To use a custom odbc set INCLUDE_DIR and LIB_DIR and PKG_LIBS manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=... PKG_LIBS=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘odbc’
* removing ‘/Users/Dyfan.Jones/Library/CloudStorage/OneDrive-TheVeryGroup/Documents/Packages/paws-dev/paws.common/revdep/checks.noindex/odbc/new/odbc.Rcheck/odbc’


```
### CRAN

```
* installing *source* package ‘odbc’ ...
** this is package ‘odbc’ version ‘1.7.2’
** package ‘odbc’ successfully unpacked and MD5 sums checked
** using staged installation
Found pkg-config cflags and libs!
PKG_CFLAGS=-I/opt/homebrew/opt/unixodbc/include
PKG_LIBS=-L/opt/homebrew/lib -lodbc
<stdin>:1:10: fatal error: 'sql.h' file not found
    1 | #include <sql.h>
      |          ^~~~~~~
...
 * deb: unixodbc-dev (Debian, Ubuntu, etc)
 * rpm: unixODBC-devel (Fedora, CentOS, RHEL)
 * csw: unixodbc_dev (Solaris)
 * pacman: unixodbc (Archlinux, Manjaro, etc)
 * brew: unixodbc (Mac OSX)
To use a custom odbc set INCLUDE_DIR and LIB_DIR and PKG_LIBS manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=... PKG_LIBS=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘odbc’
* removing ‘/Users/Dyfan.Jones/Library/CloudStorage/OneDrive-TheVeryGroup/Documents/Packages/paws-dev/paws.common/revdep/checks.noindex/odbc/old/odbc.Rcheck/odbc’


```
# paws.analytics (0.10.0)

* GitHub: <https://github.com/paws-r/paws>
* Email: <mailto:dyfan.r.jones@gmail.com>
* GitHub mirror: <https://github.com/cran/paws.analytics>

Run `revdepcheck::revdep_details(, "paws.analytics")` for more info

## In both

*   R CMD check timed out


# sixtyfour (0.2.4)

* GitHub: <https://github.com/getwilds/sixtyfour>
* Email: <mailto:sachamber@fredhutch.org>
* GitHub mirror: <https://github.com/cran/sixtyfour>

Run `revdepcheck::revdep_details(, "sixtyfour")` for more info

## In both

*   checking examples ... ERROR
     ```
     Running examples in ‘sixtyfour-Ex.R’ failed
     The error most likely occurred in:
     
     > ### Name: aws_bucket_create
     > ### Title: Create an S3 bucket
     > ### Aliases: aws_bucket_create
     > 
     > ### ** Examples
     > 
     > ## Don't show: 
     > if (aws_has_creds()) withAutoprint({ # examplesIf
     + ## End(Don't show)
     + bucket2 <- random_bucket()
     + aws_bucket_create(bucket2)
     + 
     + # cleanup
     + six_bucket_delete(bucket2, force = TRUE)
     + ## Don't show: 
     + }) # examplesIf
     > bucket2 <- random_bucket()
     > aws_bucket_create(bucket2)
     Error in env_var("AWS_REGION") : 
       Environment variable 'AWS_REGION' not found
     Calls: withAutoprint ... aws_bucket_create -> <Anonymous> -> <Anonymous> -> env_var
     Execution halted
     ```

*   R CMD check timed out


