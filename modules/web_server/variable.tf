variable "vpc_id" {
  type = string

}

variable "private_subnets" {
  type = list(string)
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "web_sg_id" {
  type = string
}

variable "web_target_group_arn" {
  type = string
}

variable "instance_name" {
  description = "list of instance names"
  type        = list(string)
}
