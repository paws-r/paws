IN_DIR := ./vendor/aws-sdk-js
OUT_DIR := ./cran
DOC_DIR := ./paws
CRAN_DIR := ./cran
CACHE_DIR := ./cache

# Make R use the user's package library by setting the R user home path (R_USER)
# to the folder containing their package library. On Windows, it is in
# ~/Documents/R, whereas in Linux/macOS it is in ~/R. You can set R_USER
# manually by running `make <recipe> R_USER=<foo>`.
ifndef R_USER
	ifdef OS
		R_USER := ${HOME}/Documents
	else
		R_USER := ${HOME}
	endif
endif
export R_USER

.PHONY: help build install common codegen unit integration deps update-deps

help:
	@echo "  build              build the AWS SDK package"
	@echo "  rebuild            clear the build cache and build"
	@echo "  install            build and install the AWS SDK packages"
	@echo "  common             build and install common functions"
	@echo "  codegen            build and install the code generator"
	@echo "  check              run R CMD check on packages"
	@echo "  unit               run unit tests for common and codegen"
	@echo "  integration        run integration tests for the AWS SDK"
	@echo "  clean              clear the build cache"
	@echo "  deps               get project dependencies"
	@echo "  update-deps        update project dependencies"

rebuild: clean build

install: build
	@echo "install the AWS SDK packages"
	@for package in ${CRAN_DIR}/*/; do \
		if [ "$$package" = "${CRAN_DIR}/paws/" ]; then continue; fi; \
		echo "- $$(basename $$package)"; \
		Rscript -e "devtools::install('$$package', upgrade = FALSE, quiet = TRUE)"; \
	done;
	@echo "- paws"
	@Rscript -e "devtools::install('${CRAN_DIR}/paws', upgrade = FALSE, quiet = TRUE)";
	@echo "done"

build: codegen
	@echo "build the AWS SDK package"
	@Rscript -e "library(make.paws); make_sdk('${IN_DIR}', '${OUT_DIR}', '${DOC_DIR}', cache_dir = '${CACHE_DIR}')"

check:
	@echo "run R CMD check on packages"
	@set -e ; \
	cleanup () { rm *.tar.gz; rm -fr *.Rcheck; } ; \
	trap cleanup EXIT ; \
	for package in paws.common make.paws $$(find cran -mindepth 1 -maxdepth 1) ; do \
		R CMD build $$package ; \
		R CMD check --as-cran --run-donttest --no-manual $$(basename $$package)_*.tar.gz ; \
	done ;

unit: test-common test-codegen

integration:
	@echo "run integration tests"
	@for package in ${CRAN_DIR}/*/; do \
		if [ "$$package" = "${CRAN_DIR}/paws/" ]; then continue; fi; \
		echo "- $$(basename $$package)"; \
		Rscript -e "options('testthat.summary.max_reports' = 1e6); devtools::test('$$package', reporter = 'summary')"; \
	done;

common:
	@echo "build and install common functions"
	@cd paws.common && Rscript -e "devtools::document(); devtools::install(upgrade = FALSE)"

test-common: common
	@echo "run unit tests for common functions"
	@Rscript -e "devtools::test('paws.common'); devtools::check('paws.common')"

codegen: common
	@echo "build and install the code generator"
	@cd make.paws && Rscript -e "devtools::install(upgrade = FALSE)"

test-codegen: codegen
	@echo "run unit tests for the code generator"
	@Rscript -e "devtools::test('make.paws')"

clean:
	@if [ -d "${CACHE_DIR}" ]; then rm -rf "${CACHE_DIR}"; fi

deps:
	@echo "get project dependencies"
	@Rscript -e "if (!require(devtools)) install.packages('devtools', repos = 'https://cran.rstudio.com')"
	@Rscript -e "devtools::install_dev_deps('make.paws')"
	@Rscript -e "devtools::install_dev_deps('paws.common')"
	@command -v pandoc >/dev/null 2>&1 || echo "Please install Pandoc. See https://pandoc.org." >&2
	@if [ ! -d ${IN_DIR}/apis ]; then git submodule init && git submodule update; fi

update-deps:
	@echo "update project dependencies"
	@git submodule update --remote
