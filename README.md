# terraform-aws-n8n-automation-tool

## Introduction
Terraform configuration for self-hosting [n8n-io](https://github.com/n8n-io/n8n)- on AWS using ECS Fargate.
n8n is an extendable open-source workflow automation tool.

## Resources
* VPC
* AWS ALB
* AWS Aurora MySQL
* AWS Elastic Cache -Redis cluster 
* AWS CodePipeline, triggered from a github repo.
* AWS CodeBuild outputting to ECR container registry
* AWS ECS - Fargate

[n8n env variables](https://docs.n8n.io/hosting/environment-variables/#queues)  for ECS Service.

# Architecture Diagram


![n8n-io](https://raw.githubusercontent.com/msharma24/terraform-aws-n8n-automation-tool/main/img/n8n.png)


# Usage

#### Deployment Guide

- Git clone this project.

- create a `terraform.tfvars` file locally 
- `$touch terraform.tfvars` and enter the following values

```
region                = "<AWS_REGION_ID>"
db_name               = "n8n"
aurora_instance_class = "db.t3.small"
aurora_engine         = "aurora-mysql"
aurora_engine_version = "5.7.mysql_aurora.2.10.1"

```

Configure your [AWS access
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as
environment variables:

```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

Deploy the code:

```
terraform init
terraform apply
```

