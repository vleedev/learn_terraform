variable "AWS_REGION" {
  default     = "ap-northeast-1"
  description = "AWS region"
}

data "aws_availability_zones" "available" {}