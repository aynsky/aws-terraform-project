module "storage" {
  source = "./modules/storage"

  db_username           = var.db_username
  db_password           = var.db_password
  db_instance_class     = "db.t3.micro"
  vpc_id                = module.network.vpc_id
  ec2_security_group_id = module.network.web_sg_id
  web_server_instances  = module.web_server.instances # Pass the EC2 instances to the storage module
}
