locals {
  region     = data.aws_region.current.id
  account_id = data.aws_caller_identity.current.account_id

  github_token          = ""
  github_owner          = "msharma24"
  github_repo           = "terraform-aws-n8n-automation-tool"
  github_branch         = "main"
  github_connection_arn = var.github_connection_arn
  #"arn:aws:codestar-connections:${data.aws_region.current.id}:${data.aws_caller_identity.current.account_id}:connection/70bdea3c-168b-433c-84d4-969b6a47a21c"

  common_tags = {
    "CreatedBy"   = var.source_repository
    "Environment" = var.environment

  }
}
