#!/bin/sh
IMAGE=jankapunkt/latexcv:1.0
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE"  pdflatex --output-directory=$1 $1/main.tex
