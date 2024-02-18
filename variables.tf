<<<<<<< HEAD
variable "vpc_fullcidr" {
  default = "192.168.0.0/16"
}

variable "zoneAPublic_cidr" {
  default = "192.168.1.0/24"
}

variable "zoneAPrivate_cidr" {
  default = "192.168.2.0/24"
}

variable "zoneBPublic_cidr" {
  default = "192.168.3.0/24"
}

variable "zoneBPrivate_cidr" {
  default = "192.168.4.0/24"
}

variable "ami" {
  default = "ami-0ba7386e027ae1b76"  # PACKER AMI from Kumar
  # default = "ami-024e6efaf93d85776"
}

variable "region" {
  default = "us-east-2"
}

variable "instance_type" {
  default = "t2.micro"
=======
variable "region"{
    default = "us-east-2"
}

variable "bucket_name"{
    default = "its-my-bucket-using-1234"
>>>>>>> ff8467c4c91e40be5475b108886d3553afe86087
}
