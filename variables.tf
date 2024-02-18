
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
default = "ami-05fb0b8c1424f266b"
}

variable "region" {
  default = "us-east-2"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "bucket_name"{
    default = "its-my-bucket-using-1234"
}
