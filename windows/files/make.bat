@echo off

set BFPG_SF_TOP=%~dp0
set BFPG_SF_SRC=%BFPG_SF_TOP%\software-foundations\sf
set BFPG_SF_COQ=%BFPG_SF_TOP%\tools\Coq-8.4pl6\bin
set BFPG_SF_PTH=%PATH%

path %BFPG_SF_COQ%;%PATH%
pushd %BFPG_SF_SRC%

make

path %BFPG_SF_PTH%
popd
