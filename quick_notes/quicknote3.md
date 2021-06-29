# Quick Note 3

**Die dritte Quick Note ist immer noch nicht ganz fertig aber fast.**

## 1 Technologien

### 1.1 Icons von Font Awesome

Font Awesome ist ein Icon-Paket welches man ganz einfach in eine Rails-Applikation und auch in andere Web-Applikationen einbinden kann. Es gibt (Stand 29.06.2021) 1609 Icons welche gratis zur Verfügung stehen. Man kann wenn man jährlich zahlt auch auf bis zu 7800 Icons zugreifen.

### 1.1.1 Anwendung

Font Awesome kann ganz einfach hinzugefügt werden. Dazu muss man mit folgendem Kommando zuerst Font Awesome installieren:

```bash
yarn add @fortawesome/fontawesome-free
```

In der Datei `app/assets/stylesheets/application.scss` können dann [folgende Zeilen](https://github.com/Akjo03/instagram-151/blob/c63039f314f237e375adf0fcf29bbb203a33b252/app/assets/stylesheets/application.scss#L19-L23) hinzugefügt werden:

```scss
$fa-font-path: '@fortawesome/fontawesome-free/webfonts'; 
@import '@fortawesome/fontawesome-free/scss/fontawesome'; 
@import '@fortawesome/fontawesome-free/scss/regular'; 
@import '@fortawesome/fontawesome-free/scss/solid'; 
@import '@fortawesome/fontawesome-free/scss/brands';
```

Zusäzlich muss in der Datei `app/javascript/packs/application.js` muss die folgende Zeile hinzugefügt werden:

```js
import "@fortawesome/fontawesome-free"
```

Um ein Icon zu brauchen kann folgender HTML-Code verwendet werden:

```erb
<i class="fab fa-twitter fa-2x"></i>
```

Dieser Code fügt ein Twitter-Icon mit der zweiten Vergrösserungstufe in die HTML-Seite ein.

### 1.2 Icons von Font Awesome vs Core Sprites

-

### 1.3 Ihre Lösung für Likes aufführen

-

### 1.4 AJAX (Like-Funktion)

-

## 2 Selbstreflexion

### 2.1 Was habe ich gelernt? Was wusste ich bereits?

Das Einzige wass ich von den "Technologien" schon gekannt habe, war Font-Awesome. Alles andere war für mich bis dahin noch nicht bekannt.

### 2.2 Wie ich beim Lernen vorgegangen bin

Definitv besser als letztes Mal. Ich habe mehr Aufträge während der Lektion erledigt. Das hat mir leider in der letzten Lektion nicht viel geholfen, da ich den ganzen Fortschritt wieder verloren habe.

### 2.3 Was waren die Schwierigkeiten, wie konnte ich die lösen?

Mal davon abgesehen, dass mein ganzer Fortschritt verloren ging, gab es Schiwerigkeiten bei der Implementation der Like-Funktion. Aline konnte mir dann helfen und es hat dann geklappt. Das Problem war, dass in der Routes-Datei das `shallow: true` gefehlt hat.

### 2.4 Was habe ich nicht verstanden bzw. was konnte ich nicht lösen?

Wie genau dass die Like-Funktion im Endeffekt funktioniert bin ich mir immer noch nicht ganz sicher.

## 3 Selbstreflxion über das ganze Projekt

### 3.1 Was waren die wichtigsten neuen Technologien für mich?

Die wichtigsten neuen Technologien für mich waren sicherlich Toastr um einfach Meldungen in einer Web-Appliaktion einzubinden und Devise um ein einfaches Registrierungs/Login-System zu erstellen. Zusätzlich hat es mir auch sehr geholfen ein bisschen mehr Bootstrap anzuschauen, das ich es am Anfang nur so am Rande gekannt habe.

### 3.2 Wie bin ich vorgegangen beim Lernen bzw. Ausführen der Aufträge?

Nicht gerade sehr schlau da mich das Projekt auch nicht wahnsinnig gepackt hat und ich mich oft "zwingen" musste Aufträge abzuschliessen. Ansonsten nichts besondere. In den Lektionen Aufträge erledigt und zuhause abgeschlossen. Die QuickNotes habe ich oft auch zu spät angefangen und somit wurde ich oft auch nicht fertig.

### 3.3 Was waren generell die Schwierigkeiten, wie konnte ich die lösen?

Es gab eigentlich keine grossen Schwierigkeiten, das Modul war auch an sich recht einfach. Die grössten Schwierigkeiten waren die Zeitplanung und die Motivation. Die Zeitplanung hätte ich definitv verbessern können. Die Motivation jedoch nicht.

### 3.4 Funktioniert die Applikation in allen Bereichen wie gefordert?

Im Moment gerade noch nicht, jedoch hoffe ich, dass ich bis zum Ende des Moduls in zwei Wochen die Applikation fertig bringe. Bis zu QuickNote 2 funktioniert alles einwandfrei. Bis zu QuickNote 3 jedoch habe ich sehr viel Fortschritt verloren, da ich meine SmartLearn verloren hatte und vergessen habe mein Fortschritt auf GitHub zu speichern.

### 3.5 Bin ich in gewisssen Bereichen (bewusst) von der Vorgabe abgewichen?

Grundsätzlich nicht nein. Der Grund dazu ist auch wie schon oft die fehlende Motivation. Wenn ich vielleicht motivierter in das Projekt gestartet wäre und im Modul 133 von Anfang an dabei gewesen wäre, wäre es mir leichter gefallen die Motivation für das Projekt aufzubringen.

### 3.6 Was mache ich bei der nächsten Rails-Applikation besser oder anders?

Wenn ich jemals mich wieder für Rails entscheide dann muss ehrlich gesagt nicht viel anders laufen. Es muss einfach die Motivation da sein und es muss genug Zeit da sein um sich besser mit Ruby und Rails auseinanderzusetzen zu können.

## 4 Applikation (Dokumentation)

### 4.1 Posts-View

![(Bild) Posts-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/post_view.png)

### 4.2 Posts-View (Detail)

![(Bild) Posts-View (Detail)](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/post_detail_view.png)
