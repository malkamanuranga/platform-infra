resource "aws_security_group" "web" {
  name        = "${var.name}-web"
  description = "Web tier security group"
  vpc_id      = var.vpc_idd

  ingress {
    description = "HTTPS from allowed ranges"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }

  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, { Name = "${var.name}-web" })
}
