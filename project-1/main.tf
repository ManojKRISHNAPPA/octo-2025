provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance-1" {
    ami = "ami-0df8c184d5f6ae949"
    instance_type = "t2.micro"
    security_groups = [ "default" ]
    key_name = "project"
    root_block_device {
      volume_size = 20
      volume_type = "gp2"
      delete_on_termination = true
    }
    tags = {
      Name = "grafana-server"
    }

}

resource "aws_instance" "instance-2" {
    ami = "ami-0df8c184d5f6ae949"
    instance_type = "t2.micro"
    security_groups = [ "default" ]
    key_name = "project"
    root_block_device {
      volume_size = 8
      volume_type = "gp2"
      delete_on_termination = true
    }
    tags = {
      Name = "Node-server"
    }

}