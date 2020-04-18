#!/bin/bash
set -e

mkdir -p ./outputs/pdf
mkdir -p ./outputs/html
mkdir -p ./outputs/ebub


CURRENT_PATH=`pwd`


# asciidoctor command arguments
# -a, --attribute = ATTRIBUTE
# -B, --base-dir = DIR
# -D, --destination-dir = DIR
# -o, --out-file = OUT_FILE
# -R, --source-dir = DIR
# -b, --backend = BACKEND
# -d, --doctype = DOCTYPE
# -r, --require = LIBRARY

asciidoctor -r asciidoctor-mathematical -a mathematical-format=svg -a mathematical-inline=true -B ${CURRENT_PATH}/ -D ${CURRENT_PATH}/outputs/html/ -o index.html  -a imagesdir=${CURRENT_PATH}/images  -r asciidoctor-diagram   index.adoc
