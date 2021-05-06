
resource "aws_instance" "kube_worker" {
	ami = data.aws_ami.k8s_ami.id
	instance_type = "t2.micro"
	key_name = "docker"
	tags = {
		Name = "K8S Worker 3"
	}
}


