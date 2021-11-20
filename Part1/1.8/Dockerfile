FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh

RUN apt upgrade && apt update && apt -y install curl

CMD ./script.sh
