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

print "Prepare texlive installation in $PROJECT_DIR:"
cd install-tl-*/
chmod +x install-tl

print "Install texlive from profile: texlive.profile"
sudo ./install-tl --profile=$PROJECT_DIR/texlive.profile

print "Expand PATH"
YEAR=$(date +'%Y')
PATH=/usr/local/texlive/${YEAR}/bin/x86_64-linux:$PATH

print "Check for latex version:"
pdflatex -v

print "Install additional packages:"
sudo /usr/bin/tlmgr install xifthen
sudo /usr/bin/tlmgr install ifmtarg
sudo /usr/bin/tlmgr install gillius
sudo /usr/bin/tlmgr install xkeyval
sudo /usr/bin/tlmgr install fontaxes
sudo /usr/bin/tlmgr install moresize
sudo /usr/bin/tlmgr install fontawesome
sudo /usr/bin/tlmgr install multirow
sudo /usr/bin/tlmgr install wrapfig
sudo /usr/bin/tlmgr install float
sudo /usr/bin/tlmgr install pgf
sudo /usr/bin/tlmgr install transparent

cd ${PROJECT_DIR}

