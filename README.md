# Klima Claro – Website (www.klima-claro.de)

Statische Website für Beratung, Montage-Konfigurator und Shop **Klimageräte ohne Montage**.

## Neu in diesem Paket

- Integrierte Startseite (`index.html`) mit Navigation und Abschnitt **Shop ohne Montage**
- Shop-Übersicht: `klimageraete-ohne-montage.html`
- 6 Produktdetailseiten (Mitsubishi Electric, Daikin, Toshiba)
- Bestellseite mit E-Mail-Fallback (`bestellen.html`)
- Widerrufsbelehrung (`widerruf.html`)
- Shop-Assets unter `assets/shop.css` und `assets/img/`
- Zahlung vorbereitet, aber **deaktiviert** (`payment-config.php`)

## Lokal prüfen

```bash
python3 -m http.server 8080
```

Dann öffnen:

- http://localhost:8080/
- http://localhost:8080/klimageraete-ohne-montage.html

## Upload zu IONOS (Live)

1. Bestehende `index.html` auf dem Webspace sichern.
2. Inhalt dieses Repositories in den Webordner von `klima-claro.de` hochladen.
3. **Wichtig:** Ordner `assets/` zusammenführen (nicht löschen). Bestehende Dateien wie `hisense-set.webp` behalten und nur `assets/shop.css` sowie `assets/img/` ergänzen.
4. `index.html` ersetzen.
5. Testen:
   - https://www.klima-claro.de/
   - https://www.klima-claro.de/klimageraete-ohne-montage.html
   - alle 6 Detailseiten und „Jetzt kaufen“
6. Online-Zahlung erst aktivieren, wenn Stripe eingerichtet ist.

## Hinweise vor Livegang

- Produktverfügbarkeit und Lieferzeiten aktuell halten
- Hersteller-/Bildnutzungsrechte prüfen (siehe `docs/`)
- Technische Daten bei Modellrevisionen gegen Herstellerdatenblätter abgleichen
- Zahlungsfunktion bleibt aus, bis Stripe-Testzahlungen laufen; bis dahin funktioniert die E-Mail-Anfrage

## Dokumentation

Siehe Ordner `docs/` für Upload-Hinweise, Herstellerquellen und Logo-Quellen.
Das Original-ZIP liegt unter `archive/`.
