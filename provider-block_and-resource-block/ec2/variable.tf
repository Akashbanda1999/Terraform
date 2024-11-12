variable "my-ami" {
    type = string
    default = "ami-0866a3c8686eaeeba"

}

variable "my-key" {
    type = string
    default = "north"

}

variable "my-Instance-type" {
    type = string
    default = "t2.micro"

}

variable "my-disable_api_stop" {
    type = bool1
    default = false

}

variable "my-disable_api_termination" {
    type = bool2
    default = false

}

variable "my-count" {
    type = count
    default = 2
}
