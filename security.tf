#Key pair

resource "aws_key_pair" "deployer" {
    key_name = "terra-multi-env"
    public_key = file("C:/Users/psais/OneDrive/Documents/aws_multi_env/terra-multi-env.pub")
}

#Default VPC

resource "aws_default_vpc" "default" {
  
}

resource "aws_subnet" "default_subnet" {
  vpc_id                  = "vpc-06b0add3e63e64b6e"
  cidr_block              = "172.31.100.0/24"
  availability_zone       = "eu-north-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "terra-subnet"
  }
}

#Security Group

resource "aws_security_group" "Security" {
    name = "terra-secure-env"
    description = "This security group is to open ports for ec2 instance"
    vpc_id = aws_default_vpc.default.id #Interpolation

    #Incoming 
    ingress{
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #Outgoing
    egress{
        description = "This is for outgoing internet"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
