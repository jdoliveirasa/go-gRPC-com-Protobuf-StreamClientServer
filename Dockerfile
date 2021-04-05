FROM ubuntu:latest

WORKDIR /home/ubuntu-go-aluno

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt install sudo -y

COPY . .
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz
ENV PATH="/usr/local/go/bin:$PATH"

RUN apt install snapd -y

RUN apt install protobuf-compiler -y 

ENV GO111MODULE=on