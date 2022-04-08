resource "aws_vpc" "pavan-vpc" {
	cidr_block = "21.21.0.0/16"
	instance_tenancy = "default"
	tags = {
		Name="pavan-vpc"
	}
}

resource "aws_internet_gateway" "pavan-gateway" {
	vpc_id = "${aws_vpc.pavan-vpc.id}"
	tags = {
		Name="pavan-gateway"
	}
}

resource "aws_route" "pavan-route" {
	destination_cidr_block = "0.0.0.0/0"
	gateway_id = "${aws_internet_gateway.pavan-gateway.id}"
	route_table_id = "${aws_vpc.pavan-vpc.main_route_table_id}"
}


