---
title: Installieren Sie TrueType-Schriftarten auf Linux in C#
second_title: Aspose.Words für .NET
articleTitle: Installieren Sie TrueType-Schriftarten auf Linux
linktitle: Installieren Sie TrueType-Schriftarten auf Linux
description: "Aspose.Words für .NET ermöglicht das Rendern eines mit Microsoft Word erstellten Dokuments auf einem Linux-Gerät mit höchster Genauigkeit unter Verwendung von C#. Kopieren Sie dazu Schriftartdateien von einem Windows-Computer oder installieren Sie ein `TrueType`-Schriftartenpaket in C# auf Ihrem Linux-Computer."
type: docs
weight: 20
url: /de/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Am häufigsten verwenden Sie Aspose.Words, um DOC- oder DOCX-Dokumente in das PDF-Format zu konvertieren. Wenn Sie dies auf einem Linux-Computer tun müssen, erfahren Sie in diesem Thema, wie Sie sicherstellen können, dass Aspose.Words Ihre Dokumente mit der besten Genauigkeit wiedergibt.

Am häufigsten wurden die zu konvertierenden DOC- und DOCX-Dokumente mit Microsoft Word auf einem Windows- oder Mac OS-Betriebssystem erstellt. Daher sind die meisten in DOC- und DOCX-Dokumenten verwendeten Schriftarten "Windows-Schriftarten" oder "Office-Schriftarten", also die Schriftarten, die mit Microsoft Windows oder Microsoft Office installiert werden. Zu diesen Schriftarten gehören Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings und viele andere.

Das Problem besteht darin, dass die oben aufgeführten `TrueType`-Schriftarten auf Linux-Distributionen nicht standardmäßig installiert sind. Wenn Sie ein typisches DOCX-Dokument nehmen, das mit der Schriftart Cambria formatiert ist, und versuchen, es in das PDF-Format in Linux zu konvertieren, verwendet Aspose.Words eine andere Schriftart, da Cambria nicht verfügbar ist. Dadurch sieht das PDF-Dokument anders aus als das ursprüngliche DOCX-Dokument. Um sicherzustellen, dass per Aspose.Words konvertierte Dokumente möglichst originalgetreu aussehen, müssen Sie "Windows-Fonts" auf Ihrem Linux-System installieren.

Es gibt zwei Möglichkeiten, TrueType-Schriftarten auf einem Linux-System abzurufen:

- Kopieren Sie .TTF- und .TTC-Dateien von einem Windows-Computer auf Ihren Linux-Computer
- Installieren Sie ein `TrueType`-Schriftartpaket, z. B. *msttcorefonts*

## Schriftarten von einer Windows-Maschine kopieren

Eine einfache und schnelle Möglichkeit, TrueType-Schriftarten auf ein Linux-System zu übertragen, besteht darin, .TTF- und .TTC-Dateien aus dem `C:\Windows\Fonts`-Verzeichnis auf einem Windows-Computer in ein Verzeichnis auf Ihrem Linux-Computer zu kopieren. Sie müssen diese Schriftarten in keiner Weise auf Linux installieren oder registrieren; Sie müssen lediglich den Speicherort der Schriftarten mithilfe der [FontSettings](https://reference.aspose.com/words/de/net/aspose.words.fonts/fontsettings/)-Klasse in Aspose.Words angeben.

{{% alert color="primary" %}}

Überprüfen Sie, ob eine Schriftartenlizenzierung erforderlich ist, und lesen Sie die EULA sorgfältig durch, bevor Sie MS Fonts auf einem Linux-Betriebssystem installieren.

{{% /alert %}}

## Installieren Sie ein `TrueType`-Schriftartenpaket

Es gibt eine Reihe von Linux-Paketen mit Microsoft TrueType-Schriftarten, die Sie herunterladen und auf Ihrem Linux-Computer installieren können. Die genauen Schritte können bei verschiedenen Linux-Distributionen unterschiedlich sein.

- Verwenden Sie unter Ubuntu den Synaptic Package Manager, um das Paket *ttf-mscorefonts-installer* zu finden und zu installieren.
- Unter openSUSE verwenden Sie Yast2 → Softwareverwaltung, um das *fetchmsttfonts*-Paket zu finden und zu installieren.
- Verwenden Sie unter OFL lizenzierte Liberation-Schriftarten als Alternative zu Standard-Windows-Schriftarten: Arial, Times New Roman und Courier New.
- Suchen Sie nach verfügbaren Dokumentationen im Internet, um Schriftartenpakete zu finden, die für andere Linux-Distributionen geeignet sind.

Nach der Installation des Pakets findet Aspose.Words diese Schriftarten in den Ordnern auf Ihrem System und verwendet sie bei der Arbeit mit Dokumenten.

## Siehe auch

- [Befreiungsschriften](https://github.com/liberationfonts) als Alternative zu Standard-Windows-Schriftarten
