variable "db_username" {
  description = "Username for the RDS instances"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS instances"
  type        = string
  default     = "password123"
}

variable "db_instance_class" {
  description = "Instance class for the RDS instances"
  type        = string
  default     = "db.t3.micro"
}

variable "vpc_id" {
  description = "VPC ID where the RDS instances will be deployed"
  type        = string
}

variable "ec2_security_group_id" {
  description = "Security group ID for EC2 instances"
  type        = string

}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
  default     = "dev"

}

variable "web_server_instances" {
  description = "Map of EC2 instances created by the web_server module"
  type        = map(string)
}

variable "private_subnets" {
  description = "List of private subnets for the RDS instance"
  type        = list(string)
}



