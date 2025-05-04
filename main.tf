#---------------------------
# Terraform configuration
#---------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#---------------------------
# Provider
#---------------------------
provider "aws" {
  region = "ap-northeast-1"
}

#---------------------------
# Variables
#---------------------------
variable "project" {
  type = string
}
variable "enviroment" {
  type = string
}
