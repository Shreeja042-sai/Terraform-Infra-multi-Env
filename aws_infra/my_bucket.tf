#Resource Block
resource "aws_s3_bucket" "my_bucket" {
    #args
    bucket = "${var.my_env}-terra-bucket-multi-env"
    tags = {
      Name = "${var.my_env}-terra-bucket-multi-env"
      environment = var.my_env
    }
}