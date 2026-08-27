# Klima Claro – Website (www.klima-claro.de)

Statische Website für Beratung, Montage-Konfigurator und Shop **Klimageräte ohne Montage**.

## Enthalten

- Startseite (`index.html`) mit Konfigurator, Marken, Regionen und Abschnitt **Shop ohne Montage**
- Shop: `klimageraete-ohne-montage.html` + 6 Produktdetailseiten + `bestellen.html`
- Montage-Markenseiten: Hisense, Mitsubishi Electric, Daikin Sensira
- Regionsseiten: München, Ebersberg, Vaterstetten, Poing, Grafing, Markt Schwaben, Kirchseeon
- Inbetriebnahme, Widerruf, Impressum, Datenschutz, AGB
- Assets unter `assets/` (Produktbilder, Shop-CSS, Set-Bilder)
- Zahlung vorbereitet, aber **deaktiviert** (`payment-config.php`)

## Live-Status

Die Live-Domain läuft noch mit der älteren Startseite. Der Shop ist im Repo fertig, auf IONOS aber noch nicht hochgeladen (`/klimageraete-ohne-montage.html` → 404).

Siehe `docs/IONOS-DEPLOY.md`.

## Lokal prüfen

```bash
python3 -m http.server 8080
```

Dann öffnen:

- http://localhost:8080/
- http://localhost:8080/klimageraete-ohne-montage.html
- http://localhost:8080/hisense-klimaanlage.html
- http://localhost:8080/klimaanlage-muenchen.html

## Hinweise vor Livegang

- Produktverfügbarkeit und Lieferzeiten aktuell halten
- Hersteller-/Bildnutzungsrechte prüfen (siehe `docs/`)
- Technische Daten bei Modellrevisionen gegen Herstellerdatenblätter abgleichen
- Zahlungsfunktion bleibt aus, bis Stripe-Testzahlungen laufen; bis dahin funktioniert die E-Mail-Anfrage
