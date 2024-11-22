# Define the configurations for different environments
variable "environments" {
  default = {
    prod = {
      instance_class = "db.t3.large"
    }
    test = {
      instance_class = "db.t3.micro"
    }
    dev = {
      instance_class = "db.t3.small"
    }
  }
}

# Loop to create RDS instances for each environment
resource "aws_db_instance" "rds_instances" {
  for_each = var.environments

  identifier          = "${each.key}-rds"
  engine              = "mariadb"
  instance_class      = each.value.instance_class
  allocated_storage   = 20
  username            = "admin"               # Change as needed
  password            = "Password123"  # Use a secure password
  publicly_accessible = false
  skip_final_snapshot = true

  tags = {
    Environment = each.key
  }
}

# Output the RDS instance endpoints dynamically
output "rds_endpoints" {
  value = { for key, instance in aws_db_instance.rds_instances : key => instance.endpoint }
  description = "Endpoints of the RDS instances for each environment"
}

# Optional: Output the instance identifiers dynamically
output "rds_identifiers" {
  value = { for key, instance in aws_db_instance.rds_instances : key => instance.identifier }
  description = "Identifiers of the RDS instances for each environment"
}
