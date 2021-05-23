output "id_for_VPC" {
  value = module.CloudStartKit.id_for_VPC
}

output "public-subnet" {
  value = module.CloudStartKit.public-subnet
}

output "private-subnet" {
  value = module.CloudStartKit.private-subnet
}

output "subnet_for_natgateway" {
  value = module.CloudStartKit.subnet_for_natgateway  
}

output "id_for_internet_gateway" {
  value = module.CloudStartKit.id_for_internet_gateway
}