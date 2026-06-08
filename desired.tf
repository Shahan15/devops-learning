terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.62.0"
        }
    }

    backend "s3" {
      bucket = "terraform-s3bucket-shahan"
      key = "terraform.tfstate"
      region = "eu-west-1"
    }
}

provider "aws" {
    region = "eu-west-1" 
}

