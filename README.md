# Terraform AWS Infrastructure Automation Project

## Project Overview

This project focuses on automating AWS infrastructure creation using Terraform and building a more practical DevOps-style setup on AWS.

The project started with basic EC2 provisioning and later expanded into reusable Terraform modules, remote backend configuration, CI/CD automation, and Amazon EKS provisioning.

The goal of this project was to gain hands-on experience with:
- Infrastructure as Code (IaC)
- Terraform modules
- Remote state management
- GitHub Actions CI/CD
- AWS networking
- Kubernetes (EKS)
- Real-world troubleshooting scenarios

---

# Architecture

Terraform → AWS Infrastructure → VPC → Subnets → Security Groups → EC2 / EKS → Worker Nodes → GitHub Actions CI/CD → Kubernetes Access & Troubleshooting

---

# Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Amazon EKS
- Docker
- Kubernetes
- GitHub Actions
- Linux
- Git & GitHub
- GitHub Codespaces

---

# Features

## Terraform Infrastructure
- Automated EC2 provisioning
- Custom VPC creation
- Public and private subnet configuration
- Security Group automation
- Reusable Terraform modules
- Terraform workspaces for environment separation

## Remote Backend
- S3 backend configuration
- DynamoDB state locking
- Shared remote Terraform state management

## CI/CD
- GitHub Actions pipeline
- terraform fmt
- terraform validate
- terraform init
- terraform plan

## EKS
- Amazon EKS provisioning using Terraform modules
- Managed node groups
- IAM authentication setup
- kubeconfig configuration
- EKS networking configuration

## Docker & User Data
- Docker auto-installation using user_data
- Nginx container deployment
- Public website hosting

---

# Folder Structure

```bash
terraform-aws-beginner/
│
├── modules/
│   ├── ec2/
│   ├── vpc/
│   └── security-group/
│
├── eks-terraform/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── backend.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── data.tf
├── import.tf
├── main.tf
└── README.md