# Security Notes

- **DNSSEC:** активирай при регистратор (ако е налично). Провери с `dnsviz.net`/`dnssec-debugger`.
- **HTTPS:** enforce + HSTS (минимум 6 месеца). Без mixed content.
- **Secrets hygiene (.gitignore):**
  ```gitignore
  # private keys / certs
  *.key
  *-key.pem
  *.p12
  *.pfx
  # env / tokens
  .env
  .env.*
  env/*.env
  secrets/**
  # dumps
  *.pcap
  *.dump
  ```
- **Ключове:** пази частните Kyber/X.509 ключове извън repo; ако се налага — използвай secret storage (Vault/1Password).
