#!/bin/bash -e

source config.sh

docker run -it --rm \
    spaceranger:${version} --help
