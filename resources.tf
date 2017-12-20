resource "aws_security_group" "bastion" {
  name = "${var.env}-${var.name}"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

resource "aws_instance" "bastion" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = [
    "${aws_security_group.bastion.id}"
  ]
  subnet_id = "${var.subnet_id}"
  associate_public_ip_address = true

  tags = {
    Name = "${var.env}-bastion-server"
  }
}
