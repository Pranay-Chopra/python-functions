@echo off
REM Batch file to invoke various functions of Python
REM Includes module installation/uninstallation using PIP
REM To be used on a windows computer


:start
cls
title Python functions
color 0f
echo.
echo.
echo Select menu
echo ================
echo 1. Display installed python modules
echo 2. Install module(s)
echo 3. Uninstall module(s)
echo 4. Get information on installed module(s)
echo 5. Get general information on the distribution of Python installed
echo 6. Use the Python interpreter
echo 7. Run a Python script in this console
echo 8. List all available modules
echo 9. Exit
echo.
 
 
set /p x=Pick: 
IF '%x%' == '1' GOTO NUM_1
IF '%x%' == '2' GOTO NUM_2
IF '%x%' == '3' GOTO NUM_3
IF '%x%' == '4' GOTO NUM_4
IF '%x%' == '5' GOTO NUM_5
IF '%x%' == '6' GOTO NUM_6
IF '%x%' == '7' GOTO NUM_7
IF '%x%' == '8' GOTO NUM_8
IF '%x%' == '9' GOTO NUM_9
GOTO start
 
:NUM_1
cd %pip%
echo.
pip list
echo.
pause
GOTO start
 
:NUM_2
echo.
echo Enter module name(s) to start INSTALL using pip
set INPUT=
set /P INPUT=Type module name(s): %=%
cd %pip%
echo.
 
pip install %INPUT%
echo.
 
pause
GOTO start
 
:NUM_3
echo.
echo Enter module name(s) to UNINSTALL using pip
set INPUT=
set /P INPUT=Type module name(s): %=%
cd %pip%
echo.
 
pip uninstall %INPUT%
echo.
 
pause
GOTO start

:NUM_4
echo.
echo Enter module name(s) to get help
set INPUT=
set /P INPUT=Type module name(s): %=%
cd %pip%
 
echo.
pip show %INPUT%
echo.
 
pause
GOTO start

:NUM_5
cd %pip%
cd ..
echo.
echo Python installed at %CD%
echo.
for /f "tokens=* USEBACKQ" %%F in (`py -V`) do (
SET pyver=%%F
)
echo Your Python version is %pyver%
echo.
pause
GOTO start

:NUM_6
echo.
for /f "tokens=* USEBACKQ" %%F in (`py -V`) do (
SET pyver=%%F
)
cls
title %pyver%
py
echo.
pause
GOTO start

:NUM_7
echo.
set INPUT=
set /P INPUT=Type complete location of the file (including the file name and extension) in double quotes: %=%
echo.
title Running %INPUT%
py %INPUT%
echo.
pause
GOTO start

:NUM_8
echo.
echo PIL                        asyncio                        fileinput           pylint
echo PyInstaller                asyncore                       fnmatch             pyparsing
echo Test                       atexit                         formatter           pytz
echo __future__                 audioop                        fractions           queue
echo _abc                       base64                         ftplib              quopri
echo _aix_support               bdb                            functools           random
echo _ast                       binascii                       future              re
echo _asyncio                   binhex                         gc                  reprlib
echo _bisect                    bisect                         genericpath         requests
echo _blake2                    brain_argparse                 getopt              rlcompleter
echo _bootlocale                brain_attrs                    getpass             runpy
echo _bootsubprocess            brain_boto3                    gettext             sched
echo _bz2                       brain_builtin_inference        glob                secrets
echo _codecs                    brain_collections              graphlib            select
echo _codecs_cn                 brain_crypt                    gtts                selectors
echo _codecs_hk                 brain_curses                   gzip                selenium
echo _codecs_iso2022            brain_dataclasses              hashlib             setuptools
echo _codecs_jp                 brain_dateutil                 heapq               shelve
echo _codecs_kr                 brain_fstrings                 hmac                shlex
echo _codecs_tw                 brain_functools                html                shutil
echo _collections               brain_gi                       http                signal
echo _collections_abc           brain_hashlib                  idlelib             site
echo _compat_pickle             brain_http                     idna                six
echo _compression               brain_io                       imaplib             smtpd
echo _contextvars               brain_mechanize                imghdr              smtplib
echo _csv                       brain_multiprocessing          imp                 sndhdr
echo _ctypes                    brain_namedtuple_enum          importlib           socket
echo _ctypes_test               brain_nose                     inspect             socketserver
echo _datetime                  brain_numpy_core_fromnumeric   io                  soupsieve
echo _decimal                   brain_numpy_core_function_base ipaddress           sqlite3
echo _elementtree               brain_numpy_core_multiarray    isort               sre_compile
echo _functools                 brain_numpy_core_numeric       itertools           sre_constants
echo _hashlib                   brain_numpy_core_numerictypes  json                sre_parse
echo _heapq                     brain_numpy_core_umath         jtutils             ssl
echo _imp                       brain_numpy_ndarray            keyword             stat
echo _io                        brain_numpy_random_mtrand      kiwisolver          statistics
echo _json                      brain_numpy_utils              lazy_object_proxy   string
echo _locale                    brain_pkg_resources            leven               stringprep
echo _lsprof                    brain_pytest                   lib2to3             struct
echo _lzma                      brain_qt                       libfuturize         subprocess
echo _markupbase                brain_random                   libpasteurize       sunau
echo _md5                       brain_re                       linecache           symbol
echo _msi                       brain_responses                locale              symtable
echo _multibytecodec            brain_scipy_signal             logging             sys
echo _multiprocessing           brain_six                      lzma                sysconfig
echo _opcode                    brain_ssl                      mailbox             tabnanny
echo _operator                  brain_subprocess               mailcap             tarfile
echo _osx_support               brain_threading                marshal             telnetlib
echo _overlapped                brain_typing                   math                tempfile
echo _peg_parser                brain_uuid                     matplotlib          test
echo _pickle                    bs4                            mccabe              testing
echo _py_abc                    builtins                       mimetypes           textwrap
echo _pydecimal                 bz2                            mmap                this
echo _pyinstaller_hooks_contrib cProfile                       modulefinder        threading
echo _pyio                      calendar                       msilib              time
echo _queue                     certifi                        msvcrt              timeit
echo _random                    cgi                            multiprocessing     tk
echo _sha1                      cgitb                          netrc               tkinter
echo _sha256                    chardet                        nntplib             token
echo _sha3                      chunk                          nose                tokenize
echo _sha512                    click                          nt                  toml
echo _signal                    cmath                          ntpath              trace
echo _sitebuiltins              cmd                            nturl2path          traceback
echo _socket                    code                           numbers             tracemalloc
echo _sqlite3                   codecs                         numpy               tty
echo _sre                       codeop                         opcode              turtle
echo _ssl                       collections                    operator            turtledemo
echo _stat                      colorama                       optparse            types
echo _statistics                colorsys                       ordlookup           typing
echo _string                    compileall                     os                  unicodedata
echo _strptime                  concurrent                     pandas              unittest
echo _struct                    configparser                   parser              urllib
echo _symtable                  contextlib                     past                urllib3
echo _testbuffer                contextvars                    pathlib             uu
echo _testcapi                  copy                           pdb                 uuid
echo _testconsole               copyreg                        pefile              venv
echo _testimportmultiple        crypt                          peutils             warnings
echo _testinternalcapi          csv                            pickle              wave
echo _testmultiphase            ctypes                         pickletools         weakref
echo _thread                    curses                         pip                 webbrowser
echo _threading_local           cycler                         pipes               win32ctypes
echo _tkinter                   dataclasses                    pkg_resources       winreg
echo _tracemalloc               datetime                       pkgutil             winsound
echo _uuid                      dateutil                       platform            wrapt
echo _warnings                  dbm                            playsound           wsgiref
echo _weakref                   decimal                        plistlib            xdrlib
echo _weakrefset                demjson                        poplib              xlrd
echo _winapi                    difflib                        posixpath           xml
echo _xxsubinterpreters         dis                            pprint              xmlrpc
echo _zoneinfo                  distutils                      profile             xmltodict
echo abc                        doctest                        pstats              xxsubtype
echo aifc                       easy_install                   pty                 zipapp
echo altgraph                   email                          py_compile          zipfile
echo antigravity                encodings                      pyclbr              zipimport
echo argparse                   ensurepip                      pydoc               zlib
echo array                      enum                           pydoc_data          zoneinfo
echo ast                        errno                          pyexpat             astroid
echo faulthandler               pygame                         asynchat            filecmp
echo pylab
echo.
pause
GOTO start

:NUM_9
echo.
set INPUT=
set /P INPUT=Sure? (y/n) %=%
IF '%INPUT%' == 'y' exit
IF '%INPUT%' == 'n' GOTO start
IF '%INPUT%' == 'Y' exit
IF '%INPUT%' == 'N' GOTO start
GOTO NUM_9

