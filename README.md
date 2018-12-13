# OSGi enroute quickstart example

This is the [enroute quickstart tutorial](https://github.com/osgi/osgi.enroute) ...

* Developed with bndtools in Eclipse,
* Build with maven on TravisCI
* Containerized to DockerHub

[![Build Master](https://img.shields.io/badge/branch-master-brightgreen.svg)](): [![Build Status Master](https://api.travis-ci.org/klibio/io.klib.docker.osgi.tut.svg?branch=master)](https://travis-ci.org/klibio/io.klib.docker.osgi.tut)

[![Build develop](https://img.shields.io/badge/branch-develop-yellow.svg)](): [![Build Status Master](https://api.travis-ci.org/klibio/io.klib.docker.osgi.tut.svg?branch=develop)](https://travis-ci.org/klibio/io.klib.docker.osgi.tut)

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-io.klib.docker.osgi.tutorial-blue.svg)](https://hub.docker.com/r/klibio/io.klib.docker.osgi.tutorial/)

# Pre-requisites

* Docker installed on your local machine

# How to consume

````
docker pull klibio/io.klib.docker.osgi.tutorial
docker container run -p 8888:8080 klibio/io.klib.docker.osgi.tutorial
````
Now you can open a webbrowser on 
http://localhost:8888/quickstart/index.html

# Digital Ocean Hosting

## Step-by-Step:
1. Create One-Click Droplet with Docker (preferred with SSH already deposited)
2. Login either via root + password or via ssh key
3. docker pull klibio/io.klib.docker.osgi.tutorial:master-latest
4. sudo ufw allow 8888/tcp Stackoverflow
5. docker container run -d -p 8888:8080 klibio/io.klib.docker.osgi.tutorial:master-latest

## To add a SSH key to an existing droplet follow these steps:

1. Change directory to where your public ssh key file is located
2. cat <public_key_file> | ssh root@<droplet_ip> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
3. To change this file, login via root and password
4. cat sshrsa_id_pub | ssh root@<droplet_ip> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

## How to connect

[Hosted Container](http://68.183.72.62:8888/quickstart/index.html)
