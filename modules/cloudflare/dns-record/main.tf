terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.3.0"
    }
  }
}

resource "cloudflare_dns_record" "terminalbaka_module_dns_record" {
  zone_id  = var.zone_id
  type     = var.type
  name     = var.name
  content  = var.content
  proxied  = var.proxied
  priority = var.priority
  ttl      = var.ttl
  comment  = var.comment
}