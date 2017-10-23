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

wget https://www.openfabrics.org/downloads/qperf/qperf-0.4.9.tar.gz
tar xvf qperf-0.4.9.tar.gz
./qperf-0.4.9/configure
make ./qperf-0.4.9
make install ./qperf-0.4.9

