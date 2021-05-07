resource "aws_instance" "create_ec2" {
  count         = var.INSTANCE_COUNT
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  security_groups = [ "launch-wizard-2" ]
  key_name = "myaws"
  tags = {
  Name = "ansible_test"
  Target = "ansible_host"
  }
}


resource "null_resource" "add_ssh" {
count = length(aws_instance.create_ec2)
  connection {
	type     = "ssh"
    user = var.EC2_USER
	agent = false
	host = aws_instance.create_ec2.*.public_ip[count.index]
    private_key = file("/home/ec2-user/keys/myaws.pem")
  }
  
  provisioner "remote-exec" {
    inline = [
        "sudo echo '${var.MY_USER_PUBLIC_KEY}' >> ~/.ssh/authorized_keys",
        "sudo chmod 700 /home/${var.EC2_USER}/.ssh",
        "sudo chmod 600 /home/${var.EC2_USER}/.ssh/authorized_keys",
        "sudo yum update -y",
        "sudo yum install python37 python3-pip python-argcomplete wget git python-pip -y",
        "pip install --user boto3"
		]
    }
   depends_on = [aws_instance.create_ec2]
 }  
 
 
