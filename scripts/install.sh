#!/usr/bin/env bash

function print () {
    echo "[latexcv]: $1"
}

PROJECT_DIR=$(pwd)

print "Download TexLive"
cd /tmp && wget http://ftp.fau.de/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz

print "Unpack texlive"
tar -xvzf install-tl-unx.tar.gz
rm install-tl-unx.tar.gz

echo "Prepare texlive installation in $(pwd):"
cd install-tl-*/
chmod +x install-tl

echo "Install texlive from profile: texlive.profile"
./install-tl --profile=$PROJECT_DIR/texlive.profile

echo "Expand PATH"
YEAR=$(date +'%Y')
PATH=/usr/local/texlive/${YEAR}/bin/x86_64-linux:$PATH

echo "Check for latex version:"
pdflatex -v

echo "Install additional packages:"
tlmgr install xifthen
tlmgr install ifmtarg
tlmgr install gillius
tlmgr install xkeyval
tlmgr install fontaxes
tlmgr install moresize
tlmgr install fontawesome
tlmgr install multirow
tlmgr install wrapfig
tlmgr install float
tlmgr install pgf
tlmgr install transparent

cd ${PROJECT_DIR}

