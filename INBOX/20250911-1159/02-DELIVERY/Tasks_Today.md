# Tasks Today
- NVIDIA Docker runtime настроен и валидиран с `nvidia-smi` в контейнер.
- Dev контейнер стартира (sleep infinity) и в него: venv, `pip install -e .[dev]`, pyoqs/liboqs сборка.
- Генерирани Kyber768 ключове за smoke тестове; добавен session-level export за `FORITECH_SK`.
- `pytest -q -m "not requires_oqs"` зелено; разширени smoke тестове за CLI и SPKI поток.
