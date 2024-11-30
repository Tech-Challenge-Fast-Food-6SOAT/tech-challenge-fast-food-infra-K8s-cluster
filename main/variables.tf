variable "aws_vpc_name" {
  type    = string
  default = "lanchonete-vpc"
}

variable "aws_igw_name" {
  type    = string
  default = "lanchonete-igw"
}

variable "role_arn" {
  type        = string
  description = "The ARN of the IAM Role"
}

variable "mongodb_connection_string_pedido" {
  type        = string
  description = "The MongoDB connnection string"
}

variable "mongodb_connection_string_produto" {
  type        = string
  description = "The MongoDB connnection string"
}

variable "postgresql_connection_string_pagamento" {
  type        = string
  description = "The PostgreSQL connnection string"
}

variable "aws_access_key_id" {
  type        = string
  description = "The AWS Access Key ID"
}

variable "aws_secret_access_key" {
  type        = string
  description = "The AWS Secret Access Key"
}

variable "aws_session_token" {
  type        = string
  description = "The AWS Session Token"
}
