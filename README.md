# Node.js "Hello World" Dockerization and Deployment
This repository contains instructions and configuration files for Dockerizing the Node.js "Hello World" application and deploying it to DockerHub using GitHub Actions.

## Prerequisites
Before getting started, ensure you have the following installed:

- Git 2.45.0.windows.1
- Docker Desktop 26.0.0 or any other similar application
- Kubernetes v1.29.2

Before proceeding, follow these steps:
1. Fork the repository.
2. Clone repository to the local machine
    ```bash
    $ git clone https://github.com/ShreyaDadhich/node-hello.git
    ```

### Step 1: Dockerization
Dockerfile: Create a Dockerfile to build the Docker image in multiple stages. It utilizes multi-stage builds for efficient image creation.

### Step 2: Set up DockerHub Credentials
Setting up DockerHub credentials allows GitHub Actions to authenticate and push Docker images to your DockerHub repository. 
1. Go to repository on GitHub.
2. Navigate to **Settings** > **Secrets and Variables** > **Actions** > **New repository secret** and add DockerHub username and password.
    - DOCKER_USERNAME
    - DOCKER_PASSWORD  

### Step 3: GitHub Actions Configuration
1. Create a GitHub Actions workflow file to automatically create a new docker image and publish it on DockerHub
    ```
    .github/workflows/main.yml
    ```
2. Pass the above created secrets to main.yml file in GitHub actions
    ```
    secrets.DOCKER_USERNAME 
    secrets.DOCKER_PASSWORD
    ```
