resource "aws_lb" "standardloadbalancer" {
  name               = "standardloadbalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.mysg.id]
  subnets            = [aws_subnet.zoneAPublicSubnet.id, aws_subnet.zoneBPublicSubnet.id]
  tags = {
    Name = "standard_load_balancer"
  }
}

resource "aws_lb_target_group" "standardlbtargetgroup" {
  name     = "standardlbtargetgroup"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = aws_vpc.main_vpc.id

}

resource "aws_lb_listener" "standardlblistener" {
  load_balancer_arn = aws_lb.standardloadbalancer.arn
  port              = "8080"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.standardlbtargetgroup.arn
  }
}
