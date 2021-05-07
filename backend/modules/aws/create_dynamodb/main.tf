resource "aws_dynamodb_table" "backend_dynamodb_lock_table" {
	name = var.module_dynamodb_table_name
	hash_key = var.module_dynamodb_hash_key
	billing_mode = "PROVISIONED"
	read_capacity  = 5
	write_capacity = 5
	attribute {
		name = var.module_dynamodb_hash_key
		type = "S"
	}
}