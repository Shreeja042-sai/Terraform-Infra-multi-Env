# Terraform Multi-Environment Infrastructure

This repository demonstrates how to manage and deploy **multiple environments (Dev, QA, Prod)** using **Terraform** on **AWS Cloud**.  
It follows best practices for modular Terraform configuration, remote state management, and environment isolation — making it suitable for production-grade setups.

## 🏗️ Architecture

The following diagram illustrates the multi-environment setup:

![Terraform Multi-Environment Architecture](Terraform-Infr-Design.jpg)

### Architecture Overview
- **Terraform Workspaces** are used to isolate environments (`dev`, `qa`, `prod`) while reusing the same infrastructure code.
- **Terraform Modules** define reusable AWS infrastructure components.
- **AWS Services Used:** VPC, EC2, S3, DynamoDB and Security Groups.
- **Remote Backend (Optional):** S3 + DynamoDB for state storage and locking.
- **Outputs** are configured to share resource information between modules and environments.

**Flow Summary:**
Terraform → AWS Provider → Modules → Environment-Specific Infrastructure

## Project Structure

```plaintext
├── aws_infra/
│   ├── main.tf
│   ├── outputs.tf
│   ├── security.tf
│   └── variables.tf
│
├── terra-multi-env/
│   ├── main.tf
│   ├── terraform.tf
│   ├── terraform.tfvars
│   └── terra-multi-env.pub
│
├── docs/
│   └── architecture.png
│
├── .gitignore
└── .terraform.lock.hcl
Explanation:

aws_infra/: Module defining AWS infrastructure (VPC, EC2, Security Groups, etc.)

terra-multi-env/: Root module calling aws_infra with different variables per environment.

docs/: Contains project documentation such as architecture diagrams.

.terraform.lock.hcl: Provider version locking for consistency.

.gitignore: Prevents committing state files or credentials.
