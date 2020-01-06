resource "aws_lambda_function" "lambda" {
  s3_bucket     = "novacloud-lambda-functions"
  s3_key        = "github.com/graphql-services/graphql-gateway/lambda-${var.lambda_version}.zip"
  function_name = "${var.name}"

  role        = "${aws_iam_role.lambda_exec.arn}"
  handler     = "lambda.handler"
  runtime     = "nodejs10.x"
  publish     = true
  timeout     = 30
  memory_size = 1024

  environment {
    variables = "${var.environment_variables}"
  }

  tags = "${var.tags}"

  tracing_config {
    mode = "${var.tracing_config}"
  }
}
