module "dev_app" {
    source = "./aws_infra"
    my_env = "dev"
    instance_type = "t3.micro"
    ami_id = "ami-042b4708b1d05f512"
    subnet_id = aws_subnet.default_subnet.id
    instance_count = 1
}

module "stg_app" {
    source = "./aws_infra"
    my_env = "stg"
    instance_type = "t3.micro"
    ami_id = "ami-042b4708b1d05f512"
    subnet_id = aws_subnet.default_subnet.id
    instance_count = 2
}

module "prd_app" {
    source = "./aws_infra"
    my_env = "prd"
    instance_type = "t3.micro"
    ami_id = "ami-042b4708b1d05f512"
    subnet_id = aws_subnet.default_subnet.id
    instance_count = 3
}