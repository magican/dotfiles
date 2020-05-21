#!/usr/bin/env bash

# Check for tlmgr - the native TeX Live Manager
if test ! "$(command -v tlmgr)"
then
	printf "\\r  [ \\033[0;33mWARN\\033[0m ] TLMGR is not installed.\\n"
	exit 1
fi

printf "› Installing TeX recommended fonts and updating.\\n"

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo tlmgr install collection-fontsrecommended
sudo tlmgr update --all
