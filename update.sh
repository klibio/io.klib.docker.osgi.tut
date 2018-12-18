#!/bin/bash
curl /var/run/docker.sock -X POST "http://68.183.72.62:5555/images/create?fromImage=openjdk:8-alpine"