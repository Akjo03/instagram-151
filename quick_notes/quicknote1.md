# Quick Note 1
## 1 Technologien
### 1.1 Bootstrap-Framework:
Bootstrap ist ein Open-Source Frontend Framework zur Erstellung von Websiten. Ursprünglich wurde das Framework von Twitter in 2010 entwickelt. Bootstrap enthält responsive Elemente wie z.B. Navigationselemente, Buttons, Grids und weitere Elemente. Bootstrap ist kostenlos und kann ganz einfach von [ihrer Website](https://getbootstrap.com/) oder über [Github](https://github.com/twbs/bootstrap) heruntergeladen werden.

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

Hier eine gekürtze Version der [Navbar](https://github.com/Akjo03/instagram-151/blob/94488d9f965bed6888bc1d4f933d3300f9379bf4/app/views/shared/_navbar.html.erb#L2-L25) in diesem Instagram-Klon (assets/views/shared/_navbar.html.erb):

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
Erklärung von Devise
#### 1.2.1 Installation
Installation

#### 1.2.2 Models
Infos zu den Models von Devise

#### 1.2.3 Views
Infos zu den Views von Devise

#### 1.2.4 Vor- und Nachteile
##### 1.2.4.1 Vorteile
* -

##### 1.2.4.2 Nachteile:
* -

### 1.3 CSS Image-Sprites

### 1.4 Sass und SCSS vs. CSS

### 1.5 Partial Views

### 1.6 Rails Migrationen

## 2 Selbstreflexion
### 2.1 Was habe ich gelernt und was wusste ich bereits?

### 2.2 Wie bin ich beim Lernen vorgegangen und was waren die Schwierigkeiten?

### 2.3 Was habe ich nicht verstanden?

### 2.4 Was kann ich beim nächsten Mal verbessern?

## 3 Applikation (Dokumentation)
### 3.1 Login-View

### 3.2 Registrations-View

### 3.3 Home-View
