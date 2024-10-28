resource "aws_instance" "this_ubuntu" {

    ami = "ami-0325498274077fac5" 
    disable_api_stop  = true 
    disable_api_termination = true  
    instance_type = "t4g.nano" 
    key_name = "north"
    security_groups = ["sg-02d0271c0935355dc"]
    count = 4  #loop 
    tags = {
      purpose = "ec2"
    } 
    

}  