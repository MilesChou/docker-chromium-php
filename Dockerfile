FROM php:7.1-alpine

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
    && adduser -D chromium \
    && chown -R chromium:chromium /usr/src/app

# Run Chromium as non-privileged
USER chromium
WORKDIR /usr/src/app
