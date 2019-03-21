FROM finalgene/composer:1.8

LABEL maintainer="frank.giesecke@final-gene.de"

ENV PHING_VERSION=2.16.1

WORKDIR /usr/local/bin

RUN curl -LSs -o phing "https://www.phing.info/get/phing-${PHING_VERSION}.phar" \
    && chmod a+x phing

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD [""]
