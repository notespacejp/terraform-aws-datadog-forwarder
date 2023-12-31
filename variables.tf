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
    description = "Secret manager arn where datadog api key are stored"
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

variable "trigger_bucket_names" {
    type = list(string)
    description = "list of bucket names to trigger lambda function"
    default = []
}