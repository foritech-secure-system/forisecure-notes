# DNS / Infra (stubs)

> Fill actual values only after domains are purchased/confirmed.

## Records

| Domain | Type | Name | Value | Notes |
|---|---|---|---|---|
| forisec.eu | CNAME | notes | foritech-secure-system.github.io | GitHub Pages mapping (optional custom domain) |
| forisecure.com | CNAME | notes | foritech-secure-system.github.io | GitHub Pages mapping (optional custom domain) |
| forisec.eu | TXT | _github-pages-challenge-<hash> | <token> | Ownership verification (if using custom domain) |
| forisec.eu | TXT | _github-challenge-foritech-secure-system | <token> | Alternate verification |
| forisec.eu | A/AAAA | @ | <if needed> | Only if you host your own pages, otherwise CNAME is enough |

## Notes

- If `CNAME` is used, add the same host in repo root `CNAME` file.
- Keep `robots.txt` with `noindex` if you want it unlisted.
