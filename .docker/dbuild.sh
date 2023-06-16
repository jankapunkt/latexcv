#!/bin/sh
exec docker exec -it latex_daemon pdflatex --output-directory=$1 $1/main.tex
