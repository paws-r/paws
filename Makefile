IN_DIR := ./aws-sdk-js
API_DIR := ${IN_DIR}/apis
OUT_DIR := ./service

SERVICES := $(shell cd ${API_DIR} && ls *.normal.json | sed -E 's/(.*)-[[:digit:]]{4}.*/\1/' | uniq)
PACKAGES := $(shell cd ${OUT_DIR} && ls)
INTEGRATION_TESTS := $(addprefix test-,${PACKAGES})

# Make R use the user's package library by setting the right R_USER path.
ifdef OS
	R_USER := ${HOME}/Documents
else
	R_USER := ${HOME}
endif
export R_USER

help:
	@echo "  build          build the SDK packages"
	@echo "  codegen        build and install the code generator"
	@echo "  docs           build project docs"
	@echo "  integration    run integration tests"
	@echo "  unit           run unit tests"
	@echo "  <service>      build the SDK for <service>"

build: ${SERVICES}
	@echo "build the SDK packages"

${SERVICES}:
	@echo "build $@"
	@Rscript -e 'library(make.paws); make_package("$@", "${IN_DIR}", "${OUT_DIR}")'

codegen:
	@echo "build and install the code generator"
	@Rscript -e 'devtools::install("make.paws")'

unit:
	@echo "run unit tests"
	@Rscript -e 'devtools::test("make.paws")'

integration: ${INTEGRATION_TESTS}
	@echo "run integration tests"

${INTEGRATION_TESTS}:
	@PACKAGE=$(patsubst test-%,%,$@) && \
	if [ -e ${OUT_DIR}/$$PACKAGE/tests ]; then \
	  Rscript -e "devtools::test(\"${OUT_DIR}/$$PACKAGE\", reporter = testthat::MinimalReporter)"; \
	else \
	  echo "$$PACKAGE: no tests"; \
	fi

docs:
	@echo "build project docs"
