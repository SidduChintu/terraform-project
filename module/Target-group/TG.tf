resource "aws_lb_target_group" "test" {
  name     = var.name
  port     = var.port
  protocol = var.protocol
  vpc_id   = 	var.vpc_id
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr
}

#attaching instance to load balancer

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = var.tg_arn
  target_id        = var.tg_ins_id
  port             = var.port
}