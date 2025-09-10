# SYNC — Daily (2025-09-10)

## Today
- [ ] Close domain redirects (single-hop 301 to https)
- [ ] Pick canonical: **forisecure.com** (use consistently)
- [ ] Outline Patch 1–3 scope

## Now (in progress)
- DNS tidy-up @ OVH (forisec.eu → https 301)

## Next 3
1) Patch 1 — split issuer/web services (2 containers)
2) Patch 2 — PQC TLS profile + fallback
3) Patch 3 — Rotation + KPI evidence

## Blockers
- None (waiting a few minutes for DNS/SSL propagation occasionally)

## Decisions (latest)
- D23 (2025-09-10): Canonical domain = **forisecure.com**; *forisec.eu* → 301 https
- D22 (2025-09-10): Two-container architecture (issuer + web)

## Status snapshot
- Repo/branch/commit: (tbd on first push)
- Domains: *forisec.eu* → 301 https to *forisecure.com*
- Portal: EC proposal 101285505 (submitted)
- Containers: target = issuer + web

## Evidence/KPI (delta today)
- Set KPI table (handshake time; chain size; rotation time; interop runs)

## Done today
- Domains configured; Pages HTTPS OK; initial evidence PDFs prepared
