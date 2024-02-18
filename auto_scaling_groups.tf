resource "aws_launch_template" "standard_launch_template" {
  name_prefix            = "standard_launch_template"
  image_id               = var.ami
  instance_type          = var.instance_type
  #user_data              = filebase64("./user-data.sh")
  vpc_security_group_ids = [aws_security_group.mysg.id]
}

resource "aws_autoscaling_group" "standard_auto_scaling_group" {
  desired_capacity    = 2
  max_size            = 5
  min_size            = 1
  vpc_zone_identifier = [aws_subnet.zoneAPublicSubnet.id, aws_subnet.zoneBPublicSubnet.id]

  launch_template {
    id      = aws_launch_template.standard_launch_template.id
    version = "$Latest"
  }
}

resource "aws_autoscaling_attachment" "asg_attachment_bar" {
  autoscaling_group_name = aws_autoscaling_group.standard_auto_scaling_group.id
  lb_target_group_arn    = aws_lb_target_group.standardlbtargetgroup.arn
}
