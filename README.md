# End-to-End CI/CD Pipeline with GitHub, AWS CodeBuild, CodePipeline, and CodeDeploy

## Project Description

This project demonstrates the creation of an end-to-end Continuous Integration and Continuous Deployment (CI/CD) pipeline using various AWS services and GitHub. The pipeline automates the process of building, testing, and deploying a simple Python Flask application containerized with Docker.

### Key Components:

1. **GitHub**: Serves as the source code repository.
2. **AWS CodePipeline**: Manages the entire CI/CD workflow.
3. **AWS CodeBuild**: Builds the application from the source code and creates a Docker image.
4. **AWS CodeDeploy**: Deploys the Docker container to Amazon EC2 instances.

### Workflow:

1. **Source Stage**:
   - The pipeline is triggered by changes pushed to the specified GitHub repository and branch.
   - AWS CodePipeline pulls the latest code from GitHub.

2. **Build Stage**:
   - AWS CodeBuild uses a build specification file (`buildspec.yml`) to install dependencies, build the Docker image, and push it to Docker Hub.
   - The build artifacts, including the Docker image, are stored and passed to the next stage.

3. **Deploy Stage**:
   - AWS CodeDeploy retrieves the build artifacts and deploys the Docker container to the specified Amazon EC2 instances.
   - Deployment scripts (`stop_container.sh` and `start_container.sh`) are executed to manage the Docker container lifecycle.

### Files and Directories:

- `app.py`: A simple Flask application.
- `Dockerfile`: Instructions to build the Docker image for the Flask app.
- `requirements.txt`: List of Python dependencies.
- `buildspec.yml`: Build specification file for AWS CodeBuild.
- `appspec.yml`: Application specification file for AWS CodeDeploy.
- `stop_container.sh`: Script to stop any running Docker containers.
- `start_container.sh`: Script to start a new Docker container with the latest image.

### Prerequisites:

- An AWS account with the necessary permissions for CodePipeline, CodeBuild, and CodeDeploy.
- A GitHub account to host the source code repository.
- Docker installed locally for testing and development.
- AWS CLI installed and configured.

This project serves as a comprehensive guide to setting up a CI/CD pipeline using AWS services, providing a scalable and reliable solution for automated application deployment.
