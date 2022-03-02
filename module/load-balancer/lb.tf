resource "aws_lb" "test" {
  name               = var.name
  internal           = false
  load_balancer_type = var.type
  security_groups    = var.sg
  subnets            = var.lb_sub_id

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

#Listeners for ALB

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = var.lb_arn
  port              = var.port
  protocol          = var.protocol

  default_action {
    type             = "forward"
    target_group_arn = var.tg_arn
  }
}