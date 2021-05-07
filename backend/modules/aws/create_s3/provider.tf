provider "aws" {
	region = var.aws_region_default
	alias = "main"
}

provider "aws" {
	alias = "ap_south"
	region = var.aws_region_ap_south
}