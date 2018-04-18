FROM jenkins/jenkins:lts-alpine

USER root

RUN rm -rf /var/cache/apk/* \
#
    && apk --update add nodejs \
#
    && apk del .build-deps \
# test
    && node -v \
    && npm -v

USER jenkins