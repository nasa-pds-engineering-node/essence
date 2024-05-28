# Essence Terraform — Variables
# =============================
#
# A larger and more fully-realized project would have a lot more here.

variable "aws_region" {
  description = "Amazon Web Services: in which region to operate"
  default = "us-west-2"
}

variable "aws_machine_image" {
  description = "Amazon Machine Image (AMI) to apply to an EC2"
  default = "ami-830c94e3"
}

variable "aws_instance_type" {
  description = "AWS Elastic Compute Cloud (EC2): type of the machine's instance"
  default = "t2.micro"
}
