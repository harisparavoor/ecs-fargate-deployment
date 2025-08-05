# ECS Fargate Deployment Infrastructure

This repository contains the infrastructure as code for deploying a frontend (Node.js) and backend (Java/Spring) application on AWS ECS Fargate.

## Architecture Overview

The architecture consists of:
- Frontend: Node.js application running in ECS Fargate
- Backend: Java/Spring application running in ECS Fargate
- PostgreSQL database in RDS
- ALB for routing traffic
- Separate CodePipelines for frontend and backend with GitHub webhook integration
- Infrastructure as Code using Terraform
- Environment separation (dev, staging, prod)
- Monitoring with CloudWatch
- Secrets management with AWS Secrets Manager
- Centralized S3 bucket for artifacts/logs/backups

## Prerequisites

1. AWS account with appropriate permissions
2. Terraform installed
3. AWS CLI configured
4. GitHub repositories for frontend and backend code
5. Domain name for Route 53 configuration

## Deployment Instructions

1. Clone this repository
2. Configure the environment variables in the respective .tfvars files
3. Initialize Terraform: `terraform init`
4. Plan the deployment: `terraform plan`
5. Apply the changes: `terraform apply`

## Folder Structure

- `infrastructure/`: Contains all Terraform modules and configurations
  - `modules/`: Reusable Terraform modules
  - `environments/`: Environment-specific configurations
  - `pipeline/`: CI/CD pipeline configurations

## Variables Configuration

Copy the example tfvars files and update with your values:

```bash
cp environments/dev/terraform.tfvars.example environments/dev/terraform.tfvars
cp environments/staging/terraform.tfvars.example environments/staging/terraform.tfvars
cp environments/prod/terraform.tfvars.example environments/prod/terraform.tfvars
