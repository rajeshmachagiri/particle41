variable "region" {
  description = "The AWS region to deploy resources."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for private subnets."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for public subnets."
  type        = list(string)
}

