resource "aws_route53_record" "this" {
  count = var.route53_recod_name != "" && var.route53_recod_zone_id != "" ? 1 : 0

  ttl     = var.aws_route53_ttl
  name    = var.route53_recod_name
  type    = var.route53_recod_type
  zone_id = var.route53_recod_zone_id
  records = [aws_eip.this[0].public_ip]
}
