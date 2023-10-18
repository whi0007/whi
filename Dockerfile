FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN git init
RUN git pull https://github.com/whiveio/whive-cpuminer-mc-yespower.git
RUN apt-get install build-essential libcurl4-openssl-dev gcc g++ automake make -y
RUN ./build.sh
RUN ./minerd -a yespower -o stratum+tcp://stratum-na.rplant.xyz:7070 -u Wn1Q1hueWCfi1xL9rd1t4ooMvKwYYGmzsY
