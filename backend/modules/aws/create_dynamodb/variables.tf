variable "module_dynamodb_table_name" {
	default = ""
}

variable "module_dynamodb_hash_key" {
	default = ""
}

variable "aws_region_default" {
	description = "Provider default aws region"
	default = "us-east-1"
}

variable "aws_region_ap_south" {
	description = "Provider default aws region"
	default = "ap-south-1"
}