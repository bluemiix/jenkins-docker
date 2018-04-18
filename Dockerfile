FROM jenkins/jenkins:lts-alpine

USER root

# RUN rm -rf /var/cache/apk/* \
#     &&
RUN apk update \
    &&
    apk add --no-cache libstdc++ \
    &&
    apk add --no-cache --virtual .build-deps \
            g++ gcc libgcc gnupg libgc++ \
    &&
    apk add nodejs
    &&
    apk del .build-deps

USER jenkins