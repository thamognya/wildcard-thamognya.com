#!/bin/sh

cd ./src/blog-src/ && zola build && cp -r public/ ../blog/

sleep 2s
