
resource "aws_lb" "alb" {
  name               = "wordpress-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = ["aws_security_group.alb.id"]

  subnets = var.public_subnet_cidr_blocks

  tags = {
    Name = "wordpress-alb"
  }
}

resource "aws_lb_listener" "alb" {
  load_balancer_arn = aws_lb.alb.arn
  port              = var.alb_listener_port
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.wordpress.arn
  }
}

resource "aws_lb_target_group" "wordpress" {
  name_prefix = "aws"
  port        = var.alb_target_port
  protocol    = "HTTP"

  vpc_id = var.vpc_id

  health_check {
    path = "/"
  }

  tags = {
    Name = "wordpress-tg"
  }
}

resource "aws_launch_template" "wordpress" {
  name_prefix = "wordpress-lt"

  image_id        = "data.aws_ami.wordpress.id"
  instance_type  = "t2.micro"

  vpc_security_group_ids = ["aws_security_group.wordpress.id"]
}
