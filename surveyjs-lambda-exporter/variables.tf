variable "name" {}

variable "lambda_version" {
  default = "v0.1.3"
}

variable "environment_variables" {
  default = {}
}

variable "tags" {
  default = {}
}

variable "role" {}

variable "vpc_subnet_ids" {
  default = []
}

variable "vpc_security_group_ids" {
  default = []
}
