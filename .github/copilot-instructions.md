<!-- Automatisch erzeugte Anleitung für KI-Codieragenten in diesem Repository -->
# Copilot-Anweisungen — Kinder-Filme-Ideen (deutsch)

Zweck
- Diese Datei gibt einer KI-Codierinstanz die notwendigen, handlungsorientierten Informationen, um in diesem kleinen Client-seitigen JS-Projekt schnell produktiv zu sein.

Großes Bild
- Das Repository ist ein sehr kleines Frontend ohne ersichtliches Framework — reine statische Dateien: JavaScript und CSS.
- Wichtige Quelldateien im Projektstamm: `counter.js`, `main.js`, `style.css`.
- Es wurde keine `package.json` oder ein Build-Tool im Repo gefunden. Die Dateien dürften direkt im Browser oder über einen statischen Webserver laufen.

Wichtige Dateien & Zuständigkeiten
- `main.js`: Einstiegspunkt und Verkabelung (Event-Listener, DOM-Initialisierung).
- `counter.js`: Kernlogik für die Zählerfunktion (Anwendungsspezifisches Verhalten).
- `style.css`: Gestaltung; rein visuelle Änderungen hier vornehmen.

Projektkonventionen und Muster
- Trenne Logik und DOM-Verkabelung: Implementiere Verhalten in `counter.js`, binde es in `main.js` an DOM-Elemente.
- Verwende direkte DOM-Selektoren (keine Framework-Abstraktionen).
- Keine neuen Build-Tools ohne Rückfrage einführen — Änderungen sollen minimal und lokal lauffähig bleiben.

Build / Ausführen / Testen (was sich aus dem Repo ergibt)
- Kein Build-/Test-Setup erkannt (keine `package.json`, kein `vite` o.ä.). Tests oder Bundling sind nicht vorhanden.
- Zum lokalen Testen kann ein einfacher statischer Server genutzt werden (z. B. `npx http-server .`), diese Hilfsabhängigkeit nicht automatisch ins Repo einfügen.

Bearbeiten & PR-Richtlinien für KI-Agenten
- Mache kleine, klar abgegrenzte Änderungen; jede PR sollte Zweck und geänderte Dateien knapp erklären.
- Wenn du Verhaltensänderungen vornimmst, passe `counter.js` und `main.js` zusammen an, damit die Verkabelung konsistent bleibt.
- Füge im PR eine kurze manuelle Prüf-Anleitung hinzu (z. B. welche Buttons klicken, welche DOM-Elemente beobachten).

Integration & externe Abhängigkeiten
- Es sind keine externen Integrationen oder Abhängigkeitsmanifeste im Repo erkennbar. Falls eine Änderung eine Bibliothek benötigt, begründe dies explizit im PR.

Konkrete Beispiele aus dem Repo
- Counter-Logik anpassen: `counter.js` — die Inkrement-/Dekrement-Funktionen anpassen und sicherstellen, dass `main.js` die Event-Handler weiterhin bindet.
- Nur Styling ändern: `style.css` bearbeiten; keine JS-Änderungen wenn möglich.

Fehlt etwas?
- Fehlt eine erwartete Datei (z. B. `index.html` oder `package.json`), vermerke das in der PR-Notiz und frage die Maintainer nach der bevorzugten Lauf-/Build-Variante.

Kontakt / Fragen an Maintainer
- Formuliere Fragen kurz und konkret in der PR-Beschreibung (z. B. "Soll ein Bundler hinzugefügt werden oder soll das Projekt statisch bleiben?").

--- Ende der Anleitung ---
