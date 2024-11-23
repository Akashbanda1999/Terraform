provider "aws" {
    region =  "us-east-1"
    access_key = ""
    secret_key = ""
    profile = "configs"
}
 resource "aws_instance" "this_aws_instance" {
    ami = "ami-0866a3c8686eaeeba"
    vpc_security_group_ids = ["sg-02d0271c0935355dc"]
    key_name = "north"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"
      connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("${path.module}/id_rsa.pem")
    host     = "${self.public_ip}"
  }
  
  
  }


}
