# Changes (latest working state)

## SSH
- Primary daemon: Port 8022; `PubkeyAuthentication yes`, `PasswordAuthentication no`, `PermitRootLogin no`.
- Rescue daemon: Port 2022; password enabled; **SFTP enabled** via `Subsystem sftp /usr/lib/openssh/sftp-server`.
- `~/.ssh/authorized_keys`: owner-only perms (600), directory (700).

## Firewall / Hardening
- UFW allow (LAN): 8022/tcp, 2022/tcp, 8443/tcp; default deny incoming, allow outgoing.
- fail2ban jail `sshd`: `maxretry=4`, `bantime=1h`, `findtime=10m`, ports `8022,2022`.

## Backups
- Snapshot + sealed archives written to `/tmp/*.tgz.enc` with corresponding `.sha256`.
- SHA256 validated on Windows Downloads dir (all OK).
- Restore: try **A)** `-pbkdf2 -iter 200000`, **B)** `-pbkdf2`, **C)** legacy `-md md5` (one of these matches creation mode).

## Git
- From server repo `foritech-secure-system`: tested push via `origin` (GitHub) using dedicated key; OK.
