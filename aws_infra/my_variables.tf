variable "my_env" {
    description = "This is the environment for Infra"
    type = string
}

variable "ami_id" {
    description = "This is the ami id for Ec2"
    type = string
}

variable "instance_type" {
    description = "This is the type of instance for Ec2"
    type = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
}

variable "instance_count" {
    description = "This is the count of instance for Ec2"
    type = number
}