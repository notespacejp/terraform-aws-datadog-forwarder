terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

resource "aws_cloudformation_stack" "this" {
    name = var.stack_name
    capabilities = ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    parameters = {
        DdApiKeySecretArn = var.dd_api_key_secret_arn
        DdSite = var.dd_site
        FunctionName = var.function_name
    }
    template_url = var.dd_cf_template_url
}


resource "aws_s3_bucket_notification" "this" {
    count = length(var.trigger_bucket_names)
    bucket = var.trigger_bucket_names[count.index]
    lambda_function {
        lambda_function_arn = aws_cloudformation_stack.this.outputs["DatadogForwarderArn"]
        events = ["s3:ObjectCreated:*"]
    }
}