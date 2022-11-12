#!/bin/bash

container=ronnyrotze82/node-container:latest
command=""

for arg in "$@"
do 
command="$command $arg"
done

docker run -it --rm --name node -v `pwd`:/home/app -w /home/app $container $command

exit 0
