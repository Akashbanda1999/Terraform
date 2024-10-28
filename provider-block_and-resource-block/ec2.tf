resource "aws_instance" "this_ubuntu" {

    ami = "ami-0325498274077fac5" 
    disable_api_stop  = true 
    disable_api_termination = true  
    instance_type = "t4g.nano" 
    key_name = "north"
    vpc_security_group_ids = ["vpc-0672e3c1babbc8b3c"]
    count = 4  #loop 
    tags = {
      purpose = "ec2"
    } 
    

}  