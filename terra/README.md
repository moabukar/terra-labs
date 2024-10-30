# Terragrunt Lab

This repository provides a Terragrunt lab for deploying basic AWS infrastructure across `dev` and `prod` environments. You'll use Terragrunt to handle environment-specific configurations, enabling easy, consistent, and scalable infrastructure deployment.

## Prerequisites

- Terraform and Terragrunt installed locally
- AWS credentials configured in your environment

## Repository Structure

- `environments/`: Contains configurations for each environment (`dev` and `prod`)
- `modules/`: Contains reusable Terraform code for the VPC

## Setup Instructions

1. **Clone the Repository**:

```bash
cd terragrunt

terragrunt init
terragrunt plan
terragrunt apply
terragrunt destroy
```

## Notes

- Modify cidr_block and vpc_name in the environment-specific terragrunt.hcl files to change configurations per environment.
- Extend the module to include other resources like subnets, route tables, etc., as practice.


## Terratest

```sh
cd terratest

go mod init github.com/moabukar/terra-labs/terra/test
go get github.com/gruntwork-io/terratest/modules/terraform
go get github.com/stretchr/testify/assert

go test -v
```
