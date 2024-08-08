#!/bin/bash

# This script will stop all containers, remove all containers, images, volumes, and networks using sudo.

echo "Stopping all Docker containers..."
sudo docker stop $(sudo docker ps -a -q)

echo "Removing all Docker containers..."
sudo docker rm $(sudo docker ps -a -q)

echo "Removing all Docker images..."
sudo docker rmi $(sudo docker images -q)

echo "Removing all Docker networks..."
sudo docker network rm $(sudo docker network ls -q)

echo "Removing all Docker volumes..."
sudo docker volume rm $(sudo docker volume ls -q)

echo "Docker cleanup complete!"
