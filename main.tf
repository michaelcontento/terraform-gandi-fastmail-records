resource "gandi_livedns_record" "mx" {
  zone   = var.domain
  type   = "MX"
  name   = "@"
  values = [for idx, record in var.mx_records : "${(idx + 1) * 10} ${record}."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "mx_subdomain" {
  zone   = var.domain
  count  = var.enable_subdomain_email_support ? 1 : 0
  type   = "MX"
  name   = "*"
  values = [for idx, record in var.mx_records : "${(idx + 1) * 10} ${record}."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "spf" {
  zone   = var.domain
  type   = "TXT"
  name   = "@"
  values = ["\"v=spf1 include:spf.messagingengine.com ?all\""]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "dkim" {
  count  = 3
  zone   = var.domain
  type   = "CNAME"
  name   = "fm${count.index + 1}._domainkey"
  values = ["fm${count.index + 1}.${var.domain}.dkim.fmhosted.com."]
  ttl    = var.ttl
}
