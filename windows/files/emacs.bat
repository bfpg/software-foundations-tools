@echo off

set BFPG_SF_TOP=%~dp0
set BFPG_SF_SRC=%BFPG_SF_TOP%\software-foundations\sf
set BFPG_SF_COQ=%BFPG_SF_TOP%\tools\Coq-8.4pl6\bin
set BFPG_SF_PRF=%BFPG_SF_TOP%\tools\ProofGeneral-4.2\generic\proof-site.el
set BFPG_SF_EMC=%BFPG_SF_TOP%\tools\emacs-24.5-bin-i686-mingw32\bin\runemacs.exe
set BFPG_SF_PTH=%PATH%

path %BFPG_SF_COQ%;%PATH%
pushd %BFPG_SF_SRC%

%BFPG_SF_EMC% --load %BFPG_SF_PRF% Basics.v %*

path %BFPG_SF_PTH%
popd
