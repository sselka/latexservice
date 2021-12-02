FROM ubuntu:21.10
MAINTAINER Sebastian Selka <sselka@symbiolab.de>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install texlive-full fonts-cantarell
ADD entrypoint.sh /
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]