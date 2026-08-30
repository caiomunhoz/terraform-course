resource "aws_subnet" "subnet" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "tf-subnet-module-vpc"
  }
}