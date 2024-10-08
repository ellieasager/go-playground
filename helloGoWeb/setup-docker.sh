#!/bin/bash

# build the flask container
docker build -t elliecat/hello-go-web .

# create the network
docker network create hello-go-web

# start the go app container
docker run -d --net hello-go-web -p 9000:9000 --name hello-go-web elliecat/hello-go-web