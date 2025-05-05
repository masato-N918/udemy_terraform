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
  backend "s3" {
    bucket = "tf-lecture33-nakama"
    key    = "tastylog-dev.tfstate"
    region = "ap-northeast-1"
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
variable "domain" {
  type = string
}
