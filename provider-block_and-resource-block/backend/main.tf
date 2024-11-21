provider "aws" {
      region = "us-east-1"
      profile = "configs"
      shared_credentials_files = ["/home/cloudshell-user/.aws/credentials"]
    
}

#LockID
terraform {
    backend "s3" {
        bucket = "cbzbatch38"
        key = "terraform.tfstate"
        dynamodb_table = "cbz38"
        region = "us-east-1"
        profile = "configs"
        shared_credentials_files = ["/home/cloudshell-user/.aws/credentials"]
    }
}


resource "aws_instance" "ths_instance" {
  ami = "ami-0866a3c8686eaeeba"
  //key_name = "north"
  instance_type = "t2.micro"
  //security_groups = ["sg-02d0271c0935355dc"]
  count = 1
  
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo echo "hello world this is Batc24" >> /var/www/html/index.html
    EOF
   tags = {
    Name = "first_terraform_instance"

  } 
    
}
