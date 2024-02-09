---
title: Konvertierung in PDF/A und PDF/UA
second_title: Aspose.Words für Python via .NET
articleTitle: Lernen Sie die Funktionen der Konvertierung in PDF/A und PDF/UA kennen
linktitle: Lernen Sie die Funktionen der Konvertierung in PDF/A und PDF/UA kennen
description: "Konvertieren Sie mit Python in PDF/A-1, PDF/A-2, PDF/A-4 und PDF/UA. Wählen Sie den besten PDF-Standard, um ein Dokument in Python via .NET zu konvertieren."
type: docs
weight: 25
url: /de/python-net/learn-features-of-conversion-to-pdf-a/
---

PDF ist ein festes Seitenformat, das bei Benutzern sehr beliebt ist und von verschiedenen Anwendungen weitgehend unterstützt wird, da ein PDF-Dokument auf jedem Gerät gleich aussieht. Aus diesem Grund ist die Konvertierung in PDF eine wichtige Funktion von Aspose.Words.

PDF ist an sich ein komplexes Format, da es über eine spezifische Dateistruktur, ein grafisches Modell, die Einbettung von Schriftarten und einige komplexe Ausgabefunktionen wie Dokumentstruktur-Tags, Verschlüsselung, digitale Signaturen und bearbeitbare Formulare verfügt. Darüber hinaus erfordert die Konvertierung eines Dokuments in PDF mehrere Berechnungsschritte, die komplex und zeitaufwändig sind.

In diesem Abschnitt betrachten wir die Hauptprobleme, die beim Arbeiten mit Dokumenten in verschiedenen PDF-Standards auftreten können, und beschreiben Möglichkeiten zu deren Lösung.

## Welcher PDF-Standard Aspose.Words unterstützt

Mit Aspose.Words können Benutzer jetzt mit den Formaten PDF/A-1, PDF/A-2 und PDF/A-4 sowie PDF/UA-1 arbeiten:

- PDF/A-1 hat gravierende Einschränkungen wie Transparenz und einige Komprimierungsoptionen sind verboten
- PDF/A-2 beseitigt einige der Einschränkungen von PDF/A-1, wie z. B. die Unterstützung von Transparenz- und Ebeneneffekten oder die Einbettung von OpenType-Schriftarten
- PDF/A-4 geht von überarbeiteten Konformitätsstufen aus: Die reguläre PDF/A-4-Konformität entspricht der Stufe U-Konformität früherer Versionen, und die Stufe A-Konformität wird entfernt
- PDF/UA-1-Inhalte sollten gemäß ISO 32000-1: 2008 getaggt und standardisiert werden

PDF/A ist eine ISO-standardisierte Version von PDF, die für die Archivierung und Langzeitspeicherung elektronischer Dokumente vorgesehen ist. Gleichzeitig ist PDF/UA eine weitere ISO-standardisierte Version von PDF, die darauf ausgelegt ist, die Barrierefreiheit für Menschen mit Behinderungen zu gewährleisten, die unterstützende Technologien nutzen. Um den Grad der Konformität mit PDF-Standards anzugeben, verwenden Sie die [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/)-Eigenschaft. Aufgrund der Speicherbedingungen müssen in PDF/A-Dokumenten alle Schriftarten eingebettet und die Verschlüsselung deaktiviert sein, während in PDF/UA-Dokumenten nur alle Schriftarten eingebettet sein dürfen.

In diesem Abschnitt werfen wir einen genaueren Blick auf die Arbeit mit PDF/A- oder PDF/UA-1-Dokumenten.

## Relevantes ISO für PDF-Standards

Um mehr über die verschiedenen PDF-Standards zu erfahren, sehen Sie sich die folgenden ISOs an:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Siehe auch

* [So bearbeiten Sie Dokumentstruktur-Tags in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [So überprüfen oder bearbeiten Sie die Textsprache in Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [So ändern Sie die Textsprache in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [So fügen Sie alternativen Text zu einer Form, einem Bild, einem Diagramm, einer SmartArt-Grafik oder einem anderen Objekt in Microsoft Word hinzu](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [So fügen Sie Tags alternativen Text und zusätzliche Informationen hinzu](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (oder lesen Sie die gleichen Informationen im [Adobe Acrobat-Benutzerhandbuch](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [So richten Sie den ActualText-Eintrag für Text ein](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), der Abschnitt "Hinzufügen von tatsächlichem Text für einen abgekürzten Begriff, eine Formel oder ein Nicht-Unicode-Symbol"
* [Unicode-Zuordnung für gängige symbolische Windows-Schriftarten](http://www.alanwood.net/demos/webdings.html)