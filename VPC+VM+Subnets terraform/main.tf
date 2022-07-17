module "vpc" {
  source                                 = "./vpc"
  network_name                           = var.network_name
  auto_create_subnetworks                = var.auto_create_subnetworks
  routing_mode                           = var.routing_mode
  delete_default_internet_gateway_routes = var.delete_default_internet_gateway_routes
  mtu                                    = var.mtu
}

module "subnets" {
  source       = "./subnets"
  network_name = module.vpc.network_name
  subnets      = var.subnets
}

module "vm1" {
  source = "./vm1"
  # network     = module.vpc.network_name
  subnet_first=var.subnet_first
  #subnetwork= "subnet-01"#module.subnets.subnets[0]
  depends_on = [
    module.subnets
  ]
}

module "vm2" {
  source = "./vm1"
  # network     = module.vpc.network_name
  subnet_first=var.subnet_second
  #subnetwork="subnet-02" #module.subnets.subnets[1]
  depends_on = [
    module.subnets
  ]
}

module "vm3" {
  source = "./vm1"
  #network     = module.vpc.network_name
  subnet_first=var.subnet_third
  #subnetwork= "subnet-03" # module.subnets.subnets[2]
  depends_on = [
    module.subnets
  ]
}





















#module "vm"{
#   for i in var.count2: 
#   source       = "./vm"
#   name                      = var.name # name your instance
#   machine_type              = var.machine_type            # enter machine type
#   zone                      = var.zone                    # enter zone of instance
#   #allow_stopping_for_update = true                   p     # no version update
#   image = var.image

#   network     = module.vpc.network_name # enter if there is any vpc
#   subnetwork = module.subnets.subnets
# }