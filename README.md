# SIT323 - Cloud Native Application Development - 5.2D: Dockerization

## Overview
In this task, I worked on Dockerizing my microservice and publishing it to a container registry. I followed the steps to create, tag, push, and test the Docker image using DockerHub. This allows me to deploy and manage my microservice in the cloud.

## Steps to Build and Run the Microservice

### 1. Build the Docker Image
To build the Docker image, use the following command:

```bash
docker build -t microservice .
This command will build the Docker image using the Dockerfile in the current directory.

2. Tag the Image for DockerHub
Once the image is built, tag it for uploading to DockerHub:

bash
docker tag microservice baani/microservice:latest


3. Push the Image to DockerHub
To upload the image to DockerHub, run:
bash
docker push baani/microservice:latest
This will push the image to my DockerHub account under the specified repository.

4. Pull and Run the Image from DockerHub
To test the image, first, remove the local image and pull it from DockerHub:

bash
docker rmi baani/microservice:latest
docker pull baani/microservice:latest
Then, run the image locally on a different port (in case port 3000 is occupied):

bash
docker run -p 3001:3000 baani/microservice:latest
Your microservice will now be running on localhost:3001.
