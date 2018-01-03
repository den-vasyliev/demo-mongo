FROM node:alpine

MAINTAINER Adrián García Espinosa "age.apps.dev@gmail.com"

# Create app directory
RUN mkdir /server

# VOLUME ./app:/server
WORKDIR /server

# Bundle app source
COPY app/package.json /server/package.json

#version update
RUN npm version patch

# Install npm and bower dependencies
RUN npm install

COPY app /server

CMD npm start
