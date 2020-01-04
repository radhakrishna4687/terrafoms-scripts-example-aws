variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-04763b3055de4860b" #ubuntu Server 16.04 LTS 
    us-east-2 = "ami-0d5d9d301c853a04a" #ubuntu 
    us-west-1 = "ami-0dd655843c87b6930"
    us-west-2 = "ami-06d51e91cea0dac8d"
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
    description =  "Run the EC2 Instance in these Aviliabliity zones"
    type = "list"
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "envirolment"  { default = "dev" }  
variable "instance_type" {
    type = "map"
    default = {
        dev = "t2.micro"
        test = "t2.nano"
        prod = "t2.medium"
    }
}

