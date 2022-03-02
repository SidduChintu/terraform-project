variable "name"{
    type = string
    default = "sid-lb-tf"
}

variable "type"{
    type = string
    default ="application"
}

variable "sg" {
    default = ["sg-081d98e5b5df2446d"]
}

variable "lb_sub_id" {
    default = ["subnet-078387f27e885f97f" , "subnet-001b575ee4de66e11"]
}

variable "lb_arn" {
    type = string
    default = "arn:aws:elasticloadbalancing:ap-south-1:310486407552:loadbalancer/app/sid-lb-tf/095102593adc7bd9"
}

variable "port" {
    default = "80"
}

variable "protocol" {
    default = "HTTP"
}

variable "tg_arn" {
    type = string
    default = "arn:aws:elasticloadbalancing:ap-south-1:310486407552:targetgroup/sid-tg/fbc12028d612ec80"
}