variable "subnet_first" {
  type = list(string)
  default = [ "instance1","instance2","instance3" ]
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-9"
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}