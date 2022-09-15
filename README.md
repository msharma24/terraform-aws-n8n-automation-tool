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

[n8n env variables](https://docs.n8n.io/hosting/environment-variables/#queues) 

# Architecutre Diagram

