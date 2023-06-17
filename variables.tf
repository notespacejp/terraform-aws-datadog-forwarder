variable "stack_name" {
    type = string
    description = "cf stack name"
    default = "datadog-forwarder"
}

variable "function_name" {
    type = string
    description = "lambda function name"
    default = "datadog-forwarder"
}

variable "dd_api_key_secret_arn" {
    type = string
    description = "datadog api key secret arn"
}

variable "dd_site" {
    type = string
    description = "datadog site"
    default = "ap1.datadoghq.com"
}

variable "dd_cf_template_url" {
    type = string
    description = "datadog cloudformation template url"
    default = "https://datadog-cloudformation-template.s3.amazonaws.com/aws/forwarder/latest.yaml"
}