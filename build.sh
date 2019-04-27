#!/bin/bash

# Change to current dir
cd "$(dirname "$0")"

# install deps
npm install

# execute build
npm run build