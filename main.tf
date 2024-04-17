data "aws_vpc" "default_vpc" {
  default = true

}
data "aws_subnet_ids" "default_subnet" {
  vpc_id = data.aws_vpc.default_vpc.id

}

resource "aws_instance" "instanceweb1" {
    ami = var.ami
    instance_type = var.instance_type
  
}

resource "aws_instance" "instanceweb2" {
    ami = var.ami
    instance_type = var.instance_type
  
}
resource "aws_security_group" "webinstances" {
    name = "web_instances_security_group"
  
}

resource "aws_s3_bucket" "bucket" {
    
  
}