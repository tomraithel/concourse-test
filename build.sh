#!/bin/bash

# Copy files into current work dir
cp concourse-test/package.json package.json
cp concourse-test/package-lock.json package-lock.json
cp -r concourse-test/src src

# install deps
npm ci

# execute build
npm run build