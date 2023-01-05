# Terraform + Gandi + Fastmail

A Terraform module to provision [Gandi] with DNS records for [FastMail*].

(*Note*: Links marked with `*` are referral links)

## Requirements

- Terraform `>= 1.3.6`
- A [FastMail*] account with a configured domain
- A [Gandi] account

## Module input variables

- `domain` The domain to configure
- `ttl`
  - Time-to-live duration for all DNS records
  - **Default**: `10800`
- `enable_subdomain_email_support`
    - Create DNS entries to recieve mails send to subdomains
    - **Default**: `false`
- `enable_email_autodiscovery`
     - Create DNS entries for client email auto-discovery
     - **Default**: `true`
- `enable_carddav_autodiscovery`
    - Create DNS entries for client CardDAV auto-discovery
    - **Default**: `true`
- `enable_caldav_autodiscovery`
  - Create DNS entries for client CalDAV auto-discovery
  - **Default**: `true`

## Example

```tf
module "fastmail-records" {
  source = "michaelcontento/fastmail-records/gandi"

  domain = "example.com"
}
```

## License

MIT licensed, see [LICENSE.md](./LICENSE.md) for full details.

  [Gandi]: https://www.gandi.net/
  [FastMail*]: https://ref.fm/u16138225
