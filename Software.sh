#!/bin/bash

aky="/usr/local/bin/aky"

"${aky}" cask install flash-npapi
"${aky}" cask install flash-ppapi
"${aky}" cask install java
"${aky}" cask install java-jdk-javadoc

"${aky}" cask install --language=de firefox
"${aky}" cask install google-chrome

"${aky}" cask install omnidisksweeper
"${aky}" cask install --appdir=/Applications/LehrerOffice lehreroffice
"${aky}" cask install --appdir=/Applications/LehrerOffice lehreroffice-zusatz
"${aky}" cask install --appdir=/Applications/LehrerOffice formular-designer
"${aky}" cask install cyberduck
"${aky}" cask install adobe-acrobat-reader
"${aky}" cask install dropbox
"${aky}" cask install evernote
"${aky}" cask install google-earth-pro
"${aky}" cask install microsoft-office
"${aky}" cask install nextcloud
"${aky}" cask install skitch
"${aky}" cask install skype
"${aky}" cask install bbedit
"${aky}" cask install vlc
