FROM node:8-alpine

# Configure PHP
RUN npm install -g gulp
RUN npm install --save-dev gulp
RUN npm install jshint gulp-jshint gulp-sass gulp-concat gulp-uglify gulp-rename --save-dev
RUN npm i -S babel-register

RUN mkdir -p /app
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/gulp"]
