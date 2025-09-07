variable "key_name" {
  description = "Your existing AWS key pair"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ubuntu_ami" {
  default = "ami-04b70fa74e45c3917" # Ubuntu Server 22.04 LTS (for us-east-1)
}
