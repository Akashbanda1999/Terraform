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
  allocated_storage   = 20  # Adjust storage as required
  #name                = "${each.key}_db"
  username            = "admin"               # Change as needed
  password            = "SecurePassword123!"  # Use a secure password
  publicly_accessible = false
  skip_final_snapshot = true

  # Apply other configurations as required
  tags = {
    Environment = each.key
  }
}

