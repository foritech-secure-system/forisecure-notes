# Decisions (latest)
- Keep **/16** LAN allow rules for 8022/2022/8443 **for now** (mobility across 192.168.*).
- Maintain **rescue SSH** on port **2022** with password + SFTP (for break-glass and transfers).
- Primary SSH **8022** stays **public-key only**.
- Backup timer at **03:15 EEST**; timezone Europe/Sofia confirmed.
- Health/hygiene before feature work; no secrets in VCS.
