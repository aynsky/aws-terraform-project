variable "region" {
  description = "current region"
  type        = string
  default     = "ap-south-1"
}
variable "environment" {
  description = "current environment"
  type        = string
  default     = "dev"
}
variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}
#variable "rds_instance_class" {}

variable "instance_count" {
  description = "Number of intences need"
  type        = number
  default     = 2
}

variable "instance_name" {
  description = "value of instance name"
  type        = list(string)
}


#network var

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  type = list(string)

}




variable "db_username" {
  description = "The database username"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
  sensitive   = true # To keep the password hidden
}

