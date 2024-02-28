module "wrapper" {
  source = "../"

  for_each = var.items

  ami                                  = try(each.value.ami, var.defaults.ami, null)
  ami_ssm_parameter                    = try(each.value.ami_ssm_parameter, var.defaults.ami_ssm_parameter, "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2")
  associate_public_ip_address          = try(each.value.associate_public_ip_address, var.defaults.associate_public_ip_address, null)
  availability_zone                    = try(each.value.availability_zone, var.defaults.availability_zone, null)
  aws_route53_ttl                      = try(each.value.aws_route53_ttl, var.defaults.aws_route53_ttl, "300")
  capacity_reservation_specification   = try(each.value.capacity_reservation_specification, var.defaults.capacity_reservation_specification, {})
  cpu_core_count                       = try(each.value.cpu_core_count, var.defaults.cpu_core_count, null)
  cpu_credits                          = try(each.value.cpu_credits, var.defaults.cpu_credits, null)
  cpu_options                          = try(each.value.cpu_options, var.defaults.cpu_options, {})
  cpu_threads_per_core                 = try(each.value.cpu_threads_per_core, var.defaults.cpu_threads_per_core, null)
  create                               = try(each.value.create, var.defaults.create, true)
  create_eip                           = try(each.value.create_eip, var.defaults.create_eip, false)
  create_eni                           = try(each.value.create_eni, var.defaults.create_eni, false)
  create_iam_instance_profile          = try(each.value.create_iam_instance_profile, var.defaults.create_iam_instance_profile, false)
  create_sg                            = try(each.value.create_sg, var.defaults.create_sg, false)
  create_spot_instance                 = try(each.value.create_spot_instance, var.defaults.create_spot_instance, false)
  disable_api_stop                     = try(each.value.disable_api_stop, var.defaults.disable_api_stop, null)
  disable_api_termination              = try(each.value.disable_api_termination, var.defaults.disable_api_termination, null)
  ebs_block_device                     = try(each.value.ebs_block_device, var.defaults.ebs_block_device, [])
  ebs_optimized                        = try(each.value.ebs_optimized, var.defaults.ebs_optimized, null)
  enable_volume_tags                   = try(each.value.enable_volume_tags, var.defaults.enable_volume_tags, true)
  enclave_options_enabled              = try(each.value.enclave_options_enabled, var.defaults.enclave_options_enabled, null)
  ephemeral_block_device               = try(each.value.ephemeral_block_device, var.defaults.ephemeral_block_device, [])
  get_password_data                    = try(each.value.get_password_data, var.defaults.get_password_data, null)
  hibernation                          = try(each.value.hibernation, var.defaults.hibernation, null)
  host_id                              = try(each.value.host_id, var.defaults.host_id, null)
  iam_instance_profile                 = try(each.value.iam_instance_profile, var.defaults.iam_instance_profile, null)
  iam_role_description                 = try(each.value.iam_role_description, var.defaults.iam_role_description, null)
  iam_role_name                        = try(each.value.iam_role_name, var.defaults.iam_role_name, null)
  iam_role_path                        = try(each.value.iam_role_path, var.defaults.iam_role_path, null)
  iam_role_permissions_boundary        = try(each.value.iam_role_permissions_boundary, var.defaults.iam_role_permissions_boundary, null)
  iam_role_policies                    = try(each.value.iam_role_policies, var.defaults.iam_role_policies, {})
  iam_role_tags                        = try(each.value.iam_role_tags, var.defaults.iam_role_tags, {})
  iam_role_use_name_prefix             = try(each.value.iam_role_use_name_prefix, var.defaults.iam_role_use_name_prefix, true)
  ignore_ami_changes                   = try(each.value.ignore_ami_changes, var.defaults.ignore_ami_changes, false)
  instance_initiated_shutdown_behavior = try(each.value.instance_initiated_shutdown_behavior, var.defaults.instance_initiated_shutdown_behavior, null)
  instance_tags                        = try(each.value.instance_tags, var.defaults.instance_tags, {})
  instance_type                        = try(each.value.instance_type, var.defaults.instance_type, "t3.micro")
  ipv6_address_count                   = try(each.value.ipv6_address_count, var.defaults.ipv6_address_count, null)
  ipv6_addresses                       = try(each.value.ipv6_addresses, var.defaults.ipv6_addresses, null)
  key_name                             = try(each.value.key_name, var.defaults.key_name, null)
  launch_template                      = try(each.value.launch_template, var.defaults.launch_template, {})
  maintenance_options                  = try(each.value.maintenance_options, var.defaults.maintenance_options, {})
  metadata_options = try(each.value.metadata_options, var.defaults.metadata_options, {
    "http_endpoint"               = "enabled"
    "http_put_response_hop_limit" = 1
    "http_tokens"                 = "optional"
  })
  monitoring                          = try(each.value.monitoring, var.defaults.monitoring, null)
  name                                = try(each.value.name, var.defaults.name, "")
  network_interface                   = try(each.value.network_interface, var.defaults.network_interface, [])
  placement_group                     = try(each.value.placement_group, var.defaults.placement_group, null)
  private_dns_name_options            = try(each.value.private_dns_name_options, var.defaults.private_dns_name_options, {})
  private_ip                          = try(each.value.private_ip, var.defaults.private_ip, null)
  root_block_device                   = try(each.value.root_block_device, var.defaults.root_block_device, [])
  route53_recod_name                  = try(each.value.route53_recod_name, var.defaults.route53_recod_name, "")
  route53_recod_type                  = try(each.value.route53_recod_type, var.defaults.route53_recod_type, "A")
  route53_recod_zone_id               = try(each.value.route53_recod_zone_id, var.defaults.route53_recod_zone_id, "")
  secondary_private_ips               = try(each.value.secondary_private_ips, var.defaults.secondary_private_ips, null)
  sg_rules                            = try(each.value.sg_rules, var.defaults.sg_rules, {})
  source_dest_check                   = try(each.value.source_dest_check, var.defaults.source_dest_check, null)
  spot_block_duration_minutes         = try(each.value.spot_block_duration_minutes, var.defaults.spot_block_duration_minutes, null)
  spot_instance_interruption_behavior = try(each.value.spot_instance_interruption_behavior, var.defaults.spot_instance_interruption_behavior, null)
  spot_launch_group                   = try(each.value.spot_launch_group, var.defaults.spot_launch_group, null)
  spot_price                          = try(each.value.spot_price, var.defaults.spot_price, null)
  spot_type                           = try(each.value.spot_type, var.defaults.spot_type, null)
  spot_valid_from                     = try(each.value.spot_valid_from, var.defaults.spot_valid_from, null)
  spot_valid_until                    = try(each.value.spot_valid_until, var.defaults.spot_valid_until, null)
  spot_wait_for_fulfillment           = try(each.value.spot_wait_for_fulfillment, var.defaults.spot_wait_for_fulfillment, null)
  subnet_id                           = try(each.value.subnet_id, var.defaults.subnet_id, null)
  tags                                = try(each.value.tags, var.defaults.tags, {})
  tenancy                             = try(each.value.tenancy, var.defaults.tenancy, null)
  timeouts                            = try(each.value.timeouts, var.defaults.timeouts, {})
  user_data                           = try(each.value.user_data, var.defaults.user_data, null)
  user_data_base64                    = try(each.value.user_data_base64, var.defaults.user_data_base64, null)
  user_data_replace_on_change         = try(each.value.user_data_replace_on_change, var.defaults.user_data_replace_on_change, null)
  volume_tags                         = try(each.value.volume_tags, var.defaults.volume_tags, {})
  vpc_id                              = try(each.value.vpc_id, var.defaults.vpc_id, "")
  vpc_security_group_ids              = try(each.value.vpc_security_group_ids, var.defaults.vpc_security_group_ids, null)
}
