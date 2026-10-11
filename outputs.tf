output "load_balancer_certificates_id" {
  description = "Map of id values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no id are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_certificates_ca_certificate" {
  description = "Map of ca_certificate values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no ca_certificate are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.ca_certificate if v.ca_certificate != null && length(v.ca_certificate) > 0 }
}
output "load_balancer_certificates_certificate_name" {
  description = "Map of certificate_name values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no certificate_name are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.certificate_name if v.certificate_name != null && length(v.certificate_name) > 0 }
}
output "load_balancer_certificates_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no load_balancer_id are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_certificates_passphrase" {
  description = "Map of passphrase values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no passphrase are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.passphrase if v.passphrase != null && length(v.passphrase) > 0 }
  sensitive   = true
}
output "load_balancer_certificates_private_key" {
  description = "Map of private_key values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no private_key are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.private_key if v.private_key != null && length(v.private_key) > 0 }
  sensitive   = true
}
output "load_balancer_certificates_public_certificate" {
  description = "Map of public_certificate values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no public_certificate are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.public_certificate if v.public_certificate != null && length(v.public_certificate) > 0 }
}
output "load_balancer_certificates_state" {
  description = "Map of state values across all load_balancer_certificates, keyed the same as var.load_balancer_certificates except keys with no state are omitted"
  value       = { for k, v in oci_load_balancer_certificate.load_balancer_certificates : k => v.state if v.state != null && length(v.state) > 0 }
}

