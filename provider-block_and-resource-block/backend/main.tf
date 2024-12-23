provider "aws" {
      region = "us-east-1"
      profile = "configs"
      shared_credentials_files = ["/root/.aws/credentials"]
    
}

#LockID
terraform {
    backend "s3" {
        bucket = "iamakashbanda"
        key = "terraform.tfstate"
        dynamodb_table = "test-my-app-table-d"
        region = "us-east-1"
        profile = "configs"
    }
}


resource "aws_instance" "ths_instance" {
  ami = "ami-0866a3c8686eaeeba"
  //key_name = "north"
  instance_type = "t2.micro"
  //security_groups = "sg-02d0271c0935355dc"
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
