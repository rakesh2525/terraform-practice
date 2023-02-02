#provider "aws" {
#  region     = "us-east-1"
 # access_key = "AKIARGLEBOVZZ6FPC4LS"
 # secret_key = "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"
  #}

  resource "aws_instance" "server" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.micro"
  count = 1
  subnet_id     = "subnet-0e840103ecf3bcce1"
  security_groups = ["sg-0bb59e1542ef3d0d8"]
  key_name      = "rakesh"

  tags = {
    Name = "terr-server"
  }
}