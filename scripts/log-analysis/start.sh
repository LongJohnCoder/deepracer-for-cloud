#!/usr/bin/env bash

docker run --rm -it -p "8888:8888" \
-v `pwd`/../../logs:/workspace/logs \
-v `pwd`/../../docker/volumes/.aws:/root/.aws \
-v `pwd`/../../analysis:/workspace/analysis \
-e HOST_PERMS="$(id -u):$(id -g)" \
--name loganalysis \
 larsll/deepracer-loganalysis:v2-cpu
