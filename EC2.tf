module "web_server" {
  source = "./modules/web_server"

  vpc_id               = module.network.vpc_id
  private_subnets      = module.network.private_subnets
  ami                  = "ami-00bb6a80f01f03502"
  instance_type        = var.instance_type
  instance_count       = var.instance_count
  web_sg_id            = module.network.web_sg_id
  web_target_group_arn = module.network.web_target_group_arn
  instance_name        = var.instance_name
}
