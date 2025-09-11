# DNS / Infra (skeleton)

> **Бележка:** Никакви секрети. Тук са само публични записи или TODO placeholders.

| Domain | Type | Name | Value | TTL | Notes |
|---|---|---|---|---:|---|
| forisec.eu | A | @ | TBD (статичен публичен IP) | 300 | прод (ако се публикува) |
| forisec.eu | AAAA | @ | (optional) | 300 |  |
| forisec.eu | CNAME | www | @ | 300 |  |
| forisec.eu | TXT | _github-pages-challenge-... | TBD | 300 | верификации/own. proof |
| forisecure.com | A | @ | TBD | 300 |  |
| forisecure.com | CNAME | www | @ | 300 |  |
| forisecure.com | TXT | _github-pages-challenge-... | TBD | 300 |  |

## Deployment notes
- Активирай HTTPS enforce. Ако ползваш GitHub Pages → включи HSTS в edge (или през reverse proxy).
- Използвай минимално‑достатъчен TTL (300s) докато тече миграция, после увеличи.
