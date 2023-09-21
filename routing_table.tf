# Resource: aws route table 
#  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "public" {
    #The VPC ID 
    vpc_id = aws_vpc.main.id

    route {
        # CIDR block for the route 
        cidr_block= "0.0.0.0/0"

        #Identifier of a VPC internet gateway a virtual private gateway 
        gateway_id = aws_internet_gateway.main.id
    }

    # A map of tags to assign to the resource 
    tags ={
      Name = "Public"
    }
}

resource "aws_route_table" "private1" {
    #The VPC ID 
    vpc_id = aws_vpc.main.id

    route {
        # CIDR block for the route 
        cidr_block= "0.0.0.0/0"

        #Identifier of a VPC internet gateway a virtual private gateway 
        nat_gateway_id = aws_nat_gateway.gw1.id
    }

    # A map of tags to assign to the resource 
    tags ={
      Name = "Private1"
    }
}

resource "aws_route_table" "private2" {
    #The VPC ID 
    vpc_id = aws_vpc.main.id

    route {
        # CIDR block for the route 
        cidr_block= "0.0.0.0/0"

        #Identifier of a VPC internet gateway a virtual private gateway 
        nat_gateway_id = aws_nat_gateway.gw2.id
    }

    # A map of tags to assign to the resource 
    tags ={
      Name = "Private2"
    }
}