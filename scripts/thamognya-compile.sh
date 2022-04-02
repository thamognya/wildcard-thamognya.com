#!/bin/sh

cd ./src/thamognya-src/ && git add . && git commit -m 'www.thamognya.com : auto-update' && git remote | xargs -L1 git push --all #npm run build && cp -r ./build/* ../thamognya/

sleep 2s
