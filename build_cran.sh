OUT_DIR=$1
CRAN_DIR=$2

echo "build CRAN packages"

while true; do
    read -p "Build paws with cran packages only (y/n)? " yn
    case $yn in
        [Yy]* ) Rscript -e "make.paws::make_cran('${OUT_DIR}', '${CRAN_DIR}', only_cran=TRUE)"; break;;
        [Nn]* ) Rscript -e "make.paws::make_cran('${OUT_DIR}', '${CRAN_DIR}', only_cran=FALSE)"; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
