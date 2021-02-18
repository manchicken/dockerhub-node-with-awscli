FROM node:12.20.2

LABEL version="0.1.1"
RUN apt-get update \
  && apt-get install -y awscli git \
  && apt-get -y autoremove \
  && apt-get clean

ONBUILD RUN mkdir /work
ONBUILD WORKDIR /work
ONBUILD ENV PATH="./node_modules/.bin:$PATH"
