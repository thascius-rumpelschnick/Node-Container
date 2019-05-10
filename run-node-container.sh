#! /bin/bash

container=ronnyrotze82/node-container:1.0.0
command=""

for arg in "$@"
do 
command="$command $arg"
done

docker run -it --rm --name node -v `pwd`:/app -w /app $container $command
