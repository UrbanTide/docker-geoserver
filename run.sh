#!/bin/bash
docker kill geoserver
docker rm geoserver

DATA_DIR=~/geoserver_data
if [ ! -d $DATA_DIR ]
then
    mkdir -p $DATA_DIR
fi

docker run \
	--name=geoserver \
    -v $DATA_DIR:/opt/geoserver/data_dir \
	-p 8999:8080 \
	-d \
	-t urbantide/geoserver
