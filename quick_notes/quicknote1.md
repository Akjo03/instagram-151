# Quick Note 1
## 1 Technologien
### 1.1 Bootstrap-Framework:
Bootstrap ist ein Open-Source Frontend Framework zur Erstellung von Websiten. Ursprünglich wurde das Framework von Twitter in 2010 entwickelt. Bootstrap enthält responsive Elemente wie z.B. Navigationselemente, Buttons, Grids und weitere Elemente. Bootstrap ist kostenlos und kann ganz einfach von [ihrer Website](https://getbootstrap.com/) oder über [Github](https://github.com/twbs/bootstrap) heruntergeladen werden.

#### 1.1.1 Installation:
Zuerst muss im Gemfile folgender Eintrag gemacht werden:
```ruby
gem 'bootstrap', '~> 4.0.0'
```
Danach kann man im Terminal mit folgendem Kommando das Bootstrap-Gem installieren.
```bash
$ bundle install
```

Zuletzt konnte ich am Anfang in der Haupt CSS-Datei (app/assets/stylesheets/application.scss) folgenden Eintrag hinzufügen:
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
Infos zur Navbar

#### 1.1.3 Vor- und Nachteile
##### 1.1.3.1 Vorteile:
* asdasdasdd
* asdasdasdasd

##### 1.1.3.2 Nachteile:
* asdasdasdasd
* asdasdasdad

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
* asdasdasdd
* asdasdasdasd

##### 1.2.4.2 Nachteile:
* asdasdasdasd
* asdasdasdad

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
