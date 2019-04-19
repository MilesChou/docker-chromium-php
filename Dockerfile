FROM php:7.1-alpine

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
