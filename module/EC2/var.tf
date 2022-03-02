variable "ami_id" {
    type = string
    default = "ami-08ee6644906ff4d6c"
}

variable "apia" {
    type = bool
    default = true
}

variable "ins_type" {
    type = string
    default = "t2.micro"
}

variable "key" {
    type = string
    default = "sid"
}

variable "monitring" {
    type = bool
    default = true
}

variable "sg" {
    default = ["sg-08cf3e8bf37d7cc9b"]
}

variable "sub_id" {
    type = string
    default = "subnet-078387f27e885f97f"
}