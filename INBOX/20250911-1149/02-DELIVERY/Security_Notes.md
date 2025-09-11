# Security Notes (operational)
- SSH 8022: `PubkeyAuthentication yes`, passwords disabled; ED25519 keys.
- SSH 2022 (rescue): password allowed; SFTP enabled; limited to LAN via UFW.
- UFW: inbound limited to LAN; explicit ports only.
- fail2ban: `sshd` jail active (ports `8022,2022`), bans observed; logs monitored.
- File perms: `~/.ssh` 700, `authorized_keys` 600, home not group-writable.
- Backups: encrypted (`*.tgz.enc`) + `*.sha256`; **no secrets** committed.
- Audit: log sample shows accepted publickey for the desktop ED25519 key; bot probes blocked/banned.
