provider "aws" {
  region  = "us-east-1"
}
module "CloudStartKit" {
  source = "git@github.com:Accenture-Dev-private/module_vpc.git"
  name = "CloudStartKit"
  cidr = "10.1.0.0/16"
  azs = ""
  enable_dns_hostnames = true
  enable_dns_support = true
  instance_tenancy = "default"
  enable_nat_gateway = true
  external_nat_gateway_eip_id = ""
  enable_vpn_gateway = false
  vpn_gateway_id = ""
  vpn_gateway_tags = {}
  enable_private_route_table_propagation = false
  enable_public_route_table_propagation = false
  enable_database_route_table_propagation = false
  private_subnets = ["10.1.2.0/24","10.1.3.0/24"]
  private_subnet_names = []
  private_subnet_suffix = "private-subnet"
  private_subnet_tags = {}
  name-default-sg = ""
  public_subnets = ["10.1.4.0/24","10.1.5.0/24"]
  public_subnet_names = []
  public_subnet_suffix = "public-subnet"
  public_subnet_tags = {}
#  database_subnets = []                               
#  database_subnet_names = []                          
#  database_subnet_suffix = "database-subnet"          
#  database_subnet_tags = {}                           
#  create_db_subnet_group = true                       
#  enable_route53_private_zone = false                 
#  route53_private_zone_name = ""
  allow_all_egress = false
  allow_extra_cidr_blocks = ["10.1.2.0/24","10.1.3.0/24","10.1.4.0/24","10.1.5.0/24"]
  allow_extra_cidr_blocks_egress = []
  peering_routes = []
  tags = {}                
  enable_default_security_group = false
  default_security_group_description = "CloudStartKit - Default"

}