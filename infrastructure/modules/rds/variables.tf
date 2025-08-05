variable "environment" {
description = "Deployment environment"
type = string
}

variable "vpc_id" {
description = "VPC ID"
type = string
}

variable "subnet_ids" {
description = "List of subnet IDs"
type = list(string)
}

variable "db_name" {
description = "Database name"
type = string
}

variable "db_username" {
description = "Database username"
type = string
}

variable "db_password" {
description = "Database password"
type = string
sensitive = true
}

variable "rds_security_group_id" {
description = "Security group ID for RDS"
type = string
}
