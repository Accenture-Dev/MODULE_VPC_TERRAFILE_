## Para usar o módulo >

### 1. Faça o download do repositório:
https://github.com/Accenture-Dev/MODULE_VPC_TERRAFILE_.git
git@github.com:Accenture-Dev/MODULE_VPC_TERRAFILE_.git

***1.1*** Caso seja uma mudança em uma VPC já existente:

*1.1.1* Altere para a Branch "create_or_change+nome_da_VPC" e faça as alterações (commit e push).

*1.1.2* Solicite o Pull Request apontando para a Branch com o nome da VPC.

***1.2*** Caso seja uma nova VPC:

*1.2.1* Crie duas branch's, uma com o nome "create_or_change+nome_da_VPC" e outra com o nome da VPC à partir da Branch Develop e faça o publish da Branch. Solicite ao Reviewer que aprovará a Pull Request (DevOps) da criação da Infra a criação de Workspace no Terraform Cloud com o nome do SG e FAÇA AS ALTERAÇÕES NA BRANCH "create_or_change+nome_do_SG". (commit e push).

*1.2.2* Após OK do DevOps solicite Pull Request para a Branch com o nome do Recurso.
### 2. ATENÇÃO! As variáveis são de dois tipos : *string* e *number* e estão todas descritas abaixo.

# VARIABLES > > >

*variable* **"name"** {
  description = "Nome da VPC"
  type = string
}

*variable* **"cidr"** {
  description = "10.0.0.0/16"
  type = string
}

*variable* **"azs"** {
  description = "Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  type = string
}

*variable* **"enable_dns_hostnames"** {
  description = "Habilita hostnames DNS na VPC"
  type = string
}

*variable* **"enable_dns_support"** {
  description = "Habilita suporte a DNS na VPC"
  type = string
}

*variable* **"instance_tenancy"** {
  description = "Tipo de locação de instâncias criadas na VPC"
  type = string
}

*variable* **"enable_nat_gateway"** {
  description = "Habilita criação de um NAT Gateway; requer ao menos uma subnet pública"
  type = string
}

*variable* **"external_nat_gateway_eip_id"** {
  description = "ID de um Elastic IP pré-existente para o NAT Gateway; caso não definido, um novo Elastic IP será criado"
  type = string
}

*variable* **"enable_vpn_gateway"** {
  description = "Habilita criação de um VPN Gateway (VGW) para a VPC"
  type = string
}

*variable* **"vpn_gateway_id"** {
  description = "ID de um VPN Gateway existente para vincular à VPC; requer que `enable_vpn_gateway` seja habilitada"
  type = string
}

*variable* **"vpn_gateway_tags"** {
  description = "Tags aplicadas ao VPN Gateway"
  type = string
}

*variable* **"enable_private_route_table_propagation"** {
  description = "Habilita propagação de rotas do VPN Gateway para a route table privada"
  type = string
}

*variable* **"enable_public_route_table_propagation"** {
  description = "Habilita propagação de rotas do VPN Gateway para a route table pública"
  type = string
}

*variable* **"enable_database_route_table_propagation"** {
  description = "Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  type = string
}

*variable* **"private_subnets"** {
  description = "Lista de CIDRs das subnets privadas"
  type = string
}

*variable* **"private_subnet_names"** {
  description = "Lista de nomes das subnets privadas"
  type = string
}

*variable* **"private_subnet_suffix"** {
  description = "Sufixo para os nomes das subnets privadas"
  type = string
}

*variable* **"private_subnet_tags"** {
  description = "Tags aplicadas às subnets privadas"
  type = string
}

*variable* **"name-default-sg"** {
  description = "default"
  type = string
}

*variable* **"public_subnets"** {
  description = "Lista de CIDRs das subnets públicas"
  type = string
}

*variable* **"public_subnet_names"** {
  description = "Lista de nomes das subnets públicas"
  type = string
}

*variable* **"public_subnet_suffix"** {
  description = "Sufixo para os nomes das subnets públicas"
  type = string
}

*variable* **"public_subnet_tags"** {
  description = "Tags aplicadas às subnets públicas"
  type = string
}

*variable* **"database_subnets"** {
  description = "Lista de CIDRs das subnets de bancos de dados"
  type = string
}

*variable* **"database_subnet_names"** {
  description = "Lista de nomes das subnets de bancos de dados"
  type = string
}

*variable* **"database_subnet_suffix"** {
  description = "Sufixo para os nomes das subnets de bancos de dados"
}

*variable* **"database_subnet_tags"** {
  description = "Tags aplicadas às subnets de bancos de dados"
}

*variable* **"create_db_subnet_group"** {
  description = "Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
}

*variable* **"enable_route53_private_zone"** {
  description = "Habilita criação de uma zona DNS privada da VPC"
}

*variable* **"route53_private_zone_name"** {
  description = "Nome da zona DNS privada da VPC"
}

*variable* **"allow_all_egress"** {
  description = "Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  type = string
}

*variable* **"allow_extra_cidr_blocks"** {
  description = "Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  type = string
}

*variable* **"allow_extra_cidr_blocks_egress"** {
  description = "Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  type = string
}

*variable* **"peering_routes"** {
  description = "Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  type = string
}

*variable* **"tags"** {
  description = "Map de tags comuns a todos os recursos"
  type = string
}

*variable* **"enable_default_security_group"** {
  description = "Habilita criação de um security group padrão para a VPC"
  type = string
}

*variable* **"default_security_group_description"** {
  description = "Descrição do security group default da VPC"
  type = string
}