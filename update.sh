#!/bin/bash
containerids=$(docker ps -a -q)
dockerrepo=klibio/io.klib.docker.osgi.tutorial
TRAVIS_BRANCH=develop
docker rm -f ${containerids}
docker pull $dockerrepo:${TRAVIS_BRANCH}-latest
docker container run -d -p 8888:8080 $dockerrepo:${TRAVIS_BRANCH}-latest