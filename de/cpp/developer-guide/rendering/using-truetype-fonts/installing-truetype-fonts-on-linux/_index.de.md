---
title: TrueType-Schriftarten auf Linux in C++ installieren
second_title: Aspose.Words für C++
articleTitle: TrueType Schriftarten auf Linux installieren
linktitle: TrueType Schriftarten auf Linux installieren
description: "Aspose.Words für C++ ermöglicht das Rendern eines mit Microsoft Word erstellten Dokuments auf einem Linux-Computer mit der besten Genauigkeit. Kopieren Sie dazu Schriftartendateien von einem Windows-Computer oder installieren Sie ein `TrueType`-Schriftartenpaket auf Ihrem Linux-Computer."
type: docs
weight: 20
url: /de/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Meistens verwenden Sie Aspose.Words, um DOC - oder DOCX-Dokumente in das PDF -Format zu konvertieren. Wenn Sie dies auf einem Linux -Computer tun müssen, erfahren Sie in diesem Thema, wie Sie sicherstellen, dass Aspose.Words Ihre Dokumente mit der besten Genauigkeit wiedergibt.

Am häufigsten wurden die DOC- und DOCX-Dokumente, die konvertiert werden müssen, mit Microsoft Word auf einem Windows- oder Mac OS-Betriebssystem erstellt. Daher sind die meisten Schriftarten, die in DOC- und DOCX-Dokumenten verwendet werden, "Windows-Schriftarten" oder "Office-Schriftarten", dh die Schriftarten, die mit Microsoft Windows oder Microsoft Office installiert wurden. Zu diesen Schriftarten gehören Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings und viele andere.

Das Problem ist, dass die oben aufgeführten `TrueType` -Schriftarten nicht standardmäßig auf Linux -Distributionen installiert sind. Wenn Sie ein typisches DOCX-Dokument nehmen, das mit der Cambria-Schriftart formatiert ist, und versuchen, es auf Linux in das PDF -Format zu konvertieren, verwendet Aspose.Words eine andere Schriftart, da Cambria nicht verfügbar ist. Infolgedessen sieht das PDF-Dokument im Vergleich zum ursprünglichen DOCX-Dokument anders aus. Um sicherzustellen, dass von Aspose.Words konvertierte Dokumente so nah wie möglich am Original erscheinen, müssen Sie "Windows fonts" auf Ihrem Linux-System installieren.

Es gibt zwei Möglichkeiten, TrueType -Schriftarten auf einem Linux-System zu erhalten:

- Kopieren .TTF und .TTC Dateien von einem Windows-Computer auf Ihren Linux-Computer
- Installieren Sie ein `TrueType`-Schriftartenpaket, z. B. *msttcorefonts*

## Schriftarten von einem Windows-Computer kopieren

Eine einfache und schnelle Möglichkeit, TrueType -Schriftarten auf einem Linux -System zu erhalten, ist das Kopieren .TTF und .TTC-Dateien aus dem Verzeichnis C:\Windows\Fonts auf einem Windows-Computer in ein Verzeichnis auf Ihrem Linux-Computer. Sie müssen diese Schriftarten in keiner Weise auf Linux installieren oder registrieren. Sie müssen nur den Speicherort der Schriftarten mit der Klasse [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) in Aspose.Words angeben.

{{% alert color="primary" %}}

Überprüfen Sie, ob eine Schriftlizenzierung erforderlich ist, und lesen Sie die EULA sorgfältig durch, bevor Sie MS Schriftarten auf einem beliebigen Linux Betriebssystem installieren.

{{% /alert %}}

## Installieren Sie ein `TrueType`-Schriftartenpaket

Es gibt eine Reihe von Linux-Paketen, die Microsoft TrueType -Schriftarten enthalten, die Sie herunterladen und auf Ihrem Linux-Computer installieren können. Die genauen Schritte können bei verschiedenen Linux -Verteilungen unterschiedlich sein.

- Verwenden Sie auf Ubuntu Synaptic Package Manager, um das *ttf-mscorefonts-installer*-Paket zu finden und zu installieren.
- Verwenden Sie unter openSUSE Yast2 → Softwareverwaltung, um das *fetchmsttfonts*-Paket zu suchen und zu installieren.
- Verwenden Sie Liberation-Schriftarten, die unter OFL lizenziert sind, als Alternative zu Standardschriftarten von Windows: Arial, Times New Roman und Courier New.
- Suchen Sie nach Schriftpaketen, die für andere Linux-Distributionen geeignet sind, in der verfügbaren Dokumentation im Internet.

Nach der Installation des Pakets findet Aspose.Words diese Schriftarten in den Ordnern auf Ihrem System und verwendet sie bei der Arbeit mit Dokumenten.

## Siehe auch

- [Liberation Schriftarten](https://github.com/liberationfonts) als Alternative zu Standard- Windows -Schriftarten
