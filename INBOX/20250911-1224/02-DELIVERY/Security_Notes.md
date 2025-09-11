# Security Notes (public-safe)

- **DNSSEC:** enable on all registrars where supported; verify via `dnsviz.net`.
- **HTTPS:** force HTTPS (301), enable HSTS (`max-age>=180d; includeSubDomains; preload` when ready).
- **TLS:** modern ciphers only; prefer TLS 1.3; disable legacy.
- **Secrets hygiene:** never commit `.key`, `.pem`, `.p12`, `.jks`, `.env`, tokens; add rules in `.gitignore` and pre-commit.
- **Rotation:** document key/cert rotation windows (e.g., 90 days leaf, 1y intermediate demo).
- **Backups:** offsite encrypted snapshots; test restore.
