provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba" # Replace with your AMI ID
  instance_type = "t2.micro"
  key_name      = "north"                # Ensure this matches your SSH key
  subnet_id     = "subnet-04e37288a351e8f8c"       # Replace with your subnet ID

  tags = {
    Name = "TerraformInstance"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"              # Default user for many AMIs
      private_key = file("~/.ssh/north.pem") # Path to your private key
      host        = self.public_ip
    }
  }
}
