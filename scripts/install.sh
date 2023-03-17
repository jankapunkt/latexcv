#!/usr/bin/env bash

set -e

function print () {
    echo "[latexcv]: $1"
}

PROJECT_DIR=$(pwd)

print "Download TexLive"
cd /tmp && wget http://ftp.fau.de/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz

print "Unpack texlive"
tar -xvzf install-tl-unx.tar.gz
rm install-tl-unx.tar.gz

print "Prepare texlive installation in $PROJECT_DIR:"
cd install-tl-*/ || exit 1
chmod +x install-tl

print "Install texlive from profile: texlive.profile"
sudo ./install-tl --profile="$PROJECT_DIR/texlive.profile"

print "Expand PATH"
YEAR=$(date +'%Y')
PATH=/usr/local/texlive/${YEAR}/bin/x86_64-linux:$PATH

print "Check for latex version:"
pdflatex -v

print "Install additional packages:"
#sudo su
tlmgr install xifthen
#tlmgr install ifmtarg
#tlmgr install gillius
#tlmgr install xkeyval
#tlmgr install fontaxes
#tlmgr install moresize
#tlmgr install fontawesome
#tlmgr install multirow
#tlmgr install wrapfig
#tlmgr install float
#tlmgr install pgf
#tlmgr install transparent
# cd "${PROJECT_DIR}"
