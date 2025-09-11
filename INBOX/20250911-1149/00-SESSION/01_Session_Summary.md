# Session Summary

**Scope:** SSH hardening (8022/2022), UFW + fail2ban, backups (create/verify/restore), Git over SSH from server, rescue SFTP.

## Highlights
- SSH primary on **port 8022** with **public key only**; working (`Accepted publickey … ED25519 SHA256:liLXBX…`).
- SSH **rescue** on **port 2022** with password; operational. SFTP enabled for rescue.
- **UFW** active; inbound allowed (current): 8022, 2022, 8443 (limited to LAN ranges you prefer).
- **fail2ban** active; bans observed for Internet bots; jail `sshd` OK.
- **Backups** created; **SHA256 verified** locally; restore tested with OpenSSL flags matrix (PBKDF2/MD5).
- **Systemd timer** for backups enabled (03:15 EEST); timezone set to Europe/Sofia.
- **GitHub SSH from server** OK (pushed `test-ssh-ok` branch earlier).

## Open items
- Finish restore **decryption mode** decision (which KDF was used for the .enc on creation).
- Prune `authorized_keys` to only required entries (keep ED25519 SHA256: liLXBX…).
- Optional: narrow UFW to the minimal subnet when convenient.
- Prepare PKI/README/release notes bundle.
