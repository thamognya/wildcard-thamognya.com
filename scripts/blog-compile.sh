#!/bin/sh

cd ./src/blog-src/ && $HOME/.local/bin/zola build && cp -r public/* ../blog/

sleep 2s
