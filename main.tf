# Essence Terraform
# =================
#
# Example Terraform for a simple project whose instance does nothing.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = var.aws_machine_image
  instance_type = var.aws_instance_type

  tags = {
    Name = "PDSEssence"
  }
}
