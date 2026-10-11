variable "load_balancer_certificates" {
  description = <<EOT
Map of load_balancer_certificates, attributes below
Required:
    - certificate_name
    - load_balancer_id
Optional:
    - ca_certificate
    - passphrase
    - private_key
    - public_certificate
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    certificate_name   = string
    load_balancer_id   = string
    ca_certificate     = optional(string)
    passphrase         = optional(string)
    private_key        = optional(string)
    public_certificate = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

