terraform {
		required_version = "=0.15.1"	
		
		backend "s3" {
			# Name of s3 bucket for backed
				bucket = ""
			# State file path to be saved in bucket 
				key = "statefile/terraform.tfstate"
			region = "ap-south-1"
			encrypt = true	
		}	
		
		required_providers {
				aws = {
					version = "=2.7.0"
					source = "hashicorp/aws"
				}
			}
		
	}