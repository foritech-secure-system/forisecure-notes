# Decisions

- 2025-09-10: Server-style (headless target) с Docker + NVIDIA runtime (runc default=nvidia).
- 2025-09-10: За dev — един дълго‑живеещ `dev` контейнер + `venv` вътре; тестове през `pytest`.
- 2025-09-10: `liboqs-python` компилиран локално, гарантиран Kyber768; pin по работеща комбинация.
- 2025-09-10: SSH за продукция; XRDP само при нужда; без публични портове по подразбиране.
