resource "aws_lambda_function" "lambda" {
  s3_bucket     = "novacloud-lambda-functions"
  s3_key        = "github.com/graphql-services/graphql-comments/lambda-${var.lambda_version}.zip"
  function_name = "${var.name}"

  role        = "${var.role}"
  handler     = "main"
  runtime     = "go1.x"
  publish     = true
  timeout     = 30
  memory_size = 1024

  environment {
    variables = "${var.environment_variables}"
  }

  vpc_config {
    subnet_ids         = ["${var.vpc_subnet_ids}"]
    security_group_ids = ["${var.vpc_security_group_ids}"]
  }

  tags = "${var.tags}"
}

data "aws_lambda_invocation" "example" {
  function_name = "${aws_lambda_function.lambda.function_name}"

  input = <<JSON
{
  "path": "/migrate",
  "httpMethod": "GET"
}
JSON
}
