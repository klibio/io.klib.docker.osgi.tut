#!/bin/bash
docker container run \
-it \
-v c:/Git/ENGINE_LIB_DIR:/ENGINE_LIB_DIR:ro \
-v c:/Git/io.klib.docker.osgi.tut/:/io.klib.docker.osgi.tut \
-e "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/ENGINE_LIB_DIR/jdk/bin:/ENGINE_LIB_DIR/Maven/bin" \
-e "JAVA_HOME=/ENGINE_LIB_DIR/jdk/" \
--name ibuntu \
ubuntu \
sh -c "cd io.klib.docker.osgi.tut && mvn verify"
docker rm -f ibuntu
