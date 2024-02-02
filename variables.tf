variable "ami" {
description = "creating ec2 instance"
type = string
default = "ami-0905a3c97561e0b69"
}

variable "name" {
default = "allow_tls"
type = string
description = "allow TLS inbound traffic"   
}

variable "description" {
  default = "TLS from VPC"
  type = string
  description = "tls"
}

variable "from_port" {
    default = "443"
    type = number
    description = "ingress start"
}

variable "to_port" {
    default = "443"
    type = number
    description = "ingress end"

}
variable "protocol" {
    default = "tcp"
    type = string
    description = "ingress protocol"  
}

variable "cidr_blocks" {
  default = ["116.30.20.50/32"]
  type = list(any)
  description = "cidrblock ingress rule"
}

variable "ingress_description" {
    default = "TLS from VPC"
    type = string
    description = "ingress description"
  
}

variable "ingress_from_port" {
    default = "80"
    type = number
    description = "port ingress"
  
}

variable "ingress_to_port" {
  default = "80"
  type = number
  description = "port for ingress"
}

variable "ingress_protocol" {
  default = "tcp"
  type = string
  description = "ingress protocol"
}

variable "ingress_cidr_blocks" {
    default = ["116.30.20.50/32"]
  type = list(any)
  description = "cidr_block_rule"
}


