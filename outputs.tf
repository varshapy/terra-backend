output "aws_ami_id" {
	description = "AWS_AMI used to create the Instance"
	value = data.aws_ami.k8s_ami.id
}

output "aws_instance_id" {
	description = "AWS_Instance created"
	value = "${aws_instance.kube_worker.*.id}"
}
