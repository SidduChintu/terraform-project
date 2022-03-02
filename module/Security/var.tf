variable description {
    type = string
    default = "TLS from VPC"
}

variable ssh_from_port {
    default = 22
}

variable ssh_to_port {
    default = 22
}

variable http_from_port {
    default = 80
}

variable http_to_port {
    default = 80
}

variable protocol {
    type = string
    default = "tcp"
}

variable cidr {
    default = ["0.0.0.0/0"]
}

variable efp {
    default = 0
}

variable etp {
    default = 0
}

variable e_protocol {
    type = string
    default = "-1"
}