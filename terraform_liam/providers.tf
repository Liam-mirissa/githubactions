provider "aws" {
  region                   = "us-east-2"
  shared_credentials_files = ["~/.aws/credentials"]
}               

terraform {
  backend "s3" {
    bucket = "backendtfliam"
    key = "statefile/terraform.tfstate"
    region = "us-east-2"
    
  }
}