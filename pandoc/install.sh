#!/usr/bin/env bash

# Check for sudo tlmgr - the native TeX Live Manager
if test ! "$(command -v sudo tlmgr)"
then
	printf "\\r  [ \\033[0;33mWARN\\033[0m ] sudo tlmgr is not installed.\\n"
	exit 1
fi

printf "› Installing TeX recommended fonts and updating.\\n"

sudo tlmgr update --all --self

sudo tlmgr install titlesec
sudo tlmgr install framed
sudo tlmgr install threeparttable
sudo tlmgr install wrapfig
sudo tlmgr install multirow
sudo tlmgr install enumitem
sudo tlmgr install bbding
sudo tlmgr install titling
sudo tlmgr install tabu
sudo tlmgr install mdframed
sudo tlmgr install tcolorbox
sudo tlmgr install textpos
sudo tlmgr install import
sudo tlmgr install varwidth
sudo tlmgr install needspace
sudo tlmgr install tocloft
sudo tlmgr install ntheorem
sudo tlmgr install environ
sudo tlmgr install trimspaces

sudo tlmgr install collection-fontsrecommended
