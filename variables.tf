variable "domain" {
  type = string
}

variable "mx_records" {
  type = list(string)

  default = [
    "in1-smtp.messagingengine.com",
    "in2-smtp.messagingengine.com",
  ]
}

variable "ttl" {
  type    = number
  default = 10800
}

variable "enable_subdomain_email_support" {
  type    = bool
  default = false
}

variable "enable_email_autodiscovery" {
  type    = bool
  default = true
}

variable "enable_carddav_autodiscovery" {
  type    = bool
  default = true
}

variable "enable_caldav_autodiscovery" {
  default = true
}
