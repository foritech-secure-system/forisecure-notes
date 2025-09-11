# Security Notes (HTTPS/HSTS/DNSSEC)

- **DNSSEC:** enable at registrar if available for the chosen domain(s).
- **HTTPS enforce:** GitHub Pages -> Enforce HTTPS (on) if using custom domain.
- **HSTS:** Add response header if hosting behind your own reverse proxy; GitHub Pages doesn't support custom headers.
- **.gitignore:** never commit credentials, private keys, .env, tokens, raw dumps.
