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
sudo /bin/tlmgr install xifthen
sudo /bin/tlmgr install ifmtarg
sudo /bin/tlmgr install gillius
sudo /bin/tlmgr install xkeyval
sudo /bin/tlmgr install fontaxes
sudo /bin/tlmgr install moresize
sudo /bin/tlmgr install fontawesome
sudo /bin/tlmgr install multirow
sudo /bin/tlmgr install wrapfig
sudo /bin/tlmgr install float
sudo /bin/tlmgr install pgf
sudo /bin/tlmgr install transparent

cd ${PROJECT_DIR}

