#!/bin/bash

node-sass \
    --output-style compressed \
    "$(PWD)"/scss/style.scss | \
postcss \
    --use autoprefixer \
    --no-map \
    -b 'last 2 versions' \
    > "$(PWD)"/css/style.css
