# Original latex docker setup by Benedikt Lang:
# https://github.com/blang/latex-docker
FROM ubuntu:jammy

MAINTAINER Jan Kuester <info@jankuester.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive \
    texlive-base \
    texlive-latex-extra \
    texlive-fonts-extra

WORKDIR /data
VOLUME ["/data"]
