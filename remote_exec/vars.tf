
variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "INSTANCE_COUNT" {
  default = "2"
}

variable "EC2_USER" {
  type = string
  default = "ec2-user"
}

variable "MY_USER_PUBLIC_KEY" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgwJcqWnvKM1uy5ySS8ipfElnhmWJEqY2Lmg0hNej8o80VTJkSfsIt+GC8SLPOgX5y5/D5BHHBfbanHEtCCt+QChIKl6078y2dCFSbfS38T/Nrv1uh2vJFiNxNzL7y3MVSdzdS/eyhfDOvBsrcAF27qMhGHZh8+4RjqQGqXeLp/SaSV4rsWadSioLg3o9cIPerkW5/SlHVMi2ZNNxMABXsv2XLDJ9dvNXK4HPytSXKV7cuhh3iHx3OasXdXRfityVXnx2NXlWj2su5ZNOHhc74au6ZXGugnLyKIsaYbHztbJslvY4SUPdan5XQEGF+oI56iYVWXQxQFfHuPwpo7xNJ ec2-user@ip-172-31-8-243.ap-south-1.compute.internal"
}
