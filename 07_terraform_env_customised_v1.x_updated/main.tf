provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "dev_cluster" {
  source        = "./cluster"
  cluster_name  = "dev"
  instance_type = "t2.micro"
}

module "staging_cluster" {
  source        = "./cluster"
  cluster_name  = "staging"
  instance_type = "t2.micro"
}

module "production_cluster" {
  source = "./cluster"
  #region        = "eu-central-1"
  cluster_name  = "production"
  instance_type = "m5.large"
}

output "self" {
  description = "Runtime environment"
  value = {
    workspace   = terraform.workspace
    last_update = timestamp()
    account_id  = data.aws_caller_identity.current.account_id
    region      = data.aws_region.current.name
    user_id     = substr(data.aws_caller_identity.current.user_id, 0, 21)
    web_console = format("https://%s.signin.aws.amazon.com/console", data.aws_caller_identity.current.account_id)
  }
}
