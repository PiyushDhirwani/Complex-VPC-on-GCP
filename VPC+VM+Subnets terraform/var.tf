variable "project" {
  type    = string
  default = "qwiklabs-gcp-03-d1ffc8da7e2d"
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "file_name" {
  type = string
  default = "qwiklabs-gcp-03-d1ffc8da7e2d-e1337add3a6a.json"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "network_name" {
  type    = string
  default = "terraformnetwork"
}

variable "routing_mode" {
  type    = string
  default = "GLOBAL"
}

variable "subnets" {
  type = list(map(string))
  default = [
    {
      subnet_name           = "subnet-01"
      subnet_ip             = "10.10.10.0/24"
      subnet_region         = "us-central1"
      # subnet_private_access = false
      # subnet_flow_logs      = false
    },
    {
      subnet_name           = "subnet-02"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = "us-central1"
      # subnet_private_access = false
      # subnet_flow_logs      = false
    },
    {
      subnet_name           = "subnet-03"
      subnet_ip             = "10.10.30.0/24"
      subnet_region         = "us-central1"
      # subnet_private_access = false
      # subnet_flow_logs      = false
    }
  ]

}

variable "delete_default_internet_gateway_routes" {
  type    = bool
  default = false
}

variable "auto_create_subnetworks" {
  type    = bool
  default = false
}

variable "mtu" {
  type    = number
  default = 1460
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-9"
}

# variable "region" {
#   type    = string
#   default = "us-central1"
# }

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "subnet_first" {
  type = list(string)
  default = [ "instance1","instance2","instance3" ]
}

variable "subnet_second" {
  type = list(string)
  default = [ "instance4","instance5" ]
}

variable "subnet_third" {
  type = list(string)
  default = [ "instance6","instance7","instance8"]
}