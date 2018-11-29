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
