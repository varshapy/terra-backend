variable "aws_region_default" {
	description = "Provider default aws region"
	default = "ap-south-1"
}

variable "aws_region_ap_south" {
	description = "Provider default aws region"
	default = "ap-south-1"
}

variable "bucket_name" {
	description = "The name of the Backend S3 Bucket"
	default = "my-backed-bucket-s3-111111"
}

variable "dynamodb_table_name" {
	description = "The name of the DynamoDB lock tabel"
	default = "my-dynamo-lock-tabel"
}

variable "dynamodb_hash_key" {
	description = "Hash key can be any random string for hashing"
	default = "LockID"
}