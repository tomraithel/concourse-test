#!/bin/bash

# Copy files into current work dir
# TODO - find a way how "webrew-app" can be omitted
cp webrew-app/package.json package.json
cp webrew-app/package-lock.json package-lock.json
cp webrew-app/Dockerfile Dockerfile
cp -r webrew-app/src src

# install deps
npm ci

# execute build
npm run build

# copy docker file
cp Dockerfile dist