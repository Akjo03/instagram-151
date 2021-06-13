# Quick Note 2

## 1 Technologien

## 1.1 Flash-Meldungen im Rails
Flash-Meldungen sind Nachrichten, welche dem User bestimmte Informationen mitteilen. Diese Flash-Meldungen können durch selbst definierte Aktionen ausgelöst werden. In Rails ist Flash eine Helfer-Methode mit der man mit diesen Nachrichten arbeiten kann.

### 1.1.1 Anwendung
In Rails kann eine Flash-Nachricht ganz einfach eingesetzt werden:
```ruby
class FlashController < ApplicationController
    def index
        flash[:alert] = "Das Passwort muss mindestens 6 Zeichen lang sein!"
    end
end
```

Und um diese Flash-Nachricht anzuzeigen kann folgendes in einer View eingefügt werden.
```erb
<p><%=flash[:alert] %></p>
```

In unserem Projekt brauchen wir ja das Gem "devise" welches schon vorgefertigte Flash-Meldungen besitzt. Diese haben folgende Typen:

- success
- notice
- alert
- error

### 1.1.2 Vor- und Nachteile

#### 1.1.2.1 Vorteile
- Einfach und schnelle Implementierung
- Verschieden Schreibweisen
- Einfache Implementation für die Validierung von Formularen

#### 1.1.2.2 Nachteile
- Flash-Nachrichten haben kein Standard-Design.


## 1.2 JavaScript Toaster-Meldungen
JavaScript Toaster-Meldungen sind sehr ähnlich zu Rails jedoch haben diese ein eingebautes Design. Diese "Toasts" erscheinen ganz einfach oben rechts als farbige Box welche die Meldung anzeigt. Diese Box verschwindet dann nach einiger Zeit wieder. Mit "Toastr" können die Eigenschaften der Toasts (Dauer, Animationen, usw.) ganz einfach angepasst werden.

### 1.2.1 Installation
Toaster ist an sich kein Gem und muss mit yarn installiert werden. Es benötigt dazu auch noch jQuery. Um Toastr zu installieren kann folgender Befehl benutzt werden:

```bash
yarn add toastr
```

Danach haben wir Toastr als Asset in unser Rails-Projekt mit [folgendem Eintrag](https://github.com/Akjo03/instagram-151/blob/fc147ee95b06340002bc5e9a28a3fb38fdae5b16/config/initializers/assets.rb#L9) eingebaut:

```ruby
Rails.application.config.assets.paths << Rails.root.join('node_modules')
```

Danach kann man Toastr innerhalb von Javascript mit [Folgendem Eintrag](https://github.com/Akjo03/instagram-151/blob/master/app/javascript/packs/application.js#L10) importiert werden...:

```js
global.toastr = require("toastr")
```

...und innerhalb von CSS mit [Folgendem Eintrag](https://github.com/Akjo03/instagram-151/blob/master/app/assets/stylesheets/application.scss#L17) importiert werden:

```css
@import "toastr/build/toastr.min";
```

Da wir ja mehrere Toasts gleichzeitig haben können müssen wir über alle Meldungen iterieren und diese jeweils mit dem entsprechenden Typ ausgeben. Dies macht man mit folgendem Script welches in diesem Instagram-Projekt in [dieser Partial View](https://github.com/Akjo03/instagram-151/blob/master/app/views/devise/shared/_devisemes.html.erb) liegt:

```erb
<% if flash.any? %>
    <script>
        <% flash.each do |key, value| %>
            <% type = key.to_s.gsub('alert', 'error').gsub('notice', 'success') %> 
            toastr.<%= type %>('<%= value %>')
        <% end %>
    </script>
<% end %>
```

## 1.3 Unterschied zwischen Flash-Meldungen und Meldungen des Models
Die einfachste Validierung in Rails sind die Validierungsregeln, welche in einem Model definiert sind. Diese Validierung gibt auch eine Meldung zurück, welche jedoch nicht direkt angeziegt werden.

### 1.3.1 Meldungen vom Model
Validierungsregeln können ganz einfach hinzugefügt werden. Hier eine Regel aus dem [User Model]()https://github.com/Akjo03/instagram-151/blob/master/app/models/user.rb#L7 im Instagram-Projekt:

```ruby
  validates :name, presence: true, length: { maximum: 50 }
```

Diese Regel überprüft ob ein Name angegeben wurde und ob er kleiner als 50 Zeichen gross ist.

### 1.3.2 Der Unterschied?

Flash-Meldungen sind grundsätzlich nur dazu da Meldungen anzuzeigen und Informationen weiterzuleiten. Meldungen vom Model sindnatürlich direkt ans Model gebunden und dienen auch noch zur Validierung.

## 1.4 Bootstrap Modal
Das Bootstrap Modal ist ein Element welches mit Bootstrap direkt mitgeliefert wird. Das Modal ist ein responsives und vielseitig anpassbares Pop-Up welches uns ermöglicht verschieden Dinge darin anzuzeigen. Das Modal besteht aus eine Header, Body und ein Footer.

### 1.4.1 Anwendung
In unserem Instagram-Projekt nutzen wir ein Modal um ein Menü bereitzustellen womit sich ein Benutzer abmelden kann oder sein Passwort ändern kann. Mit [folgendem Code](https://github.com/Akjo03/instagram-151/blob/master/app/views/users/show.html.erb#L17-L32) wurde dieses Menü umgesetzt:

```erb
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="list-group text-center">
                <a href="#" class="list-group-item list-group-item-action"> Change Password</a>
                <%= link_to "Log out", destroy_user_session_path, method: :delete, class: "list-group-item list-group-item-action" %>
                <a href="#" class="list-group-item list-group-item-action" data-dismiss="modal">Cancel</a>
            </div>
        </div>
    </div>
</div>
```

## 1.5 Gravatar für Benutzerbilder
Gravatar ist ein Online-Dienst, der es erlaubt einen persölichen Avatar oder ein Profilbild hochzuladen und diesen mit deiner E-Mail Adresse zu verknüpfen. Gravatar steht übrigens für "Globally Recognized Avatar".

### 1.5.1 Anwendung

## 1.6 Bilder hochladen mit CarrierWave


## 1.7 Bilder mit Cloudinary in der Cloud speichern


## 1.8 Mit Figaro sensitive Informationen verstecken


## 2 Selbstreflexion

### 2.1 Was habe ich gelernt und was wusste ich bereits?
Ich kannte eigentlich in diesen beiden Arbeitsblättern noch gar nichts. Flash-Meldungen und Toastr kannte ich vorher noch gar nicht. Vorallem Toastr könnte ich in meinen eigenen Projekten definitv gebrauchen.
Bootstrap kannte ich zwar schon vorher, jedoch das Modal-Element noch gar nicht.
Gravatar und CarrierWave, sowie Cloudinary waren auch alle neu für micht und sehen auch sehr interessant aus.
Figaro an sich kannte ich vorher auch noch nicht, jedoch die Idee, dass man sensitive Informationen (wie z.B. API-Keys) mit z.B. .env Dateien schützen kann war mir bekannt. Von daher war es auch gut zu wissen, dass dies mit Figaro auch in Rails möglich ist.

### 2.2 Wie bin ich beim Lernen vorgegangen und was waren die Schwierigkeiten?

Um ehrlich zu sein hat sich nicht all zu viel seit dem letzten Mal geändert. Das Projekt ist zwar toll nur sehe ich vieles was passiert nicht immer ganz ein. Die einzelnen Elemente machen zwar Sinn aber die Verknüpfungen dazwischen und wie Rails im Zusammenhang mit Ruby steht und wie alless aufgebaut ist, ist mir teilweise immer noch nicht klar und es gibt für mich nichts frustrierendes nicht zu wissen wieso genau, dass jetzt ein Element genau funktioniert.

### 2.3 Was kann ich beim nächsten Mal verbessern?
Meine Zeit könnte ich besser einplanen, damit ich nicht noch zuhause Dinge erledigen muss. Genau wie ich mich besser in der Lektion konzentrieren kann weiss ich noch nicht ganz genau. Es würde vielleicht auch helfen mit einem anderen Klassenmitglied die Dinge anzuschauen und gemeinsam uns auszutauschen.
## 3 Applikation (Dokumentation)

### 3.1 Posts-View

![(Bild) Posts-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/posts_view_12062021.png)

### 3.2 Profile-View

![(Bild) Profile-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/profile_view_12062021.png)

### 3.3 Profile-Edit-View

![(Bild) Profile-Edit-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/profile_edit_view_12062021.png)

### 3.4 Toast Error

![(Bild) Profile-Edit-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/toast_error_12062021.png)
