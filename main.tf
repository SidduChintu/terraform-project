module "instance" {
    source = "./module/EC2/"
}

module "security" {
    source ="./module/Security/"
}

module "target_group"{
    source = "./module/Target-group"
}

module "load_balancer" {
    source = "./module/load-balancer"
}