# terraform.tfvars
vpc_cidr_block      = "10.0.0.0/16" # VPC address
subnet_cidr_block   = "10.0.10.0/24" # subnet address
avail_zone = "us-east-1a" // Avalability Zone
env_prefix          = "dev" # prefix for tags
instance_type       = "t2.micro" # EC2 instance type