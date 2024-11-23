provider "aws" {
    region =  "us-east-1"
    profile = "configs"
}

 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0866a3c8686eaeeba"
    vpc_security_group_ids = ["sg-02d0271c0935355dc"]
    key_name = "north"
    instance_type = "t2.micro"
  #provisioner "file" {
    #source      = "readme.md"
    #destination = "/home/ec2-user/aws/"
  #}
  #provisioner "local-exec" {
    #command = "echo ${self.private_ip} >> private_ips.txt"
  #}
    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/id_rsa.pem")
    host     = "${self.public_ip}"
  }

  provisioner "remote-exec" {
    inline = [
      "yum install httpd -y",
      "systemctl start httpd",
      "systemctl enable httpd"
    ]
  }
    
}  
