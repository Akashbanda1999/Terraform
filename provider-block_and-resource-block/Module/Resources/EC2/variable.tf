variable "this_image_id" {
  type        = string
}


variable "this_count" {
    type = number 
    default = 2
     
}
variable "this_vpc_security_group_ids" {
    type = string 
    default = "sg-02d0271c0935355dc"
     
}

variable "this_list" {
    type = string
     
}

variable "this_disable_api_stop" {
     type = bool

}

variable "this_disable_api_termination" {
  type = bool

}

variable "this_aws_instance_subnet" {
   type = string

}
