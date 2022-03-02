resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "sid-volume"
  }
}