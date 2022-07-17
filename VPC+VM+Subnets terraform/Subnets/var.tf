variable "network_name" {
  type    = string
  default = "terraformnetwork"
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
