#!/usr/bin/env bash

# Check for sudo tlmgr - the native TeX Live Manager
if test ! "$(command -v sudo tlmgr)"
then
	printf "\\r  [ \\033[0;33mWARN\\033[0m ] sudo tlmgr is not installed.\\n"
	exit 1
fi

printf "› Installing TeX recommended fonts and updating.\\n"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo tlmgr install collection-fontsrecommended
sudo tlmgr update --all --self
sudo tlmgr install tcolorbox
sudo tlmgr install pgf
sudo tlmgr install xcolor
sudo tlmgr install environ
sudo tlmgr install trimspaces
sudo tlmgr install mathpazo
sudo tlmgr install parskip
sudo tlmgr install adjustbox
sudo tlmgr install collectbox
sudo tlmgr install eurosym
sudo tlmgr install ecs
sudo tlmgr install ucs
sudo tlmgr install enumitem
sudo tlmgr install ulem
sudo tlmgr install mathrsfs
sudo tlmgr install jknapltx rsfs