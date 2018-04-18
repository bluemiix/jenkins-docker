FROM jenkins/jenkins:lts-alpine

USER root

RUN apk add nodejs

USER jenkins