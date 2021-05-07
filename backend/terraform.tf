terraform {
		required_version = "=0.15.1"	
		
		backend "s3" {
			# Name of s3 bucket for backed
				bucket = "my-backed-bucket-s3-111111"
			
			# State file path to be saved in bucket 
				key = "terraform.tfstate"
			
			# DynamoDb locking table name
				dynamodb_table = "my-dynamo-lock-tabel"
			region = "ap-south-1"
			profile        = ""
			role_arn       = ""
			encrypt = true	
		}	
		
		required_providers {
				aws = {
					version = "=3.38.0"
					source = "hashicorp/aws"
				}
			}
		
	}