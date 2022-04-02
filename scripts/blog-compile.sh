#!/bin/sh

cd ./src/blog-src/ && git add . && git commit -m 'blog.thamognya.com: auto-update' && git remote | xargs -L1 git push --all 

sleep 2s

