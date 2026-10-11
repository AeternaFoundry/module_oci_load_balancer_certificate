resource "oci_load_balancer_certificate" "load_balancer_certificates" {
  for_each = var.load_balancer_certificates

  certificate_name   = each.value.certificate_name
  load_balancer_id   = each.value.load_balancer_id
  ca_certificate     = each.value.ca_certificate
  passphrase         = each.value.passphrase
  private_key        = each.value.private_key
  public_certificate = each.value.public_certificate

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

