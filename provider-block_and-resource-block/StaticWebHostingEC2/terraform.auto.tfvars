ami_id        = "ami-0866a3c8686eaeeba"  # Use an appropriate AMI ID for your region
instance_type = "t2.micro"
key_name      = "north"     # Replace with your EC2 key pair name
vpc_id        = "vpc-03276f1b3bce97eec"           # Replace with your VPC ID
domain_name   = "itdevops.fun"            # Replace with your domain name
subdomain     = "carvcilla.itdevops.fun"                   # Subdomain to bind (e.g., 'todo.example.com')
