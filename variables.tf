variable "env" {
  description = "The environment"
}

variable "vpc_id" {
  description = "The vpc id"
}

variable "subnet_id" {
  description = "The subnet id"
}

variable "key_name" {
  description = "The key pair name"
}

variable "instance_type" {
  default = "t2.nano"
  description = "The instance type"
}

variable "ami" {
  default = "ami-1a668878"
  description = "the ami image"
}

variable "name" {
  default = "bastion"
}
