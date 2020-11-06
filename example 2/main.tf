provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6A0YYZ47FJtgyv4wK+ya25+PHzn5JzS7hC72ebauoRYFi9DCpUzbLQBrlDPBBcBif2XFU2dZs3HIWzXmUTTFjhPvt0cPBY/pbmXX8AgdEz0I3sk++7XyC6J3cRpxbT6cgymZRgLgyxDbKzAoO3Rr0/KP8Zti/dk/4L4o9C38m0Cp33BkUrKdoQxqF3AbiPoql5RoLxTQBfQAPnnA15hSCVGGohSamxSm5SE/2npb1NielDWfDsn49ViUKWPAhXBMaZM5bGxNSgrnQH8xDpD0GTJ20JqG0ys14l1EgadMxAp4w1/PPXb9Xw94/bTg0PnGoWh+GnH8eOHC44JYHGu5D centos@Bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion-key"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
