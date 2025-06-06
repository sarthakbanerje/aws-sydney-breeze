terraform {
  
  backend "s3" {
	bucket = "terraform-state-sydney33"
	dynamodb_table = "terraform-state-sydney33"
	key = "terraform/statefile/terraform.tfstate"
	region = "us-east-1"
	encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
	region = "us-east-1"
	//Using Jenkins credential while running from pipeline, hence commenting out profile
  //if need to run directly from terminal need to use applicable profile
  //profile = "personal-admin"  
}
