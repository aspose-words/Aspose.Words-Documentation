---
title: True installieren Schriftarten auf Linux in Java
second_title: Aspose.Words für Java
articleTitle: True installieren Schriftarten auf Linux
linktitle: True installieren Schriftarten auf Linux
description: "Aspose.Words für Java das Rendern eines erstellten Dokuments mit Microsoft Word auf einem Linux Maschine mit der besten Genauigkeit."
type: docs
weight: 20
url: /de/java/install-truetype-fonts-on-linux/
---

Meistens werden Sie verwenden Aspose.Words DOC- oder DOCX-Dokumente in PDF-Format umwandeln. Wenn Sie dies auf einer Linux Maschine, dieses Thema wird Ihnen helfen, zu lernen, wie man Aspose.Words macht Ihre Dokumente mit der besten Genauigkeit.

Am häufigsten wurden die DOC- und DOCX-Dokumente erstellt, die konvertiert werden müssen. Microsoft Word, auf einem Windows oder Betriebssystem Mac OS. Daher sind die meisten Schriftarten in DOC und DOCX-Dokumenten verwendet "Windows schriftarten" oder "Office schriftarten", das sind die mit Microsoft Windows oder Microsoft Büro. Diese Schriftarten umfassen Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings und viele andere.

Das Problem ist, daß `TrueType` Schriftarten, die oben aufgelistet sind, werden standardmäßig nicht installiert Linux Verteilungen. Wenn Sie ein typisches DOCX-Dokument nehmen, das mit der Cambria-Schrift formatiert ist und versuchen, es in PDF-Format auf konvertieren Linux, Aspose.Words wird eine andere Schriftart verwenden, weil Cambria nicht verfügbar ist. Dadurch wird das PDF-Dokument im Vergleich zum Original DOCX-Dokument anders aussehen. Um sicherzustellen, dass Dokumente von Aspose.Words so nah wie möglich zum Original erscheinen, müssen Sie installieren "Windows schriftarten" auf Ihrer Linux System.

Es gibt zwei Hauptwege, um TrueType Schriftarten auf einem Linux System:

- Kopieren Sie .TTF und. TTC-Dateien von einem Windows Maschine auf Ihre Linux Maschine
- Installieren eines `TrueType` Schriftpaket, wie *msttcorefonts*

## Schriftarten aus einem Windows Maschine

Eine einfache und schnelle Möglichkeit, TrueType Schriftarten auf einem Linux System ist zu kopieren. TTF und. TTC-Dateien aus dem `C:\Windows\Fonts` Verzeichnis auf einem Windows in ein Verzeichnis auf Ihrem Computer Linux Maschine. Sie müssen diese Schriftarten nicht installieren oder registrieren Linux in irgendeiner Weise; Sie müssen nur den Standort der Schriften mit der [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) Klasse in Aspose.Words.

{{% alert color="primary" %}}

Überprüfen Sie, ob eine Schriftlizenz erforderlich ist, und lesen Sie die EULA sorgfältig vor der Installation von MS Fonts auf jeder Linux Betriebssystem.

{{% /alert %}}

## Installieren Sie eine `TrueType` Schriften-Paket

Es gibt eine Reihe von Linux Verpackungen, enthaltend Microsoft TrueType Schriftarten, die Sie herunterladen und installieren können Linux Maschine. Die genauen Schritte können auf verschiedenen Linux Verteilungen.

- Auf Ubuntu, Verwenden Sie Synaptic Package Manager, um das *ttf-mscorefonts-installer*-Paket zu finden und zu installieren.
- Auf openSUSE verwenden Sie Yast2 → Software-Management, um die *fetchmsttfonts* Paket.
- Verwenden Sie Liberation Fonts, die unter OFL lizenziert sind, als Alternative zum Standard Windows Schriften: Arial, Times New Roman und Courier New.
- Für Schriftpakete geeignet für andere Linux Vertrieb, Suche verfügbare Dokumentation im Internet.

Nach der Installation des Pakets, Aspose.Words finden diese Schriften in den Ordnern auf Ihrem System und verwenden sie, wenn Sie mit Dokumenten arbeiten.

## Siehe auch

- Ja. [Liberation Fonts](https://github.com/liberationfonts) als Alternative zum Standard Windows Schriftarten
