# Changes since previous sync
- Добавен server-style bootstrap за dev node (headless target + XRDP опционално).
- Конфигуриран NVIDIA Docker runtime и валидиран с `nvidia/cuda:12.8.0-base-ubuntu24.04`.
- Добавени smoke тестове: `tests/smoke/test_cli_version.py`, `tests/smoke/test_x509_self_spki_info.py` (локално).
- Вписан workflow за автогенериране на Kyber768 ключове за тестове.
