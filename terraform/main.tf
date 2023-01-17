provider "aws" {
  region = "us-east-1"
}
resource "aws_security_group" "alb_security_group"{
  name="alb security group"
  ingress {
    from_port=22
    to_port=22
    protocol="tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description="ssh access"

}
  egress {
    from_port=0
    to_port=0
    protocol="-1"
    cidr_blocks=["0.0.0.0/0"]
  }

  tags={
    name="alb_security_group"
  }
}