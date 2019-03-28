IN_DIR := ./vendor/aws-sdk-js
OUT_DIR := ./paws
SCRIPT_DIR := ./script

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
	@echo "  build              build the AWS SDK"
	@echo "  install            build and install the AWS SDK"
	@echo "  common             build and install common functions"
	@echo "  codegen            build and install the code generator"
	@echo "  unit               run unit tests (for common and codegen)"
	@echo "  integration        run integration tests (for AWS SDK)"
	@echo "  deps               get project dependencies"
	@echo "  update-deps        update project dependencies"

build: deps codegen
	@echo "build the AWS SDK"
	@Rscript -e "library(make.paws); make_sdk('${IN_DIR}', '${OUT_DIR}')" && \
	${SCRIPT_DIR}/update_version.sh ${OUT_DIR}

install: build
	@echo "install the AWS SDK package"
	@Rscript -e "devtools::install('${OUT_DIR}', upgrade = FALSE, quiet = TRUE)"

unit: test-common test-codegen

integration:
	@echo "run integration tests"
	@Rscript -e "options('testthat.summary.max_reports' = 1e6); devtools::test('${OUT_DIR}', reporter = 'summary')"

common:
	@echo "build and install common functions"
	@cd paws.common && Rscript -e "devtools::document(); devtools::install(upgrade = FALSE)"

test-common:
	@echo "run unit tests for common functions"
	@Rscript -e "devtools::test('paws.common')"

codegen: common
	@echo "build and install the code generator"
	@cd make.paws && Rscript -e "devtools::install(upgrade = FALSE)"

test-codegen:
	@echo "run unit tests for the code generator"
	@Rscript -e "devtools::test('make.paws')"

deps:
	@echo "get project dependencies"
	@git submodule init; git submodule update

update-deps: deps
	@echo "update project dependencies"
	@cd ${IN_DIR}; git pull origin master
