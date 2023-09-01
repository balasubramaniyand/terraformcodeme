terraform{
    required_providers {
      aws ={
        source ="hashicorp/aws"
        version = "~>3.0"
      }
    }
}
provider "aws" {
    region="ap-southeast-1"
  
}

resource "aws_instance" "bala" {
    ami ="ami-0464f90f5928bccb8"
    instance_type = "t2.micro"
    count = 5
    tags={
        "Name" = "bala-$(count.index)" # calling the values count
    }
  
}
