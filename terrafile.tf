provider "aws" {
  region  = "us-east-1"
}
module "CloudStartKit" {
  source = "git@github.com:Accenture-Dev-private/module_vpc.git"
  name = ""
  cidr = ""
  azs = ""
  enable_dns_hostnames = ""
  enable_dns_support = ""
  instance_tenancy = ""
  enable_nat_gateway = ""
  external_nat_gateway_eip_id = ""
  enable_vpn_gateway = ""
  vpn_gateway_id = ""
  vpn_gateway_tags = {}
  enable_private_route_table_propagation = ""
  enable_public_route_table_propagation = ""
  enable_database_route_table_propagation = ""
  private_subnets = ["",""]
  private_subnet_names = []
  private_subnet_suffix = ""
  private_subnet_tags = {}
  name-default-sg = ""
  public_subnets = ["",""]
  public_subnet_names = []
  public_subnet_suffix = ""
  public_subnet_tags = {}
#  database_subnets = []                               
#  database_subnet_names = []                          
#  database_subnet_suffix = "database-subnet"          
#  database_subnet_tags = {}                           
#  create_db_subnet_group = true                       
#  enable_route53_private_zone = false                 
#  route53_private_zone_name = ""
  allow_all_egress = ""
  allow_extra_cidr_blocks = ["","","",""]
  allow_extra_cidr_blocks_egress = []
  peering_routes = []
  tags = {}                
  enable_default_security_group = ""
  default_security_group_description = ""

}