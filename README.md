# 🚀 Ephemera-PreviewPilot

Ephemera-PreviewPilot is an automated CI/CD pipeline designed to streamline the deployment of preview environments for pull requests. Leveraging **GitHub Actions**, **Terraform**, **AWS ECS**, and **Docker**, this project ensures that every code change is tested in an isolated environment—enhancing development workflows and collaboration.

---

## ✨ Features

- **Automated Preview Environments**  
  Deploys a unique environment for each pull request, facilitating seamless testing and feedback.

- **Infrastructure as Code**  
  Utilizes Terraform for consistent and reproducible infrastructure deployments.

- **Containerized Deployments**  
  Employs Docker for building and managing application containers.

- **AWS Integration**  
  Integrates with AWS ECS for scalable and reliable container orchestration.

- **GitHub Actions Workflow**  
  Automates the entire deployment process, from code commit to environment teardown.

---

## 📁 Project Structure
``` bash

Ephemera-PreviewPilot/
├── .github/
│ └── workflows/
│ └── preview.yml # GitHub Actions workflow for CI/CD
├── .vscode/ # VSCode configurations
├── docker/
│ └── Dockerfile # Dockerfile for building the application image
├── terraform/
│ ├── main.tf # Main Terraform configuration
│ ├── variables.tf # Input variables for Terraform
│ └── outputs.tf # Output values from Terraform
├── S3_bucket.sh # Script for managing S3 buckets
├── create.sh # Script for initializing resources
├── .gitignore # Specifies files to ignore in Git
└── README.md # Project documentation
```


---

## 🔧 Component Breakdown

### 📁 `.github/workflows/preview.yml`
Defines the **GitHub Actions** workflow that automates the deployment of preview environments upon pull request events.  
It handles:
- Terraform initialization
- Application build
- Docker image push to ECR
- ECS service update
- Environment teardown upon PR close/merge

### 📁 `docker/`
Contains the `Dockerfile` used to build the application's Docker image.  
Ensures a consistent runtime environment across all deployments.

### 📁 `terraform/`
Terraform configurations that provision AWS resources such as:
- ECS clusters and services
- Networking components (VPC, subnets)
- S3 for Terraform state storage
- DynamoDB for state locking

### 📝 `S3_bucket.sh` & `create.sh`
Shell scripts that:
- Assist with AWS S3 bucket creation and management
- Automate resource initialization

---

## 🛠️ Prerequisites

Before setting up the project, ensure you have the following installed:

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Terraform](https://www.terraform.io/)
- [AWS CLI](https://aws.amazon.com/cli/)
- An **AWS account** with appropriate permissions
- AWS credentials configured locally or as environment variables

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/GfavourBraimah/Ephemera-PreviewPilot.git
```

2. Configure AWS Credentials
Option 1: AWS CLI Configuration

```bash
aws configure
```

Option 2: Environment Variables

```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_DEFAULT_REGION=us-east-1
```

## 📸 Architecture Diagram
![AWS Deployment Flow](Preview%20env.png)

## 🧪 Usage
1. **Open a Pull Request.**

2. **GitHub Actions will automatically trigger:**  

    -  Terraform apply

    - Docker image build and push

     - ECS deployment

3. **TNow go into the ECS and copy the ip address and paste it on your broswer then you will see your application**

4. **On PR merge or close, the environment is automatically destroyed.**

