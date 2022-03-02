resource "aws_ami_from_instance" "example" {
  name               = "Sid-EC-ami"
  source_instance_id = "i-03caba101bec8097a"
}