#!/bin/bash
# This will delete the runnig containers+vloumes+image and then rebuild the image  
#
docker-compose -f docker-compose.yml -f docker-compose.prod.yml down -v
docker rmi docker-boilerplate_express-app 
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build
docker ps