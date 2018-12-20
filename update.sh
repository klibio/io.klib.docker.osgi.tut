#!/bin/bash
curl /var/run/docker.sock \
 -X POST "http://68.183.72.62:5555/containers/test/stop" \
 -X POST "http://68.183.72.62:5555/containers/prune" \
 -X POST "http://68.183.72.62:5555/images/create?fromImage=klibio/io.klib.docker.osgi.tutorial:master-latest" \
 -H "Content-Type: application/json" \
 --data @- <<END;
 {
     "Image": "klibio/io.klib.docker.osgi.tutorial:master-latest"
     } END \
 -X POST "http://68.183.72.62:5555/containers/create"