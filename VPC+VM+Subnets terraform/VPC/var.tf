variable "network_name" {
  default = "terraformnetwork"
}

variable "routing_mode" {
  type    = string
  default = "GLOBAL"
}

variable "auto_create_subnetworks" {
  type    = bool
  default = false
}

variable "delete_default_internet_gateway_routes" {
  type    = bool
  default = false
}

variable "mtu" {
  type    = number
  default = 1460
}