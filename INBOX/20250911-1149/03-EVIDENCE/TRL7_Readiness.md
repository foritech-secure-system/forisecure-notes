# TRL-7 Readiness (evidence snapshot)
**Goal:** Demonstrate prototype in an operational environment.
- Remote admin over SSH (key-based primary, password rescue) — **READY**.
- Network controls (UFW + fail2ban) — **READY**.
- Backup creation + checksum verification — **READY**.
- Backup **restore** (decrypt) — **PARTIAL** (awaiting exact KDF confirmation).
- GitOps path (server → GitHub over SSH) — **READY** (test branch `test-ssh-ok` earlier).
- Documentation set — **IN PROGRESS** (this SYNC package + upcoming PKI/README).
