resource "aws_instance" "this_ubuntu" {

    ami = var.my-ami
    disable_api_stop  = var.my-disable_api_stop
    disable_api_termination = var.my-disable_api_termination
    instance-type = var.my-instance-type
    key_name = var.my-key
    count = var.my-count  #loop 
    tags = {
      purpose = "ec2"
    } 
    

}  
