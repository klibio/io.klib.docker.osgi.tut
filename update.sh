#!/bin/bash
curl /var/run/docker.sock -X POST http:/v1.24/containers/*/stop
curl /var/run/docker.sock -X POST http:/v1.24/containers/prune
curl /var/run/docker.sock -X POST "http://68.183.72.62:5555/images/create?fromImage=klibio/io.klib.docker.osgi.tutorial:master-latest"
curl /var/run/docker.sock -H "Content-Type: application/json" -d '{"Image": "klibio/io.klib.docker.osgi.tutorial:master-latest",}' -X POST http:/v1.24/containers/create