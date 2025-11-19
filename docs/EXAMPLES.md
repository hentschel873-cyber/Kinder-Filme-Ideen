# Beispiele

Dieses Verzeichnis enthält Beispiele und kurze Anleitungen zur Verwendung der im Projekt enthaltenen Skripte.

## Telegram Bot (Beispiel)

Datei: `examples/telegram_bot.py`

Kurzanleitung:

1. Setze das Bot‑Token als Umgebungsvariable `TELEGRAM_TOKEN`.
2. Starte das Beispiel:

```powershell
$env:TELEGRAM_TOKEN = "<dein-token-hier>"
python .\examples\telegram_bot.py
```

Sende im Telegram‑Chat `/start` — der Bot antwortet mit einer kurzen Begrüßung.

## Windows: Bot als Dienst (Beispiel)

Eine bequeme Art, den Bot automatisch bei Systemstart laufen zu lassen, ist ein geplanter Task. Siehe `scripts/install_windows_service.ps1`.

## Continuous Integration

Es gibt ein einfaches GitHub Actions‑Workflow (`.github/workflows/ci-python.yml`) das:

- Python prüft (Syntax + `flake8`) für Python‑Dateien unter `examples/`.
