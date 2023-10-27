FROM ubuntu:22.04
MAINTAINER Sebastian Selka <sselka@symbiolab.de>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install texlive-full fonts-cantarell