variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}
variable "route_table_id" {
  type = string
}

variable "vpc_name" {
  default = var.vpc_id
}

resource "random_id" "id" {
  byte_length = 8
}