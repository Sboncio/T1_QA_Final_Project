environment = "staging"
region = "eu-west-1"

ssh_key_pair_name = "aws_key"

maximum_node_group_size = 3
desired_node_group_size = 1

eks_node_instance_types = "t3.medium"

database_instance_class = "db.t2.small"
DB_ROOT_PASSWORD = "NOTTHEPASSWORD"
db_max_allocated_storage = 50

controller_IP_CIDR = "3.251.73.14/32"

vpc_cidr_block = "15.0.0.0/16"

public_subnet_az_1_cidr_block = "15.0.1.0/24"
public_subnet_az_2_cidr_block = "15.0.2.0/24"

private_eks_subnet_az_1_cidr_block = "15.0.3.0/24"
private_eks_subnet_az_2_cidr_block = "15.0.4.0/24"

private_rds_1_cidr_block = "15.0.5.0/24"
private_rds_2_cidr_block = "15.0.6.0/24"
