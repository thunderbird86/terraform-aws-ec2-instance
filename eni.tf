resource "aws_network_interface" "this" {
  count           = var.create_eni ? 1 : 0
  subnet_id       = var.subnet_id
  security_groups = [aws_security_group.this[0].id]

  attachment {
    instance     = aws_instance.this[0].id
    device_index = 1
  }

  tags = merge({ "Name" = var.name }, var.tags)

}

resource "aws_eip" "this" {
  count = var.create_eip ? 1 : 0

  tags = merge({ "Name" = var.name }, var.tags)

}

resource "aws_eip_association" "this" {
  count = var.create_eip ? 1 : 0

  instance_id   = aws_instance.this[0].id
  allocation_id = aws_eip.this[0].id
}
