resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t3.micro"
  
  tags = {
    Name = "dev"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.name
  description = "Allow TLS inbound traffic"
 

ingress { 
    description      = var.description
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
 }

  ingress { 
    description      = var.description
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
 
  }

  tags = {
nanme = "manual"
  }
}
 