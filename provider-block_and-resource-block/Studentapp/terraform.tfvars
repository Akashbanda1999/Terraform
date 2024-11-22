this_ami      = "ami-0866a3c8686eaeeba"  # Use an appropriate AMI ID for your region
instance_type = "t2.micro"
key_name      = "north"     # Replace with your EC2 key pair name
vpc_id        = "vpc-0672e3c1babbc8b3c"           # Replace with your VPC ID
subnet_ids    = ["subnet-04e37288a351e8f8c", "subnet-0756f49ca8ca5b887", "subnet-0c37df0f9cbd8036c", "subnet-07c4efa15c9dfc03b"]
domain_name   = "itdevops.fun"            # Replace with your domain name
subdomain     = "student"                   # Subdomain to bind (e.g., 'todo.example.com')


# RDS 

db_username                = "admin"
db_password                = "admin123"
db_name                    = "studentdb"
