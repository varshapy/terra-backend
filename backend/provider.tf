provider "aws" {
	region = var.aws_region_default
}

provider "aws" {
	alias = "ap_south"
	region = var.aws_region_ap_south
}