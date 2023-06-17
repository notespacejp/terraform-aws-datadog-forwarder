output "lambda_arn" {
    description = "The ARN of the Lambda function"
    value = aws_cloudformation_stack.this.outputs["DatadogForwarderArn"]
}

output "bucket_name" {
    description = "The name of the S3 bucket"
    value = aws_cloudformation_stack.this.outputs["ForwarderBucketName"]
}