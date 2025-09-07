# resource "aws_security_group" "ssh_http" {
#   name        = "ssh_http_sg"

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["184.148.216.211/32"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_instance" "ubuntu_ec1" {
#   ami                         = var.ubuntu_ami
#   instance_type               = var.instance_type
#   key_name                    = var.key_name
#   vpc_security_group_ids      = [aws_security_group.ssh_http.id]
#   associate_public_ip_address = true

#   tags = {
#     Name = "Instance-1"
#   }

#   provisioner "local-exec" {
#     command = "echo ${self.public_ip} > ../ansible/ec2_ip.txt"
#   }
# }

# resource "aws_instance" "ubuntu_ec2" {
#   ami                         = var.ubuntu_ami
#   instance_type               = var.instance_type
#   key_name                    = var.key_name
#   vpc_security_group_ids      = [aws_security_group.ssh_http.id]
#   associate_public_ip_address = true

#   tags = {
#     Name = "Instance-2"
#   }

#   provisioner "local-exec" {
#     command = "echo ${self.public_ip} > ../ansible/ec2_ip.txt"
#   }
# } 