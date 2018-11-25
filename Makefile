IN_DIR := ./vendor/aws-sdk-js
API_DIR := ${IN_DIR}/apis
OUT_DIR := ./service
SCRIPT_DIR := ./script

PACKAGES := $(shell awk '{ print $$1 }' PACKAGES.txt)
INSTALL_PACKAGES := $(addprefix install-,${PACKAGES})
INTEGRATION_TESTS := $(addprefix test-,${PACKAGES})

# Make R use the user's package library by setting the R user home path (R_USER)
# to the folder containing their package library. On Windows, it is in
# ~/Documents/R, whereas in Linux/macOS it is in ~/R.
# In Windows
ifdef OS
	R_USER := ${HOME}/Documents
else
	R_USER := ${HOME}
endif
export R_USER

.PHONY: help list build unit integration docs codegen deps

help:
	@echo "  list               list available packages"
	@echo "  build              build the AWS SDK packages"
	@echo "  <package>          build <package>"
	@echo "  install-<package>  build and install <package>"
	@echo "  unit               run unit tests"
	@echo "  integration        run integration tests"
	@echo "  docs               build project docs"
	@echo "  codegen            build and install the code generator"
	@echo "  deps               get project dependencies"

list:
	@echo "available packages"
	@echo "${PACKAGES}" | tr "[:space:]" "\n" | column -c80 | less

build: ${PACKAGES}
	@echo "build the AWS SDK packages"

${PACKAGES}:
	@echo "build $@"
	@API=$$(grep -e "^$@\b" PACKAGES.txt | awk '{ print $$2 }') && \
	Rscript -e "library(make.paws); make_package('$$API', '${IN_DIR}', '${OUT_DIR}')" && \
	${SCRIPT_DIR}/update_version.sh $@

install: ${INSTALL_PACKAGES}
	@echo "install the AWS SDK packages"

${INSTALL_PACKAGES}:
	@PACKAGE=$(patsubst install-%,%,$@) && \
	make -s $$PACKAGE && \
	echo "install $$PACKAGE" && \
	Rscript -e "devtools::install('${OUT_DIR}/$$PACKAGE', quiet = TRUE)"

unit:
	@echo "run unit tests"
	@Rscript -e "devtools::test('make.paws')"

integration: ${INTEGRATION_TESTS}
	@echo "run integration tests"

${INTEGRATION_TESTS}:
	@PACKAGE=$(patsubst test-%,%,$@) && \
	if [ -e ${OUT_DIR}/$$PACKAGE/tests ]; then \
	  Rscript -e "devtools::test('${OUT_DIR}/$$PACKAGE', reporter = testthat::MinimalReporter)"; \
	else \
	  echo "$$PACKAGE: no tests"; \
	fi

docs:
	@echo "build project docs"
	@Rscript -e "rmarkdown::render('readme.Rmd')"

codegen:
	@echo "build and install the code generator"
	@Rscript -e "devtools::document('make.paws'); devtools::install('make.paws')"

deps:
	@echo "get project dependencies"
	@cd ${IN_DIR}; git submodule init; git submodule update
	@Rscript -e "library(make.paws); make_package_list('${IN_DIR}')" > PACKAGES.txt
