---
title: Konvertierung in das Festseitenformat in C++
second_title: Aspose.Words für C++
articleTitle: Konvertierung in das Festseitenformat
linktitle: Konvertierung in das Festseitenformat
description: "Dokumente speichern unter PDF, XPS, HTML, XAML, PostScript, und PCL Formate."
type: docs
weight: 10
url: /de/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementiert eine eigene Seitenlayout-Engine. Bevor wir uns mit den Spezifikationen befassen, lohnt es sich, das Dokument zunächst auf hohem Niveau zu diskutieren.

## Was ist ein Dokument?

Wenn Benutzer an ein Dokument denken, stellen sie sich normalerweise eine Reihe von Papierblättern vor, die Wörter, Bilder, Tabellen und Diagramme enthalten. Dokumente können verschiedene Typen haben, z. B. Text, Tabellenkalkulationen, Folien, CAD -Zeichnungen, Flussdiagramme und daher im Wesentlichen unterschiedliche Layouts aufweisen. Die meisten Anwendungen ermöglichen das Senden von Dokumenten an einen Drucker; In diesem Fall kann ein Benutzer das endgültige beabsichtigte Erscheinungsbild des Dokuments tatsächlich anzeigen.

## Anzeigen eines Dokuments in verschiedenen Anwendungen

Verschiedene Anwendungen zum Anzeigen oder Veröffentlichen von Dokumenten ermöglichen Benutzern das Öffnen (Adobe Acrobat, XPS Viewer) und manchmal das Bearbeiten (Adobe InDesign) von Dokumenten bestimmter Formate. Diese Anwendungen erzeugen typischerweise Dokumente im sogenannten "Festseiten" -Format. Ein solches Dokumentenformat beschreibt genau, wo der Inhalt eines Dokuments auf jeder Seite platziert ist. Intern enthält das Format PDF oder XPS eine Beschreibung jeder Seite sowie Zeichnungsanweisungen, die das Layout des Inhalts auf der Seite angeben. Dies ähnelt Bildformaten und beschreibt, wo der Inhalt entweder in Raster- oder Vektorform angezeigt wird.

Im Gegensatz dazu unterstützen einige Textbearbeitungsanwendungen das Anzeigen der Seiten eines Dokuments nicht. Zum Beispiel unterstützt Microsoft Notepad nur sehr wenige Funktionen außer dem einfachen Anzeigen, Bearbeiten und Drucken von Text. Die wichtige Beobachtung hierbei ist, dass solche Anwendungen weder Seiten des Dokuments anzeigen noch einem Benutzer mitteilen können, wie viele davon gedruckt würden, sondern nur das Anzeigen des Dokumentinhalts ermöglichen. Das Dokument kann im Nur-Text-Format gespeichert und von vielen anderen Anwendungen geöffnet werden. Mit einer Anwendung, die das Anzeigen von binärem Inhalt einer beliebigen Datei ermöglicht, kann man sehen, was in der Dokumentdatei gespeichert ist - es ist nur einfacher Text, es enthält nichts anderes.

Etwas anspruchsvollere Textbearbeitungsanwendungen wie Microsoft Word Pad speichern das Dokument im Rich-Text-Format (RTF), das mehr Formatierungsfunktionen unterstützt, z. B. das Einfügen von Bildern, Zeichenformatierung, Absatzränder und Abstände. Das Format RTF enthält jedoch auch nur den Inhalt des Dokuments und keine Informationen zu Seiten.

Microsoft Word ist heute die fortschrittlichste Textbearbeitungsanwendung in Windows. Es formatiert Dateien im DOCX -Format, das den Inhalt des Dokuments flexibel und umfassend beschreibt, sodass Benutzer die Seitengröße und Ausrichtung für einen Dokumentabschnitt angeben und als WYSIWYG -Anwendung sogar Dokumentseiten auf dem Bildschirm anzeigen können. Dennoch gibt es immer noch keine Informationen darüber, wie der Inhalt des Dokuments auf den in der Dokumentdatei verfügbaren Seiten angezeigt wird. Die Dokumentdatei beschreibt nur den Inhalt selbst und die Beziehung der Dokumentobjekte zueinander sowie einige geometrische Einschränkungen. Daher berechnet Microsoft Word diese Informationen selbst, bevor ein Dokument angezeigt wird. Hier kommt ein Seitenlayout ins Spiel.

## Siehe auch

* [Was ist ein Seitenlayout](/words/cpp/what-is-a-page-layout/)
* [Erstellen eines Seitenlayouts](/words/cpp/creating-a-page-layout/)
* [Speichern eines Dokuments im Festseitenformat](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Layoutoptionen angeben](/words/cpp/specify-layout-options/)
