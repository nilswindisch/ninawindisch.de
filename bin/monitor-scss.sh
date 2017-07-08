#!/bin/bash

node-sass \
    --output-style expanded \
    --source-map-embed \
    "$(PWD)"/scss/style.scss | \
postcss \
    --use autoprefixer \
    -b 'last 2 versions' \
    > "$(PWD)"/css/style.css
