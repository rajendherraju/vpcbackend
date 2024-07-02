variable "aws_region" {
  default = "us-west-2"
}

variable "profile" {
  default = "personal-aws"
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  default     = "my-key-pair"
}
