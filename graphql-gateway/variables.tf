variable "name" {}

variable "lambda_version" {
  default = "v0.2.4"
}

variable "environment_variables" {
  default = {}
}

variable "tags" {
  default = {}
}

variable "tracing_config" {
  default = "PassThrough"
}
