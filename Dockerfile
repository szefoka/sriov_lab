############################################################
# Dockerfile to build lab practice TMIT BME
# Based on Ubuntu
############################################################

FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install net-tools -y
RUN apt-get install iputils-ping -y
RUN apt-get install iperf
RUN apt-get install git -y
RUN apt-get install -y make gcc libc-dev

WORKDIR /tmp/qperf

ENV QPERF_DOWNLOAD_LINK https://www.openfabrics.org/downloads/qperf/qperf-0.4.9.tar.gz
ENV QPERF_TAR qperf-0.4.9.tar.gz

# Install wget
RUN ["/bin/bash", "-c", "apt-get update && apt-get install wget build-essential -y"]

# Download and extract qperf
RUN ["/bin/bash", "-c", "wget $QPERF_DOWNLOAD_LINK && tar -xvf $QPERF_TAR && rm $QPERF_TAR"]

# Build qperf
WORKDIR qperf-0.4.9
RUN ["/bin/bash", "-c", "./configure CFLAGS=-w && make"]

# Copy qperf 
RUN ["/bin/bash", "-c", "cp src/qperf /usr/local/bin"]

WORKDIR /

CMD ["/bin/bash"]

