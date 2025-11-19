#!/usr/bin/env python3
"""
examples/telegram_bot.py

Minimalbeispiel für `python-telegram-bot` (v20+, asyncio).

Vor dem Start muss die Umgebungsvariable `TELEGRAM_TOKEN` gesetzt werden:

```powershell
$env:TELEGRAM_TOKEN = "<your-token-here>"
python .\examples\telegram_bot.py
```

Dieses Skript ist bewusst sehr klein gehalten — es zeigt, wie man einen CommandHandler
für `/start` registriert und den Bot im Polling‑Modus startet.
"""

import os
from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes


async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    await update.message.reply_text("Hallo! Ich bin ein Beispiel‑Bot für das Projekt.")


def main() -> None:
    token = os.environ.get("TELEGRAM_TOKEN")
    if not token:
        print("Fehler: TELEGRAM_TOKEN ist nicht gesetzt. Bitte setze die Umgebungsvariable.")
        return

    app = ApplicationBuilder().token(token).build()
    app.add_handler(CommandHandler("start", start))

    print("Bot läuft — /start im Chat senden. Strg+C zum Beenden.")
    app.run_polling()


if __name__ == "__main__":
    main()
