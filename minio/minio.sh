#!/bin/bash

PREFIX=/srv/docker

docker run --restart always -d -p 9000:9000 --name minio1 \
  -e "MINIO_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE" \
  -e "MINIO_SECRET_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" \
  -v $PREFIX/minio/data:/data \
  -v $PREFIX/minio/config:/root/.minio \
  minio/minio server /data
