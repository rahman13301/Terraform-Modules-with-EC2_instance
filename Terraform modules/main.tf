provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./Terraform-Modules"
  ami_value="ami-0fa3fe0fa7920f68e"
  instance_type_value="t2.micro"
  subnet_id_value="subnet-05aff75cc18978861"
}
