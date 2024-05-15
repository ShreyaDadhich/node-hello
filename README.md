# Node.js "Hello World" Dockerization and Deployment
This repository contains instructions and configuration files for Dockerizing the Node.js "Hello World" application and deploying it to DockerHub using GitHub Actions.

## Prerequisites
Before getting started, ensure you have the following installed:

- Windows 11
- Git version 2.45.0.windows.1
- Docker Desktop version 26.0.0
- Kubernetes v1.29.2

Before proceeding, follow these steps:
1. Fork the repository.
2. Clone repository to the local machine
    ```
    git clone https://github.com/ShreyaDadhich/node-hello.git
    ```

### Step 1: Dockerization
Dockerfile: Created a Dockerfile to build the Docker image in multiple stages. It utilizes multi-stage builds for efficient image creation.

### Step 2: Set up DockerHub Credentials
Setting up DockerHub credentials allows GitHub Actions to authenticate and push Docker images to your DockerHub repository. 
1. Go to repository on GitHub.
2. Navigate to **Settings** > **Secrets and Variables** > **Actions** > **New repository secret**.
    - DOCKER_USERNAME
    - DOCKER_PASSWORD  
4. Add DockerHub username and password as secrets. Pass the variable in main.yml file in GitHub actions
    ```
    secrets.DOCKER_USERNAME 
    secrets.DOCKER_PASSWORD
    ```

### Step 3: GitHub Actions Configuration
Create a GitHub Actions workflow file 
```
.github/workflows/main.yml
```
This workflow will trigger on pushes to the master branch, build the Docker image, and push it to DockerHub.

*(Note:  Workflow file needs to be placed in the .github/workflows/ directory in  repository. This ensures that GitHub Actions can discover and execute the workflow.)*
