# Version 1.0.0

FROM node:10-slim
LABEL Maintainer="Philip Masek <philip@melkercompany.se>" \
      Description="Selenium Cl test image." \
      Version="1.0.0"

RUN npm install -g selenium-side-runner


RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update 
RUN apt-get install -y chromedriver google-chrome-stable

WORKDIR /tmp/

ENTRYPOINT ["selenium-side-runner", "test.side"]