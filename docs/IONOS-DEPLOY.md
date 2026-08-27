# IONOS Deploy – www.klima-claro.de

## Status (Stand Repo)

Im Git-Repo ist die **komplette Site** inkl. Shop und gespiegelter Live-Seiten.

Auf dem Live-Server fehlt der Shop noch:

| URL | Live |
|-----|------|
| `/` | online (ältere Startseite ohne Shop) |
| `/klimageraete-ohne-montage.html` | **404** |
| `/assets/shop.css` | **404** |
| `/assets/img/*` | **404** |
| Marken-/Regionsseiten | online |

## Upload (empfohlen)

1. Im IONOS File-Manager / FTP die aktuelle Live-`index.html` sichern.
2. Den Inhalt dieses Repositories in den Webroot hochladen.
3. Ordner `assets/` **zusammenführen** (nicht löschen):
   - bestehende Dateien behalten (`hisense-set.webp` usw.)
   - `assets/shop.css` und `assets/img/` ergänzen
4. Neue HTML-Dateien hochladen (Shop, Bestellung, Produktdetails).
5. `index.html` ersetzen (enthält Shop-Abschnitt + Navigation).
6. Testen:
   - https://www.klima-claro.de/
   - https://www.klima-claro.de/klimageraete-ohne-montage.html
   - ein Produktdetail → „Jetzt kaufen“
   - Markenseiten und Regionsseiten

## Nicht überschreiben / beachten

- `docs/` und `archive/` müssen nicht live.
- `payment-config.php` kann mit hoch, Zahlung bleibt deaktiviert.
- Stripe erst aktivieren, wenn Testzahlungen laufen.

## Optional: Deploy-ZIP

```bash
bash scripts/make-deploy-zip.sh
```

Erzeugt `archive/klima-claro-ionos-deploy.zip` ohne `docs/`, `.git` und Hilfsskripte.
