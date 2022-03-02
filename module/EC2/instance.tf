module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Sid-EC"

  ami                    = var.ami_id
  associate_public_ip_address = var.apia
  instance_type          = var.ins_type
  key_name               = var.key
  monitoring             = var.monitring
  vpc_security_group_ids = var.sg
  subnet_id              = var.sub_id

   user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
