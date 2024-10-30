remote_state {
  backend = "s3"
  config = {
    bucket         = "prod-tfstate"
    key            = "prod/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "lock"
  }
}
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "eu-west-1"  # Region for dev environment
}
EOF
}

inputs = {
  environment = "prod"
}
