module "create_s3_backend_bucket" {
	source = "./modules/aws/create_s3"
	module_bucket_name = var.bucket_name
}

module "create_dynamodb_lock_table" {
	source = "./modules/aws/create_dynamodb"
	module_dynamodb_table_name = var.dynamodb_table_name
	module_dynamodb_hash_key = var.dynamodb_hash_key
}
