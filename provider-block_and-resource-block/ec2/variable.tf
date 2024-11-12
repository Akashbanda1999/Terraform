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
    type = bool
    default = false

}

variable "my-disable_api_termination" {
    type = bool
    default = false

}

variable "my-count" {
    type = number
    default = 2
}
