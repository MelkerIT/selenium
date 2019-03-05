# Version 1.0.0

FROM node:10-alpine
LABEL Maintainer="Philip Masek <philip@melkercompany.se>" \
      Description="Selenium Cl test image." \
      Version="1.0.0"

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.4/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.4/community" >> /etc/apk/repositories

RUN apk update && \
	apk add \
		chromium \
		chromium-chromedriver

RUN npm install -g selenium-side-runner

WORKDIR /tmp/

ENTRYPOINT ["selenium-side-runner", "/tmp/data/*.side"]