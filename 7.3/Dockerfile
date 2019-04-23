#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM php:7.3-alpine

LABEL repository="https://github.com/MilesChou/docker-chromium-php"
LABEL homepage="https://github.com/MilesChou/docker-chromium-php"
LABEL maintainer="MilesChou <jangconan@gmail.com>"

RUN set -xe && \
        apk add --no-cache \
            chromium \
            chromium-chromedriver \
            harfbuzz \
            nss \
        && \
        rm -rf /var/cache/* \
        && \
        mkdir /var/cache/apk

# Add Chromium as a user
RUN mkdir -p /usr/src/app \
    && touch /var/log/chromedriver.log \
    && adduser -D chromium \
    && chown -R chromium:chromium /usr/src/app /var/log/chromedriver.log

# Run Chromium as non-privileged
USER chromium
WORKDIR /usr/src/app

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

EXPOSE 9515

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
