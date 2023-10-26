# DataDog AWS Forwarder Module

## Description

Module for deploying aws forwarder provided by datadog in aws

## Document Update

```bash
terraform-docs markdown --output README.md .
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudformation_stack.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack) | resource |
| [aws_s3_bucket_notification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dd_api_key_secret_arn"></a> [dd\_api\_key\_secret\_arn](#input\_dd\_api\_key\_secret\_arn) | Secret manager arn where datadog api key are stored | `string` | n/a | yes |
| <a name="input_dd_cf_template_url"></a> [dd\_cf\_template\_url](#input\_dd\_cf\_template\_url) | datadog cloudformation template url | `string` | `"https://datadog-cloudformation-template.s3.amazonaws.com/aws/forwarder/latest.yaml"` | no |
| <a name="input_dd_site"></a> [dd\_site](#input\_dd\_site) | datadog site | `string` | `"ap1.datadoghq.com"` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | lambda function name | `string` | `"datadog-forwarder"` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | cf stack name | `string` | `"datadog-forwarder"` | no |
| <a name="input_trigger_bucket_names"></a> [trigger\_bucket\_names](#input\_trigger\_bucket\_names) | list of bucket names to trigger lambda function | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The name of the S3 bucket |
| <a name="output_lambda_arn"></a> [lambda\_arn](#output\_lambda\_arn) | The ARN of the Lambda function |
<!-- END_TF_DOCS -->