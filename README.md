# OSGi enroute quickstart example

This is the [enroute quickstart tutorial](https://github.com/osgi/osgi.enroute) ...

* Developed with bndtools in Eclipse,
* Build with maven on TravisCI
* Containerized to DockerHub

[![Build Master](https://img.shields.io/badge/branch-master-brightgreen.svg)](https://github.com/klibio/io.klib.docker.osgi.tut/tree/master): 
[![Build Status Master branch](https://api.travis-ci.org/klibio/io.klib.docker.osgi.tut.svg?branch=master)](https://travis-ci.org/klibio/io.klib.docker.osgi.tut)

[![Build develop](https://img.shields.io/badge/branch-develop-yellow.svg)](https://github.com/klibio/io.klib.docker.osgi.tut/tree/develop): 
[![Build Status Develop branch](https://api.travis-ci.org/klibio/io.klib.docker.osgi.tut.svg?branch=develop)](https://travis-ci.org/klibio/io.klib.docker.osgi.tut)

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
=======

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
3. `docker pull klibio/io.klib.docker.osgi.tutorial:master-latest`
4. `sudo ufw allow 8888/tcp Stackoverflow`
5. `docker container run -d -p 8888:8080 klibio/io.klib.docker.osgi.tutorial:master-latest`

## To add a SSH key to an existing droplet follow these steps:

1. Change directory to where your public ssh key file is located
2. `cat <public_key_file> | ssh root@<droplet_ip> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"`
3. To change this file, login via root and password
4. `cat sshrsa_id_pub | ssh root@<droplet_ip> "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"`

## Deployed containers

### Hosted Container on DigitalOcean
[master](http://68.183.72.62:8888/quickstart/index.html)
[develop](http://68.183.72.62:8889/quickstart/index.html)

# Microsoft Azure Hosting

## Step-by-Step:
1. Install Azure CLI [Install_Page](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
2. Command `az login` ; This will open a website, follow the steps
3. Command ````az container create \
--resource-group <resgrp_name> \
--name <container_name> \
--image klibio/io.klib.docker.osgi.tutorial:develop-latest \
--dns-name-label <name_label> \
--ports 8080````
    Be careful, as azure container instances do NOT support port mapping. This feature will be implemented, but has not been yet. If you need this feature, a Ubuntu Server will be more usable. The dns contains the name label you desire as suffix. The prefix is determined by the location where you host the container instance on azure (f.e. <name_labe>.westeurope.azurecontainer.io)
4. Wait for the container instance to be published. It will recieve an automatically associated ip and a dns adress. The DNS adress depends on the region in which the instance has been hosted and is unique.
5. now you can connect to either "<dns_name>:8080/quickstart/index.html" or "<ip_adress>:8080/quickstart/index.html"
