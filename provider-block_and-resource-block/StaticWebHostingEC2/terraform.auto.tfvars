ami_id        = "ami-0866a3c8686eaeeba"  # Use an appropriate AMI ID for your region
instance_type = "t2.micro"
key_name      = "north"     # Replace with your EC2 key pair name
vpc_id        = "vpc-0672e3c1babbc8b3c"           # Replace with your VPC ID
domain_name   = "itdevops.fun"            # Replace with your domain name
subdomain     = "carvcilla.itdevops.fun"                   # Subdomain to bind (e.g., 'todo.example.com')
