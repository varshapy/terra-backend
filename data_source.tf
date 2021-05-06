data "aws_ami" "k8s_ami" {
	owners = ["self"]
	most_recent = true
	tags = {
		Name = "K8S"
	}	
}

