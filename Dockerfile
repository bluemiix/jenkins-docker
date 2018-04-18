FROM jenkins/jenkins:lts-alpine

USER root

RUN rm -rf /var/cache/apk/* \
    &&
    apk update \
    &&
    apk add --no-cache libstdc++ \
    &&
    apk add --no-cache --virtual g++ gcc libgcc gnupg libgc++ \
    &&
    apk add nodejs

USER jenkins