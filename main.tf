provider "aws" {
  secret_key = ""
  access_key = ""
  region = "us-west-1"
}
resource "aws_instance" "k8-M" {
  ami = "ami-0da7657fe73215c0c"
  instance_type = "t2.medium"
  key_name = "AksithApril24"
  tags = {
    Name = "Kmaster"
  }
}

resource "aws_instance" "k8-S1" {
  ami = "ami-0da7657fe73215c0c"
  instance_type = "t2.medium"
  key_name = "AksithApril24"
  tags = {
    Name = "Kslave"
  }
}
