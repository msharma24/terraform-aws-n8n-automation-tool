# Terraform for n8n Automations

* Terraform set up that uses proper module-style code, and variables for all dynamic or configurable data, to build the following:
* ALB
* Aurora MySQL
* Redis cluster mode
* CodePipeline, triggered from a github repo.
* CodeBuild outputting to ECR.
* ECS + Fargate

[n8n env variables](https://docs.n8n.io/hosting/environment-variables/#queues) 
