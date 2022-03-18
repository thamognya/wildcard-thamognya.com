#!/bin/sh

cd ./src/thamognya-src/ && npm run build && cp -r ./build/* ../thamognya/

sleep 2s
