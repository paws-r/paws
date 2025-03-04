# odbc

<details>

* Version: 1.6.0
* GitHub: https://github.com/r-dbi/odbc
* Source code: https://github.com/cran/odbc
* Date/Publication: 2025-02-28 14:50:02 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::revdep_details(, "odbc")` for more info

</details>

## In both

*   checking whether package ‘odbc’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/dyfanjones/Documents/Packages/paws/paws.common/revdep/checks.noindex/odbc/new/odbc.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘odbc’ ...
** package ‘odbc’ successfully unpacked and MD5 sums checked
** using staged installation
PKG_CFLAGS=-I/opt/homebrew/opt/unixodbc/include
PKG_LIBS=-L/opt/homebrew/lib -lodbc
<stdin>:1:10: fatal error: 'sql.h' file not found
#include <sql.h>
         ^~~~~~~
1 error generated.
------------------------- ANTICONF ERROR ---------------------------
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
* removing ‘/Users/dyfanjones/Documents/Packages/paws/paws.common/revdep/checks.noindex/odbc/new/odbc.Rcheck/odbc’


```
### CRAN

```
* installing *source* package ‘odbc’ ...
** package ‘odbc’ successfully unpacked and MD5 sums checked
** using staged installation
PKG_CFLAGS=-I/opt/homebrew/opt/unixodbc/include
PKG_LIBS=-L/opt/homebrew/lib -lodbc
<stdin>:1:10: fatal error: 'sql.h' file not found
#include <sql.h>
         ^~~~~~~
1 error generated.
------------------------- ANTICONF ERROR ---------------------------
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
* removing ‘/Users/dyfanjones/Documents/Packages/paws/paws.common/revdep/checks.noindex/odbc/old/odbc.Rcheck/odbc’


```
# paws.analytics

<details>

* Version: 0.9.0
* GitHub: https://github.com/paws-r/paws
* Source code: https://github.com/cran/paws.analytics
* Number of recursive dependencies: 35

Run `revdepcheck::revdep_details(, "paws.analytics")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 12.1Mb
      sub-directories of 1Mb or more:
        R      8.4Mb
        help   3.5Mb
    ```

