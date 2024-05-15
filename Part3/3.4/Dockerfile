FROM docker

COPY builder.sh /usr/local/bin/builder.sh

RUN chmod +x /usr/local/bin/builder.sh

ENV DOCKER_USER=""
ENV DOCKER_PWD=""

ENTRYPOINT ["/usr/local/bin/builder.sh"]
