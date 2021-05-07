resource "aws_s3_bucket" "backend_s3_bucket" {
	
	bucket = var.module_bucket_name
	
	# Enable versioning on state files
			versioning {
				enabled = true
			}

	# Enable server side encription (SSE)
		server_side_encryption_configuration {
			rule {
				apply_server_side_encryption_by_default {
					sse_algorithm = "AES256"
				}
			}
		}	
	
	# Prevent from acidental deletion 	
		#lifecycle {
		#	prevent_destroy = true
		#}	
}