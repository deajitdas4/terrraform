terraform {
     required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "4.33.0"
      }
    }
    backend "s3" {
        bucket = "webapp-bucket-project"
        key = "state/terraform.tf"
        region = "ap-south-1"
      
    }
}