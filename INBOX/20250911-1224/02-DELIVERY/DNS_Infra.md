# DNS / Infra (skeleton)

> If not applicable, keep this brief section and note "TBD".

## Domains
- `forisec.eu` – **TBD**
- `forisecure.com` – **TBD**
- (Add others as needed)

## Records (example table)
| Domain | Type | Name | Value | TTL | Notes |
|--------|------|------|-------|-----|-------|
| forisecure.com | A | @ | <server IPv4> | 3600 | primary |
| forisecure.com | AAAA | @ | <server IPv6> | 3600 | if available |
| forisecure.com | CNAME | www | apex | 3600 | redirect or hosting |
| forisecure.com | TXT | @ | v=spf1 include:<provider> -all | 3600 | SPF |
| forisecure.com | TXT | _dmarc | v=DMARC1; p=quarantine; rua=mailto:postmaster@forisecure.com | 3600 | DMARC |
| forisecure.com | TXT | selector._domainkey | <DKIM public> | 3600 | DKIM |

## Hosting / Services
- Web/app host: **TBD**
- Object storage (docs/screenshots): **TBD**
- Monitoring/uptime: **TBD**
