#!/bin/bash

# cd into docker repository.
sudo apt-get install openjdk-8-jre maven default-jre

cd docker

echo "cd into docker"
echo "The working directory is:"
pwd

# Remove our previous images.
sudo docker-compose down --rmi all

# Removing previous git repos.

sudo rm -rf spring-petclinic-angular
sudo rm -rf spring-petclinic-rest

# Clone Angular Repository.
git clone https://github.com/spring-petclinic/spring-petclinic-angular.git
# Clone REST Repository.

git clone https://github.com/spring-petclinic/spring-petclinic-rest.git
# Copy Dockerfile from Dockerfiles/PetClinicREST to REST cloned folder.

sudo cp Dockerfiles/PetClinicREST/Dockerfile spring-petclinic-rest
# Copy Dockerfile from Dockerfiles/PetClinicAngular to Angular cloned folder.

sudo cp Dockerfiles/PetClinicAngular/Dockerfile spring-petclinic-angular
sudo cp Dockerfiles/PetClinicAngular/.dockerignore spring-petclinic-angular

# Run docker-compose.
sudo docker-compose build
# Login with our docker credentials.

sudo docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
# Push our built images to docker

sudo docker-compose push
# Remove our cloned git repos to save space.

sudo rm -rf spring-petclinic-angular
sudo rm -rf spring-petclinic-rest
