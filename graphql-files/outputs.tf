output "lambda_arn" {
  value = "${aws_lambda_function.lambda.arn}"
}

output "lambda_invoke_arn" {
  value = "${aws_lambda_function.lambda.invoke_arn}"
}

output "lambda_version" {
  value = "${aws_lambda_function.lambda.version}"
}
