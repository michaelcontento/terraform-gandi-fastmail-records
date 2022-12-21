resource "gandi_livedns_record" "autodiscovery_smtp" {
  count  = var.enable_email_autodiscovery ? 1 : 0
  zone   = var.domain
  type   = "SRV"
  name   = "_submission._tcp"
  values = ["0 1 587 smtp.fastmail.com."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "autodiscovery_imaps" {
  count  = var.enable_email_autodiscovery ? 1 : 0
  zone   = var.domain
  type   = "SRV"
  name   = "_imaps._tcp"
  values = ["0 1 993 imap.fastmail.com."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "autodiscovery_pop3s" {
  count  = var.enable_email_autodiscovery ? 1 : 0
  zone   = var.domain
  type   = "SRV"
  name   = "_pop3s._tcp"
  values = ["0 1 995 pop.fastmail.com."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "autodiscovery_carddavs" {
  count  = var.enable_carddav_autodiscovery ? 1 : 0
  zone   = var.domain
  type   = "SRV"
  name   = "_carddavs._tcp"
  values = ["0 1 443 carddav.fastmail.com."]
  ttl    = var.ttl
}

resource "gandi_livedns_record" "autodiscovery_caldavs" {
  count  = var.enable_caldav_autodiscovery ? 1 : 0
  zone   = var.domain
  type   = "SRV"
  name   = "_caldavs._tcp"
  values = ["0 1 443 caldav.fastmail.com."]
  ttl    = var.ttl
}
