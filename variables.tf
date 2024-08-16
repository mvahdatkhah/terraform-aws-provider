variable "vpc_cidr_block" {}
variable subnet_cidr_block {}
variable "avail_zone" {}
variable "env_prefix" {}
variable "my_ip_address" {}
variable "instance_type" {}
variable "public_key_location" {
  type = string
}
variable "private_key_location" {
  type = string
}