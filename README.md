# AppAkademie CV-Template

Ein Lebenslauf, in Flutter erstellt.

## Konfiguration

Die Punkte des Lebenslaufes müssen in die [Config-Datei](lib/config/config.dart) eingetragen werden.

Das Avatar-Bild muss in den üblichen Ordner für Assets in Flutter gelegt werden ([assets/images/](assets/images/)) und `profile_picture.jpeg` heißen.

Die Icons der Programmiersprachen können im Ordner [assert/svg/](assets/svg/) verändert werden.

Das Favicon (Website Icon) kann mit diesem [Tutorial](https://samiaashraf.medium.com/how-to-add-favicon-to-a-flutter-web-app-fe719a1d5a34) verändert werden.

## Deployment über Firebase

Das Deployment der Website über Firebase kann mithilfe der [Firebase CLI](https://firebaseopensource.com/projects/firebase/firebase-tools/). Starte zunächst ein neues Projekt auf Firebase.

1. Melde dich mit deinem Google-Kontio bei Firebase an

```
firebase login
```

2. Installiere die Flutter-CLI

```
dart pub global activate flutterfire_cli
```

3. Initialisiere das Firebase Hosting Tool für deine Website

```
firebase init hosting
```

Bedenke dabei die Option `Do you want to use a web framework (experimental)?` mit `y` zu beantworten. Du solltest deinen Server-Host in `europe-west1 (Belgium)` konfigurieren. Github automatic deployments sollten zudem nicht aktiviert werden.

4. Starte den automatischen Deployment-Prozess

```
firebase deploy
```

Dieser Befehl sollte immer dann ausgeführt werden, wenn du eine neue Version der Website deployen willst. Sobald eine Hosting-URL erscheint kannst du deine Website anschauen!

In den Firebase Hosting Einstellungen kann die Domain von dir dann weiter konfiguriert werden.

## To-Do

- [x] Add Responsiveness
- [x] Refactor Theme
- [x] Rework Warnings
- [ ] Add Projects Tab
- [ ] Add Light Theme
