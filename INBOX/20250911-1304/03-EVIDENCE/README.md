# Evidence Verification (sync 20250911-1304)

## 1) Verify ZIP integrity
sha256sum -c sync_20250911-1304.zip.sha256.txt

## 2) Re-run secret scan (high-signal)
bash scripts/secret-scan.sh INBOX/20250911-1304

## 3) DIGITAL eReceipt
Proposal ID: 101285505 (FPQCX509-TRL7)
Timestamp: 2025-09-11T05:23:05+02:00
(Reference: eReceipt_DIGITAL_20250911.txt)

## 4) Optional: verify proposal PDF hash (if provided)
# Put SHA256 here once available:
# Proposal-SEP-211235943.pdf  SHA256=<TBD>
