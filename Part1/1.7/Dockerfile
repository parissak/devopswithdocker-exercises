FROM ubuntu:22.04

COPY script.sh .

RUN chmod +x script.sh

RUN apt upgrade && apt update && apt -y install curl

CMD ./script.sh
