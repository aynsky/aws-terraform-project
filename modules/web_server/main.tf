resource "aws_instance" "web" {
  for_each               = toset(var.instance_name) # Iterate over the list of instance names
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.private_subnets[0] # Adjust if needed for multiple subnets
  vpc_security_group_ids = [var.web_sg_id]

  tags = {
    Name = each.value # Assign the instance name from the list
  }
}

resource "aws_lb_target_group_attachment" "web_tg_attach" {
  for_each         = aws_instance.web
  target_group_arn = var.web_target_group_arn
  target_id        = each.value.id
  port             = 80
}
