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