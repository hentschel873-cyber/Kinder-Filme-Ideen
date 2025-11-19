# Kinder-Filme-Ideen

[![Node CI](https://github.com/hentschel873-cyber/Kinder-Filme-Ideen/actions/workflows/ci-node.yml/badge.svg)](https://github.com/hentschel873-cyber/Kinder-Filme-Ideen/actions/workflows/ci-node.yml)

Kurzbeschreibung
-----------------
Dieses Repository enthält ein kleines statisches Frontend zum Sammeln und Verwalten von Ideen für Kinderfilme. Ziel ist ein einfacher Einstieg für Entwickler und Mitwirkende, um Ideen lokal zu testen und zu erweitern.

Erste Schritte
--------------
Die folgenden Anweisungen helfen dir, das Projekt lokal zum Laufen zu bringen.

Voraussetzungen
---------------
- Node.js (LTS empfohlen) — nur erforderlich, wenn du die npm‑Skripte nutzen möchtest.
- `git` zum Klonen des Repositories.

Installation
------------
1. Repository klonen:

```powershell
git clone https://github.com/hentschel873-cyber/Kinder-Filme-Ideen.git
cd Kinder-Filme-Ideen
```

2. (Optional) Abhängigkeiten installieren, falls `package.json` genutzt wird:

```powershell
npm install
```

Lokaler Entwicklungsserver
--------------------------
Für ein einfaches statisches Hosting ohne Build‑Tool kannst du `http-server` verwenden:

```powershell
npx http-server . -p 8080 -c-1
# öffne danach http://localhost:8080
```

Wenn das Projekt mit Vite eingerichtet ist, nutze alternativ:

```powershell
npm run dev
```

Projektstruktur (wichtigste Dateien)
----------------------------------
- `index.html` — Einstiegspunkt der Anwendung
- `main.js` — DOM‑Wiring und Initialisierung
- `counter.js` — Beispiel‑Logik für die Zählerfunktion
- `style.css` — Basis‑Styling

Verwendung / Testen
-------------------
- Starte lokal den Server (siehe oben) und öffne `http://localhost:8080`.
- Änderungen an `*.js` / `*.css` kannst du direkt im Browser prüfen (kein Build‑Schritt nötig für einfache Änderungen).

Linting & Tests (falls eingerichtet)
----------------------------------
Wenn `package.json` Lint‑ und Test‑Skripte enthält, kannst du diese wie folgt ausführen:

```powershell
npm run lint
npm run test
```

Beitrag (Contributing)
----------------------
Wir freuen uns über Beiträge. Kurze Anleitung:

1. Forke das Projekt.
2. Erstelle einen Feature‑Branch:

```sh
git checkout -b feature/meine-idee
```

3. Committe deine Änderungen mit aussagekräftigen Nachrichten:

```sh
git commit -m "feat: Beschreibung der Änderung"
```

4. Push und erstelle einen Pull Request gegen den Branch `main`.

Hinweis zu sensiblen Daten
-------------------------
Committe niemals Geheimnisse (API‑Keys, Service‑Account‑JSONs, OAuth‑Tokens). Wenn du solche Dateien findest, informiere den Repo‑Owner und entferne sie aus der Historie bevor du pushst.

Kontakt / Support
-----------------
Bei Fragen oder Problemen öffne bitte ein Issue oder kontaktiere den Repo‑Owner `hentschel873-cyber`.

Lizenz
------
Wenn keine Lizenzdatei vorhanden ist, gilt standardmäßig kein öffentliches Nutzungsrecht — erwäge eine Lizenz hinzuzufügen (z. B. `MIT`).

---

Diese README ersetzt die Platzhalternotiz durch sinnvolle Anweisungen zum Setup, Testen und Beitragen.

## Beispiele

Siehe docs/EXAMPLES.md für Beispielskripte (Telegram‑Bot, Windows‑Service‑Installationsskript, CI).

