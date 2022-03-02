variable "name" {
    type = string
    default = "sid-tg"
}

variable "port" {
    default = 80
}

variable "protocol" {
    type = string
    default = "HTTP"
}

variable "vpc_id" {
    type = string
    default = "vpc-001790fa349af734c"
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "tg_arn" {
    type = string
    default = "arn:aws:elasticloadbalancing:ap-south-1:310486407552:targetgroup/sid-tg/fbc12028d612ec80"
}

variable "tg_ins_id" {
    type = string
    default = "i-09cb0ecd4bd9c5dd6"
}