resource "aws_dynamodb_table" "backend_dynamodb_lock_table" {
	name = var.module_dynamodb_table_name
	hash_key = var.module_dynamodb_hash_key
	billing_mode = "PAY_PER_REQUEST"
	attribute {
		name = var.module_dynamodb_hash_key
		type = "S"
	}
}