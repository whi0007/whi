FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN lscpu
