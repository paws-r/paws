IN_DIR := ./vendor/aws-sdk-js
OUT_DIR := ./paws
CRAN_DIR := ./cran

# Make R use the user's package library by setting the R user home path (R_USER)
# to the folder containing their package library. On Windows, it is in
# ~/Documents/R, whereas in Linux/macOS it is in ~/R.
ifdef OS
	R_USER := ${HOME}/Documents
else
	R_USER := ${HOME}
endif
export R_USER

.PHONY: help build install common codegen unit integration deps update-deps

help:
	@echo "  build              build the AWS SDK package"
	@echo "  install            build and install the AWS SDK package"
	@echo "  common             build and install common functions"
	@echo "  codegen            build and install the code generator"
	@echo "  unit               run unit tests for common and codegen"
	@echo "  integration        run integration tests for the AWS SDK"
	@echo "  deps               get project dependencies"
	@echo "  update-deps        update project dependencies"

build: build-full build-cran

install: build
	@echo "install the AWS SDK package"
	@Rscript -e "devtools::install('${OUT_DIR}', upgrade = FALSE, quiet = TRUE)"

build-full: deps codegen
	@echo "build the AWS SDK package"
	@Rscript -e "library(make.paws); make_sdk('${IN_DIR}', '${OUT_DIR}')"

build-cran: codegen
	@echo "build CRAN packages"
	@Rscript -e "library(make.paws); make_cran('${OUT_DIR}', '${CRAN_DIR}')"

unit: test-common test-codegen

integration:
	@echo "run integration tests"
	@Rscript -e "options('testthat.summary.max_reports' = 1e6); devtools::test('${OUT_DIR}', reporter = 'summary')"

common:
	@echo "build and install common functions"
	@cd paws.common && Rscript -e "devtools::document(); devtools::install(upgrade = FALSE)"

test-common: common
	@echo "run unit tests for common functions"
	@Rscript -e "devtools::test('paws.common')"

codegen: common
	@echo "build and install the code generator"
	@cd make.paws && Rscript -e "devtools::install(upgrade = FALSE)"

test-codegen: codegen
	@echo "run unit tests for the code generator"
	@Rscript -e "devtools::test('make.paws')"

deps:
	@echo "get project dependencies"
	@Rscript -e "if (!require(devtools)) install.packages('devtools', repos = 'https://cran.rstudio.com')"
	@Rscript -e "devtools::install_dev_deps('make.paws')"
	@Rscript -e "devtools::install_dev_deps('paws.common')"
	@if [ ! -x "$(command -v pandoc)" ]; then echo "Please install Pandoc. See https://pandoc.org."; fi
	@if [ ! -d ${IN_DIR} ]; then git submodule init && git submodule update; fi

update-deps: deps
	@echo "update project dependencies"
	@git submodule update --remote
