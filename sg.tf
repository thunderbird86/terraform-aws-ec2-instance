resource "aws_security_group" "this" {
  name        = format("%s-%s", var.name, "sg")
  description = "Allow tls/web/ssh inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = merge({ "Name" = var.name }, var.tags)
}

resource "aws_security_group_rule" "this" {
  for_each = { for k, v in var.sg_rules : k => v if var.create_sg }

  # Required
  security_group_id = aws_security_group.this.id
  protocol          = each.value.protocol
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  type              = each.value.type

  # Optional
  description              = try(each.value.description, null)
  cidr_blocks              = try(each.value.cidr_blocks, null)
  ipv6_cidr_blocks         = try(each.value.ipv6_cidr_blocks, null)
  prefix_list_ids          = try(each.value.prefix_list_ids, [])
  self                     = try(each.value.self, null)
  source_security_group_id = try(each.value.source_security_group_id, null)
}
