#!/bin/sh

image_name=creativeprojects/php-git-ci

current_version=5.6

docker pull php:${current_version}
docker rmi ${image_name}:${current_version}
docker rmi ${image_name}:latest
docker build -t ${image_name}:${current_version} -t ${image_name}:latest -f Dockerfile-php${current_version} ./
docker push ${image_name}:${current_version}
docker push ${image_name}:latest
