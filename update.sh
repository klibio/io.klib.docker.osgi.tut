#!/bin/bash
curl /var/run/docker.sock -X POST "http://68.183.72.62:5555/containers/*/stop"
curl /var/run/docker.sock -X POST "http://68.183.72.62:5555/containers/prune"
curl /var/run/docker.sock -X POST "http://68.183.72.62:5555/images/create?fromImage=klibio/io.klib.docker.osgi.tutorial:master-latest"
curl /var/run/docker.sock -H "Content-Type: application/json" -d '{"Image": "klibio/io.klib.docker.osgi.tutorial:master-latest",}' -X POST "http://68.183.72.62:5555/containers/create"