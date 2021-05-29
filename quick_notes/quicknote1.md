# Quick Note 1
## 1 Technologien
### 1.1 Bootstrap-Framework:
Bootstrap ist ein Open-Source Frontend Framework zur Erstellung von Websiten. Ursprünglich wurde das Framework von Twitter in 2010 entwickelt. Bootstrap enthält responsive Elemente wie z.B. Navigationselemente, Buttons, Grids und weitere Elemente. Bootstrap ist kostenlos und kann ganz einfach von [ihrer Website](https://getbootstrap.com/), über [Github](https://github.com/twbs/bootstrap) oder direkt als Gem heruntergeladen werden.

#### 1.1.1 Installation:
Zuerst muss im Gemfile [folgender Eintrag](https://github.com/Akjo03/instagram-151/blob/94488d9f965bed6888bc1d4f933d3300f9379bf4/Gemfile#L59) gemacht werden:
```ruby
gem 'bootstrap', '~> 4.0.0'
```
Danach kann man im Terminal mit folgendem Kommando das Bootstrap-Gem installieren.
```bash
$ bundle install
```

Zuletzt konnte ich am Anfang in der Haupt CSS-Datei (app/assets/stylesheets/application.scss) [folgenden Eintrag](https://github.com/Akjo03/instagram-151/blob/94488d9f965bed6888bc1d4f933d3300f9379bf4/app/assets/stylesheets/application.scss#L16) hinzufügen:
```scss
@import "bootstrap";
```
#### 1.1.2 Elemente
##### 1.1.2.1 Grids:
Ein Grid ist ein zwölfspaltiges Layout, welches standardmässig von Bootstrap verwendet wird. Damit responsive Webseiten mit Grids möglich sind werden 4 Grössen zur Verfügung gestellt: Small (sm), Medium (md), Large (lg) und Extra Large (xl).

Hier ein Beispiel mit einer Reihe mit genau zwei Spalten (in der Mitte der Website getrennt):
```erb
<div class="row">
    <div class="col-lg-6 landing-left">
    	<!-- Code für linke Seite -->
    </div>
    <div class="col-lg-6 landing-right">
        <!-- Code für rechte Seite -->
    </div>
</div>
```
##### 1.1.2.2 Navbar:
Bootstrap stellt ein Navbar-Element zur Verfügung, welches fast immer an den Anfang einer Website gestellt wird. Diese kann natürlich (wie alles in Bootstrap) responsiv gebraucht werden. In ihr ethalten sind meistens das Logo der Website, Links zu den verschiedenen Unterseiten (teilweise auch mit Dropdown-Menü) und je nachdem auch einer Suchleiste.

Hier eine gekürtze Version der [Navbar](https://github.com/Akjo03/instagram-151/blob/94488d9f965bed6888bc1d4f933d3300f9379bf4/app/views/shared/_navbar.html.erb#L2-L25) in diesem Instagram-Klon (app/assets/views/shared/_navbar.html.erb):

```erb
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <%= link_to "Icon", root_path, class: "navbar-brand core-sprite hide-text"%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Suchleiste -->
            <ul class="navbar-nav ml-md-auto">
                <li class="nav-item">
                    <!-- Link zu einer Unterseite -->
                </li>
            </ul>
        </div>
    </div>
</nav>
```
#### 1.1.3 Vor- und Nachteile
##### 1.1.3.1 Vorteile:
* Weniger Aufwand für Designs (somit schnelleres entwickeln und mehr Zeit für Design)
* Mobilfreundlich und Unterstützung für alle bekannten Browser
* Open-Source und gratis

##### 1.1.3.2 Nachteile:
* Langsamere Website und längere Ladezeiten
* Sehr viele Websiten sehen sehr ähnlich aus

### 1.2 Authentifikation mit Devise
Devise ist ein Gem für Ruby on Rails, welche es ermöglicht schnell ein Authentifizierungs-System in eine Rails-Website einzubauen. Devise ist auch Open-Source und kann entweder über [Github](https://github.com/heartcombo/devise) oder direkt als Gem heruntergeladen werden.

#### 1.2.1 Installation
Um Devise zu installieren musste ich auch im Gemfile einen [neuen Eintrag](https://github.com/Akjo03/instagram-151/blob/fc147ee95b06340002bc5e9a28a3fb38fdae5b16/Gemfile#L58) hinzufügen:
```ruby
gem 'devise'
```

Danach konnte ich wieder mit folgendem Kommando das Gem installieren:
```bash
$ bundle install
```
...und mit einem weiteren Kommando die Funktionen von Devise installieren:
```bash
$ rails generate devise:install
```

Um die Installation abzuschliessen brauchte es noch 3 weitere Schrite:
**1.** [Folgender Eintrag](https://github.com/Akjo03/instagram-151/blob/fc147ee95b06340002bc5e9a28a3fb38fdae5b16/config/environments/development.rb#L41) in der Datei "config/environments/development.rb" erstellen:
```ruby
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
**2.** [Folgender Eintrag](https://github.com/Akjo03/instagram-151/blob/fc147ee95b06340002bc5e9a28a3fb38fdae5b16/app/views/layouts/application.html.erb#L14-L15) in der Datei "app/views/layouts/application.html.erb" hinzufügen, um Flash-Messages hinzuzufügen:
```erb
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```

**3.** Mit folgendem Kommando die Views von Devise installieren:
```bash
$ rails g devise:views
```

#### 1.2.2 Models
Infos zu den Models von Devise

#### 1.2.3 Views
Bei der Installation von den Devise-Views werden mehrere neue Ordner und Dateien angelegt (hauptsächlich im Ordner "app/views/devise").

#### 1.2.4 Vor- und Nachteile
##### 1.2.4.1 Vorteile
* noch nichts

##### 1.2.4.2 Nachteile:
* noch nichts

### 1.3 CSS Image-Sprites

### 1.4 Sass und SCSS vs. CSS

### 1.5 Partial Views

### 1.6 Rails Migrationen

## 2 Selbstreflexion
### 2.1 Was habe ich gelernt und was wusste ich bereits?
Vieles konnte ich vom Modul 133 mitnehmen. Daher wusste ich den generellen Aufbau einer Rails-Applikation schon, wusste wie man neue Views, Models, Controllers, etc. erstellt und konnte mich daher recht gut zurechtfinden (Obwohl ich Rails sehr unübersichtlich finde). 

Bootstrap war mir auch schon vorher bekannt und daher auch nichts Neues für mich, jedoch habe ich es bis jetzt nur selten gebraucht und konnte noch einige Dinge darüber lernen. Ich werde mir definitv angewöhnen müssen mehr Bootstrap für meine zukünftigen Web-Projekte zu nutzen.

Devise hingegen kannte ich noch gar nicht und konnte mich nach einiger Zeit recht gut damit anfreunden. Mir gefällt vorallem, dass man sehr schnell eine funktionierende Authorisierung einbauen konnte und werde Devise (wenn ich jemals mit Rails arbeiten werde) definitv wieder gebrauchen.

Partial Views kannte ich bis jetzt auch noch nicht. Das ist eigentlich ein sehr nützliches Feature welches ich sehr gerne bei weiteren Ruby-Projekten verwenden werde. Schade dass diese Funktionalität nicht auch einfach nativ bei HTML / CSS Code zur Verfügung steht.
### 2.2 Wie bin ich beim Lernen vorgegangen und was waren die Schwierigkeiten?
Um ganz ehrlich zu sein habe ich recht grosse Schwierigkeiten mit Ruby on Rails, da es mir zu unübersichtlich ist und sehr viel "willkürliches" passiert. Die Syntax von Ruby gefällt mir auch nicht. Es gibt natürlich auch gute Dinge wie z.B. die .erb Dateien welche es sehr einfach ermöglichen mehr Funktionalität in HTML-Dateien zu bringen aber ansonsten ist es für mich sehr schwierig Ruby on Rails zu lernen. Vorallem auch in der Home-Office Lektion konnte ich sehr schlecht Motivation aufbringen um weiter an der Rails-Applikation zu arbeiten, da der Aufbau für mich nicht wirklich Sinn ergibt und ich Mühe habe verschiedene Strukturen miteinander zu verbinden. Die App "Instagram" ist jedoch trotzdem ein sehr cooles Projekt und es macht jedes Mal Freude wieder einen weiteren Schritt nach vorne zu kommen.

### 2.3 Was habe ich nicht verstanden?
Das meisste habe ich bis jetzt eigentlich verstanden. Viele Verbindungen sind mir einfach nicht klar ersichtlich (z.B. wieso es jetzt pötzlich es eine "notice"-Variable oder eine "alert"-Variable gibt. Wo ist diese definiert? Was enthält diese genau?). Und leider ist das bei vielen Dingen in Ruby on Rails so und das ist teilweise sehr verwirrend. Die Grundprinzipien habe ich jedoch bis jetzt verstanden.

### 2.4 Was kann ich beim nächsten Mal verbessern?
Bin ich mir ehrlich gesagt nicht ganz sicher. Mir fehlt teilweise ein bisschen die Motivation weiter an Ruby zu lernen, da ich mir auch noch nicht ganz so sicher bin für was ich später Ruby alles brauchen kann... (klar für Webseiten aber klare Anwendungsfälle sind mir noch unklar). Ich sollte wahrscheinlich einfach mich besser probieren auf die Arbeit während der Lektion zu konzentieren.

## 3 Applikation (Dokumentation)
### 3.1 Login-View
![(Bild) Login-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/login_view_29052021.png)
### 3.2 Registrations-View
![Registrations-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/registration_view_29052021.png)
### 3.3 Home-View
![(Bild) Home-View](https://raw.githubusercontent.com/Akjo03/instagram-151/master/quick_notes/home_view_29052021.png)