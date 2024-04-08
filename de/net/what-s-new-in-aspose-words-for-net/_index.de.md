---
title: Was ist neu
second_title: Aspose.Words für .NET
articleTitle: Was ist neu in Aspose.Words für .NET?
linktitle: Was ist neu in Aspose.Words für .NET?
type: docs
description: "Aspose.Words für .NET wird täglich erweitert und verbessert. Auf dieser Seite erfahren Sie mehr über die großen und interessantesten Funktionen des Produkts."
weight: 10
url: /de/net/what-s-new-in-aspose-words-for-net/
---

Auf dieser Seite werden die interessantesten neuen Aspose.Words-Funktionen beschrieben, die in den letzten Versionen eingeführt wurden.

## Aspose.Words für .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbessert die Erfahrung bei der Verwaltung von Strichfarben, verbessert OLE-Objekte und LINQ-Berichte und führt eine neue öffentliche API-Datei für Bibliographiequellen ein.

Aspose.Words 24.2 erweiterte Diagramm-API, Stilverwaltung und LINQ-Optionen. Mit dieser Version von Aspose.Words wurde außerdem die Möglichkeit eingeführt, beim Rendern SVGSaveOptions anzugeben, das Laden von Markdown-Dateien flexibler zu steuern und mit Referenztext für Fußnoten und Endnoten zu arbeiten.

Aspose.Words 24.3 führt einen neuen TIFF Reader/Writer und die Emulation binärer Rasteroperationen für WMF-Metadateien ein. Aspose.Words 24.3 erweitert auch weiterhin die Charts API.

Aspose.Words 24.4 verbessert das Speichern von Formaten, einige Rendering-Optionen sowie die Arbeit mit digitalen Signaturen.

### Unterstützte Formate <sup>24.4</sup>

Das moderne **WebP**-Bildformat wird jetzt in Aspose.Words für .NET Framework 4.6.2 und höher unterstützt. Sie können jetzt WebP-Bilder in Dokumente einlesen und einfügen sowie Bilder im WebP-Format speichern.

Bitte beachten Sie, dass WebP derzeit nur in .NET Standard und .NET Framework v4.6.2 und höher verfügbar ist.

### Rendern und Drucken

#### Kontrolle der Strichfarbe <sup>24.1</sup>

Die [Stroke](https://reference.aspose.com/words/de/net/aspose.words.drawing/stroke/)-Klasse wurde um eine Reihe neuer öffentlicher Eigenschaften im Zusammenhang mit der Verwaltung von Strichfarben erweitert: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) und [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) und [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### DrawingML Charts API-Erweiterung <sup>24.2 / 24.3 / 24.4</sup>

Die **DrawingML Charts API** wird weiterhin erweitert.

#### Einbetten von Schriften, die in @font-face-Regeln deklariert sind <sup>24.4</sup>

Es wurde die Möglichkeit hinzugefügt, Schriften, die in @font-face-Regeln deklariert sind, in die Schriftdefinitionen des resultierenden Dokuments einzubetten, indem eine neue Eigenschaft namens [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) hinzugefügt wurde.

#### Arbeiten mit Leucht- und Reflexionsformatierung <sup>24.4</sup>

Die Möglichkeit, mit Leucht- und Reflexionsformatierung für ein Zeichenobjekt zu arbeiten, wurde implementiert.

### Dokumente laden und speichern

#### Geben Sie SVGSaveOptions beim Rendern an <sup>24.2</sup>

Die Möglichkeit, [SVGSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/svgsaveoptions/) während des Renderns anzugeben, wurde mithilfe der Methoden [ShapeRenderer](https://reference.aspose.com/words/de/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/de/net/aspose.words.rendering/noderendererbase/save/) und [OfficeMathRenderer](https://reference.aspose.com/words/de/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/de/net/aspose.words.rendering/noderendererbase/save/) hinzugefügt.

#### Leere Zeilen beim Laden von Markdown-Dateien beibehalten <sup>24.2</sup>

Es wurde die Möglichkeit hinzugefügt, leere Zeilen beim Laden von Markdown-Dateien beizubehalten.

#### Ein neuer TIFF Reader/Writer<sup>24.3</sup>

Für Aspose.Words für .NET Standard, .NET 6 und später wurde ein neuer TIFF Reader/Writer entwickelt. Aspose.Words für .NET 24.3 unterstützt das Lesen von TIFF-Bildern mit den Komprimierungstypen JPEG und Old JPEG und verbessert signifikant die Qualität von Lese- und Schreibvorgängen.

### Andere

* Durch das Hinzufügen einer neuen [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/)-Eigenschaft zur neuen [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/)-Klasse wurde die Möglichkeit eingeführt, den Text des `TextBox`-OLE-Steuerelements zu ändern. <sup>24.1</sup>
* Das öffentliche API von Bibliography Sources wurde durch das Hinzufügen eines neuen Namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) mit seinen neuen Klassen und Aufzählungen und durch das Hinzufügen einer neuen [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/)-Eigenschaft zur [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Klasse implementiert. <sup>24.1</sup>
* Es wurde ein API bereitgestellt, um den Zugriff auf Typmitglieder mithilfe der Vorlagensyntax für die LINQ Reporting Engine einzuschränken. <sup>24.1</sup>
* Der [Style](https://reference.aspose.com/words/de/net/aspose.words/style/)-Klasse wurden neue öffentliche Eigenschaften [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) und [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) für eine verbesserte Stilverwaltung hinzugefügt. <sup>24.2</sup>
* Die Funktionalität zum Abrufen des tatsächlichen Referenzmarkentextes für Fußnoten und Endnoten wurde durch die Eigenschaft [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) und die Methode [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) erweitert. <sup>24.2</sup>
* Die Kompatibilität mit `Word 2016`-Diagrammen für die `LINQ Reporting Engine` wurde aktiviert. <sup>24.2</sup>
* Die Emulation von binären Rasteroperationen für WMF-Metadateien wurde implementiert. <sup>24.3</sup>
* Es wurde die Möglichkeit aktiviert, Signaturoptionen für Dokumente innerhalb von SaveOptions zu definieren, indem eine neue Klasse namens [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) mit neuen öffentlichen Elementen hinzugefügt wurde, sowie neue Eigenschaften zu den Klassen [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) und [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) hinzugefügt wurden. <sup>24.4</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 24.1 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 24.2 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 24.3 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 24.4 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words für .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 erweitert die Rendering-Optionen, die Metadatei-Rendering-Emulation und die markdown-Speicheroptionen.

Aspose.Words 23.10 verbessert das Rendering, erweitert die Optionen zum Laden und Speichern von Dokumenten und ermöglicht Benutzern das Zusammenführen von Dokumenten auf neue Arten.

Aspose.Words 23.11 erweitert die Arbeit mit Revisionen, XLSX-Format und Schriftarten in der Diagrammlegende um zusätzliche Optionen.

Aspose.Words 23.12 führt neue Eigenschaften und Aufzählungen für die Arbeit mit PDF- und OOXML-Dokumenten sowie Unterstützung für WebP-Bilder ein.

### Rendern und Drucken

#### Anpassen von Achsentiteln in DrawingML-Diagrammen <sup>23.9</sup>

Die Möglichkeit, Achsentitel in DrawingML-Diagrammen anzupassen, wurde durch die Implementierung einer neuen [ChartAxisTitle](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartaxistitle/)- und [Title](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartaxis/title/)-Eigenschaft für öffentliche Klassen eingeführt.

#### Bestimmen der vertikalen Position von Schriftarten innerhalb eines Absatzes <sup>23.9</sup>

Mit der neuen öffentlichen [BaselineAlignment](https://reference.aspose.com/words/de/net/aspose.words/paragraphformat/baselinealignment/)-Eigenschaft und der neuen [BaselineAlignment](https://reference.aspose.com/words/de/net/aspose.words/baselinealignment/)-Enumeration ist es jetzt möglich, die vertikale Position von Schriftarten innerhalb eines Absatzes zu definieren.

#### Vordergrundfarbsteuerung <sup>23.10</sup>

Den [Fill](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/)- und [Stroke](https://reference.aspose.com/words/de/net/aspose.words.drawing/stroke/)-Klassen wurde über die **BaseForeColor**-Eigenschaft die Möglichkeit hinzugefügt, die Vordergrundfarbe ohne Modifikatoren abzurufen.

#### Erweiterung der Funktionalität von Diagrammen <sup>23.10</sup>

Die Funktionalität der Klassen [ChartDataPointCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartseries/) und [ChartFormat](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartformat/) wurde um neue Methoden und Eigenschaften erweitert.

#### Ein Bild automatisch anpassen und in eine Form einpassen <sup>23.10</sup>

Die neue [FitImageToShape](https://reference.aspose.com/words/de/net/aspose.words.drawing/imagedata/fitimagetoshape/)-Methode bietet eine einfache Möglichkeit, ein Bild automatisch anzupassen und an eine bestimmte Form anzupassen.

#### Standardschriftformatierung für DrawingML-Diagrammlegendeneinträge <sup>23.11</sup>

Über die [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/)-Eigenschaft wurde die Möglichkeit hinzugefügt, die Standardschriftformatierung für Legendeneinträge von DrawingML-Diagrammen festzulegen. Diese Funktion ermöglicht ein schlankeres und einheitlicheres Erscheinungsbild von Diagrammelementen und verbessert so die Gesamtästhetik des Dokuments.

#### Geben Sie das Seitenlayout beim Öffnen von PDF in Reader <sup>23.12</sup> an

Die Möglichkeit, das Seitenlayout anzugeben, das beim Öffnen eines Dokuments in einem PDF-Reader verwendet werden soll, wurde durch die Einführung einer neuen [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/)-Eigenschaft in die [PdfSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfsaveoptions/)-Klasse und die Einführung einer neuen [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/)-Enumeration hinzugefügt.

### Dokumente laden und speichern

#### Angeben eines Ordnernamens zum Erstellen von Bild-URIs in Markdown <sup>23.9</sup>

Die [MarkdownSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/markdownsaveoptions/)-Klasse wurde um die [ImagesFolderAlias](https://reference.aspose.com/words/de/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/)-Eigenschaft erweitert, die es ermöglicht, den Namen des Ordners anzugeben, der zum Erstellen von Bild-URIs verwendet wird, die in das Markdown-Dokument geschrieben werden.

#### Reduzieren Sie die PDF-Ausgabegröße <sup>23.10</sup>

Verschiedene PDF-Rendering-Optimierungen zur Reduzierung der Ausgabegröße bei Verwendung von [OptimizeOutput](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)-Einstellungen wurden implementiert.

#### Hyperlinks beim Laden von TXT-Dokumenten erkennen <sup>23.10</sup>

Die Funktion zur Erkennung von Hyperlinks beim Laden von TXT-Dokumenten wurde durch das Hinzufügen einer neuen [DetectHyperlinks](https://reference.aspose.com/words/de/net/aspose.words.loading/txtloadoptions/detecthyperlinks/)-Eigenschaft implementiert.

### Andere

* Metadatei-Rendering-Emulation zur Bestimmung der Rasterisierungsgröße wurde implementiert, insbesondere für die WMF-Stiftbreite und die EMF-Kosmetikstiftbreite. Um dies zu erreichen, wurde die **ScaleWmfFontsToMetafileSize**-Eigenschaft durch die [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/)-Eigenschaft ersetzt und die [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/de/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/)-Eigenschaft hinzugefügt. <sup>23.9</sup>
* Mit der [InsertDocumentInline](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertdocumentinline/)-Methode wurde eine vereinfachte Methode zum Einfügen eines Dokuments in ein anderes Dokument an der aktuellen Cursorposition eingeführt. <sup>23.10</sup>
* Durch die Einführung der neuen [Locked](https://reference.aspose.com/words/de/net/aspose.words/style/locked/)-Eigenschaft wurde die Möglichkeit hinzugefügt, auf Stileigenschaften zuzugreifen und diese zu ändern. <sup>23.10</sup>
* Den Methoden der [CompositeNode](https://reference.aspose.com/words/de/net/aspose.words/compositenode/)-Klasse wurde ein generischer Typparameter hinzugefügt. <sup>23.10</sup>
* Mithilfe der [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/)- und [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/)-Methoden wurde eine Möglichkeit implementiert, zu steuern, wann eine bestimmte Revision akzeptiert/abgelehnt werden soll oder nicht. Diese Verbesserung ermöglicht Benutzern eine genauere Kontrolle über den Revisionsprozess. <sup>23.11</sup>
* Die Möglichkeit, alle Abschnitte eines Dokuments in dasselbe XLSX-Arbeitsblatt zu schreiben, wurde durch den neuen [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/)-Aufzählungstyp und die neue [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/)-Eigenschaft bereitgestellt. <sup>23.11</sup>
* Durch die neue Zip64Mode-Eigenschaft der `OoxmlSaveOptions`-Klasse und die neue Zip64Mode-Enumeration wurde eine Möglichkeit implementiert, zu steuern, wie ZIP64-Formaterweiterungen für OOXML-Dokumente verwendet werden. <sup>23.12</sup>
* Unterstützung für WebP-Bilder wurde eingeführt. Bitte beachten Sie, dass diese Funktion nur für die Versionen .NetStandart und .NET6+ verfügbar ist. <sup>23.12</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 23.9 Versionshinweise](/words/net/aspose-words-for-net-23-9-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.10 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.11 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.12 Versionshinweise](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words für .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 verbessert die Fähigkeit, mit Diagrammseriendaten und ODT-Dokumenten zu arbeiten, und verbessert außerdem Kopf-/Fußzeilen und deren Textumbruch.

Aspose.Words 23.6 erweitert die Rendering-Optionen, fügt ein neues Exportformat hinzu und verbessert die LINQ-Berichterstellung und LowCode-Tools.

Aspose.Words 23.7 verbessert die Berichtsfunktionen, fügt ein neues Exportformat hinzu und führt Änderungen bei der Arbeit mit Tabellen und digitalen Signaturen ein.

Aspose.Words 23.8 erweitert die Möglichkeiten verschiedener Formate, verbessert das Rendering und fügt neue Optionen für die Arbeit mit Feldern hinzu

### Unterstützte Formate

* Ab Version 23.6 ist es möglich, ein Dokument im XLSX-Format zu speichern. Jetzt können Sie Ihre Dokumente in das Excel-Format konvertieren. <sup>23.6</sup>
* Ab Version 23.7 ist es möglich, eine Dokumentseite oder -form im EPS-Format zu speichern. <sup>23.7</sup>

### Neue Formatfunktionen

* Die Funktionalität zum automatischen Generieren von Inhaltsverzeichnissen (TOC) für MOBI-Dokumente wurde eingeführt. <sup>23.8</sup>
* Der [PdfEncryptionDetails](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/)-Konstruktor wurde um [PdfPermissions](https://reference.aspose.com/words/de/net/aspose.words.saving/pdfpermissions/) erweitert. <sup>23.8</sup>
* Die Gestaltung von vertikalem Text für EMF-Metadateien wurde implementiert. <sup>23.8</sup>

### Rendern und Drucken

#### Abrufen und Ändern von Diagrammreihendaten <sup>23.5</sup>

Die Funktion zum Abrufen und Ändern von Diagrammseriendaten wurde durch das Hinzufügen von Folgendem bereitgestellt:

* neue Klassen: [ChartXValue](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* neue Enum-Typen: [ChartXValueType](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Unterstützung für Advanced Typography <sup>23.6</sup>

Unterstützung für erweiterte Typografie im WMF-, EMF- und EMF+-Rendering wurde hinzugefügt.

#### Farbiger Inhalt auf der Seite <sup>23.6</sup>

Die öffentliche Eigenschaft [PageInfo.Colored](https://reference.aspose.com/words/de/net/aspose.words.rendering/pageinfo/colored/), die angibt, ob die Seite farbig ist oder nicht, wurde hinzugefügt.

#### Formatierung für Diagrammdatenbeschriftungen <sup>23.6</sup>

Die Möglichkeit, Füll-, Strich- und Beschriftungsformatierungen für Diagrammdatenbeschriftungen festzulegen, wurde implementiert.

### Mail Merge und Berichterstattung

#### Dynamische HTML-Einfügung für LINQ Reporting Engine <sup>23.6</sup>

Eine neue Möglichkeit der dynamischen HTML-Einfügung für die LINQ Reporting Engine wurde hinzugefügt.

#### Unterstützung für Mustache-Tags <sup>23.7</sup>

Mustache-Tags werden jetzt in den [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/de/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/)- und [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/de/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion)-Methoden unterstützt.

#### Aktualisierungen der LINQ Reporting Engine-Vorlagensyntax <sup>23.7</sup>

Die Vorlagensyntax der LINQ Reporting Engine unterstützt jetzt die Erweiterungsmethoden `ElementAt` und ElementAtOrDefault.

#### Festlegen der Größe gerenderter Bilder <sup>23.8</sup>

Eine neue öffentliche Eigenschaft [ImageSize](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagesize/) zur Angabe der Größe gerenderter Bilder in Pixel wurde eingeführt.

#### Leerzeichen für JSON-Stringwerte beibehalten – LINQ <sup>23.8</sup>

Der LINQ Reporting Engine wurde eine Option hinzugefügt, um Leerzeichen für JSON-Zeichenfolgenwerte beizubehalten.

### LowCode <sup>23.6</sup>

Es wurden neue LowCode-Methoden hinzugefügt, die verschiedene Dokumenttypen in einem einzigen Ausgabedokument zusammenführen sollen.

### Andere

* Unterstützung für Textumbruch in Kopf-/Fußzeilen wurde implementiert. <sup>23.5</sup>
* Die Möglichkeit, digitale Signaturen aus ODT-Dokumenten zu entfernen, wurde über die [RemoveAllSignatures](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/)-Methode hinzugefügt. <sup>23.5</sup>
* Die öffentliche Eigenschaft [PhoneticGuide](https://reference.aspose.com/words/de/net/aspose.words/run/phoneticguide/) zum Abrufen des Basis- und Ruby-Textes des phonetischen Leitfadens [Run](https://reference.aspose.com/words/de/net/aspose.words/run/) wurde hinzugefügt. <sup>23.5</sup>
* Durch die Einführung einer neuen [SignatureValue](https://reference.aspose.com/words/de/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/)-Eigenschaft wurde die Möglichkeit hinzugefügt, einen digitalen Signaturwert aus einem digital signierten Dokument als Byte-Array abzurufen. <sup>23.7</sup>
* Die [Row](https://reference.aspose.com/words/de/net/aspose.words.tables/row/)- und [Cell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/)-Klassen wurden um neue öffentliche Mitglieder erweitert – [Row.NextRow](https://reference.aspose.com/words/de/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/de/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/nextcell/) und [Cell.PreviousCell](https://reference.aspose.com/words/de/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Unterstützung für die Felder CITATION und BIBLIOGRAPHY wurde hinzugefügt. <sup>23.8</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 23.5 Versionshinweise](/words/net/aspose-words-for-net-23-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.6 Versionshinweise](/words/net/aspose-words-for-net-23-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.7 Versionshinweise](/words/net/aspose-words-for-net-23-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.8 Versionshinweise](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words für .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 verbessert die Leistung der Rasteroperationsemulation und verbessert die Export- und Rendering-Qualität von Dokumenten.

Aspose.Words 23.2 führt das Speichern von Dokumenten im MOBI-Format ein, verbessert die Darstellung von Diagrammen und nimmt bemerkenswerte Änderungen an den Details der Dokumentdarstellung vor.

Aspose.Words 23.3 verbessert das Importieren und Speichern von Dokumenten durch neue Eigenschaften und verbessert außerdem die Arbeitsqualität mit Hintergrund- und Vordergrundfarbe sowie radialem Farbverlauf.

Aspose.Words 23.4 verbessert die Berechnung einiger Parameter sowie die Positionierung der Tabelle und des umgebenden Textes.

### Leistungsverbesserungen

#### Emulation von Rasteroperationen <sup>23.1</sup>

Leistung und Qualität der Emulation von Rasteroperationen mit Metadateien wurden erheblich verbessert.

### Unterstützte Formate

#### Export nach MOBI <sup>23.2</sup>

Ab Version 23.2 ist es möglich, ein Dokument im MOBI-Format (auch PRC, AZW – Amazon Kindles eigenes E-Book-Dateiformat genannt) zu speichern. Jetzt können Sie nicht nur MOBI-Dokumente laden, sondern Ihre Dateien auch in das MOBI-Format exportieren.

### Rendern

#### Arbeiten mit Schattierungsthemenfarben <sup>23.1</sup>

Die Möglichkeit, mit Schattierungsthemenfarben zu arbeiten, wurde implementiert.

#### Unterstützung des R-Quadrat-Koeffizienten in DML-Diagrammen <sup>23.1</sup>

Unterstützung des R-Quadrat-Koeffizienten in DML-Diagramm-Trendlinienbeschriftungen, wenn Rendering hinzugefügt wurde.

#### Verbesserungen bei der Darstellung von Diagrammen <sup>23.2</sup>

Seit 23.2 wurde die Diagrammdarstellung deutlich verbessert.

#### Hintergrund- und Vordergrundfarbsteuerung <sup>23.3</sup>

Die [Fill](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/)-Klasse wurde um eine Reihe neuer öffentlicher Eigenschaften im Zusammenhang mit Hintergrund- und Vordergrundfarben erweitert: [ForeThemeColor](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/forethemecolor/) und [BackThemeColor](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/foretintandshade/) und [BackTintAndShade](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/backtintandshade/).

#### Radiale Farbverläufe mit dem `SkiaSharp` Native Shader <sup>23.3</sup>

Das Rendern radialer Verläufe mit dem nativen `SkiaSharp`-Shader für .NET Standard wurde implementiert.

#### Abstand zwischen der Tabelle und dem umgebenden Text <sup>23.4</sup>

Durch die Einführung neuer Eigenschaften in die [Table](https://reference.aspose.com/words/de/net/aspose.words.tables/table/)-Klasse wurde die Möglichkeit hinzugefügt, den Abstand zwischen der Tabelle und dem umgebenden Text festzulegen: [DistanceLeft](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distancetop/) und [DistanceBottom](https://reference.aspose.com/words/de/net/aspose.words.tables/table/distancebottom/).

### Dokumente laden und speichern

#### `TOC` für AZW3-Dokumente generieren <sup>23.1</sup>

Die Möglichkeit, `TOC` (Inhaltsverzeichnis) für AZW3-Dokumente zu generieren, wurde durch die Verwendung der [NavigationMapLevel](https://reference.aspose.com/words/de/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/)-Eigenschaft hinzugefügt.

#### Listenelemente nach Markdown <sup>23.1</sup> exportieren

Durch das Hinzufügen der [ListExportMode](https://reference.aspose.com/words/de/net/aspose.words.saving/markdownsaveoptions/listexportmode/)-Eigenschaft zur [MarkdownSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/markdownsaveoptions/)-Klasse wurde eine Möglichkeit bereitgestellt, den Export von Listenelementen in das Markdown-Format zu steuern.

#### Benachrichtigungen über den Fortschritt der Dokumentspeicherung <sup>23.3</sup>

Das Speichern von Fortschrittsbenachrichtigungen für die Formate MOBI und AZW3 wurde implementiert.

#### Anpassung von Satz- und Wortabständen <sup>23.3</sup>

Durch die Einführung der [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/de/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/)-Eigenschaft wurde die Möglichkeit hinzugefügt, anzugeben, ob Satz- und Wortabstände beim Dokumentimport automatisch angepasst werden sollen.

### Andere

* Durch die [JustificationMode](https://reference.aspose.com/words/de/net/aspose.words/document/justificationmode/)-Eigenschaftsimplementierung <sup>23.2</sup> wurde die Möglichkeit hinzugefügt, die Anpassung des Zeichenabstands eines Dokuments anzugeben
* Die Möglichkeit, Aspose.Words anzuweisen, ob Textfelder, Fußnoten und Endnoten in die Wortzahlstatistik einbezogen werden sollen, wurde durch Hinzufügen der [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/de/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/)-Eigenschaft <sup>23.2</sup> bereitgestellt
* Über die [AutomaticallyUpdate](https://reference.aspose.com/words/de/net/aspose.words/style/automaticallyupdate/)-Eigenschaft <sup>23.2</sup> wurde eine neue Option für einen Dokumentstil eingeführt, mit der festgelegt werden kann, ob der Stil basierend auf dem entsprechenden Wert automatisch neu definiert wird
* Mithilfe der [IsPhoneticGuide](https://reference.aspose.com/words/de/net/aspose.words/run/isphoneticguide/)-Eigenschaft <sup>23.4</sup> wurde die Möglichkeit hinzugefügt, festzustellen, ob [Run](https://reference.aspose.com/words/de/net/aspose.words/run/) ein phonetischer Guide-Lauf ist
* Eine einfache Möglichkeit, mit Reihen und Achsen von Kombinationsdiagrammen zu arbeiten, wurde durch die Einführung der [ChartAxisCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartaxiscollection/)-Klasse und das Hinzufügen der [Chart.Axes](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chart/axes/)-Eigenschaft <sup>23.4</sup> implementiert
* Der [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/)-Klasse <sup>23.4</sup> wurden neue öffentliche Eigenschaften hinzugefügt, die mit der relativen Positionierung und Größe der Form verbunden sind
* Genauigkeit und Leistung der Farbhelligkeitsberechnung für die automatische Textfarbauflösung wurden gemäß den neuesten Versionen von Microsoft Word <sup>23.4</sup> verbessert

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 23.1 Versionshinweise](/words/net/aspose-words-for-net-23-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.2 Versionshinweise](/words/net/aspose-words-for-net-23-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.3 Versionshinweise](/words/net/aspose-words-for-net-23-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.4 Versionshinweise](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words für .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 erweitert die Optionen zum Laden und Speichern von Dokumenten und verbessert die Interaktion mit einigen anderen Optionen.

Aspose.Words 22.10 verbessert die Such- und Ersetzungsoptionen, erweitert OLE-Objekte und erweitert die Listenfunktionalität.

Aspose.Words 22.11 erweitert seine Funktionalität um neue Optionen für komfortableres Arbeiten mit bereits bekannten Objekten: Felder, Drucken, OLE und strukturierte Dokument-Tags.

Aspose.Words 22.12 verbessert die Rendering-Funktionen und führt Optionen für die Arbeit mit Rändern beim Laden/Speichern eines Dokuments ein.

### Leistungsverbesserungen <sup>22.12</sup>

Es wurde eine Optimierung eingeführt, die die Tiefe der Verschachtelung des Grafikstatus beim Rendern in PDF erheblich reduziert, um die Spezifikationskonformität aufrechtzuerhalten.

### Rendern und Drucken

#### Drucken nicht farbiger Seiten auf einem Farbdrucker <sup>22.11</sup>

Durch Hinzufügen eines neuen **GrayscaleAuto**-Werts zur [ColorPrintMode](https://reference.aspose.com/words/de/net/aspose.words.rendering/colorprintmode/)-Enumeration wurde ein benutzerdefinierter Farb-/Graustufendruckmodus implementiert.

Mit einer neuen Druckeigenschaft können Benutzer steuern, wie nicht farbige Seiten gedruckt werden, wenn das Gerät Farbdruck unterstützt. Diese Funktion kann nützlich sein, wenn Benutzer nicht farbige Seiten automatisch nur im Graustufendruckmodus drucken möchten.

#### Neue Eigenschaften für die Randdarstellung <sup>22.12</sup>

Neue öffentliche Eigenschaften [ThemeColor](https://reference.aspose.com/words/de/net/aspose.words/border/themecolor/) und [TintAndShade](https://reference.aspose.com/words/de/net/aspose.words/border/tintandshade/) wurden eingeführt.

#### Lineare Trendlinienformel für DrawingML-Rendering <sup>22.12</sup>

Die Darstellung linearer Trendlinienformeln für DrawingML-Diagramme wurde implementiert.

#### Schriftart-Fallback-Einstellungen für Google Noto-Schriftarten <sup>22.12</sup>

Die vordefinierten Schriftart-Fallback-Einstellungen für Google Noto-Schriftarten wurden aktualisiert.

### Dokumente laden und speichern

#### Kopf- oder Fußzeilenformen zwischenspeichern, um die PDF-Größe zu reduzieren <sup>22.9</sup>

Die Möglichkeit, Kopf-/Fußzeilenformen zwischenzuspeichern, um die Größe der ausgegebenen PDF-Datei zu reduzieren, wurde durch Hinzufügen einer neuen **CacheHeaderFooterShapes**-Eigenschaft implementiert.

#### Automatische Nummerierungserkennung beim Laden eines Dokuments <sup>22.9</sup>

Die Möglichkeit, die [AutoNumberingDetection](https://reference.aspose.com/words/de/net/aspose.words.loading/txtloadoptions/autonumberingdetection/)-Eigenschaft beim Laden von Text anzugeben, wurde durch eine Erweiterung der [TxtLoadOptions](https://reference.aspose.com/words/de/net/aspose.words.loading/txtloadoptions/)-Klasse implementiert.

#### Angeben eines bestimmten Margin-Typs <sup>22.12</sup>

Die Möglichkeit, einen bestimmten [Margin](https://reference.aspose.com/words/de/net/aspose.words/pagesetup/margins/)-Typ für den angegebenen Abschnitt anzugeben, wurde implementiert.

### Suchen und vergleichen <sup>22.10</sup>

Die Möglichkeit, [StructuredDocumentTag](https://reference.aspose.com/words/de/net/aspose.words.markup/structureddocumenttag/) bei Such- und Ersetzungsoptionen zu ignorieren, wurde durch das Hinzufügen einer neuen [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/)-Eigenschaft zur [FindReplaceOptions](https://reference.aspose.com/words/de/net/aspose.words.replacing/findreplaceoptions/)-Klasse implementiert.

### Andere

* Eine neue Funktion, um FieldEQ als OfficeMath zu erhalten, wurde hinzugefügt. <sup>22.9</sup>
* Die Erstellung strukturierter Dokument-Tags vom Typ Group auf Zeilenebene war erlaubt. <sup>22.9</sup>
* OLE-Objekte und -Steuerelemente werden jetzt beim Konvertieren eines Dokuments in HTML als Metadateibilder behandelt. <sup>22.10</sup>
* Durch die Einführung einer neuen [HasSameTemplate](https://reference.aspose.com/words/de/net/aspose.words.lists/list/hassametemplate/)-Methode in die [List](https://reference.aspose.com/words/de/net/aspose.words.lists/list/)-Klasse wurde eine neue Funktion hinzugefügt, um zu überprüfen, ob eine bestimmte Liste aus derselben Vorlage wie die verglichene Liste erstellt wurde. <sup>22.10</sup>
* Die Möglichkeit, neue strukturierte Dokument-Tags vom Typ [Citation](https://reference.aspose.com/words/de/net/aspose.words.markup/sdttype/) zu erstellen, wurde hinzugefügt. <sup>22.11</sup>
* Die Möglichkeit, den Fortschritt der Feldaktualisierung zu verfolgen, wurde bereitgestellt. <sup>22.11</sup>
* Es wurde eine neue **EmbedAttachments**-Eigenschaft eingeführt, die es Benutzern ermöglicht, OLE-Anhänge aus einem Quelldokument in das ausgegebene PDF-Dokument einzubetten. <sup>22.11</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 22.9 Versionshinweise](/words/net/aspose-words-for-net-22-9-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.10 Versionshinweise](/words/net/aspose-words-for-net-22-10-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.11 Versionshinweise](/words/net/aspose-words-for-net-22-11-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.12 Versionshinweise](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words für .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 bietet Unterstützung für neue Ladeformate und eine neue Druckseitengröße und verbessert einige Rendering-Optionen.

Aspose.Words 22.6 erweitert die Möglichkeiten der PDF-Konvertierung in andere Formate und verbessert die Arbeit mit DrawingML und dem Volltextfülleffekt.

Aspose.Words 22.7 erweitert die Möglichkeiten der Arbeit mit Rendering-Funktionen und fügt außerdem neue Funktionen für die Arbeit mit HTML-Import und -Export in PDF hinzu.

Aspose.Words 22.8 führt ein neues Exportformat ein und verbessert verschiedene Rendering-Algorithmen.

Das API wurde für eine flexiblere und bequemere Entwicklung erweitert.

### Unterstützte Formate

* Unterstützung für das Laden von EPUB- und XML-Dokumenten wurde durch das Hinzufügen neuer Werte zur [LoadFormat](https://reference.aspose.com/words/de/net/aspose.words/loadformat/)-Enumeration eingeführt. Ab Version 22.5 ist es möglich, EPUB- und XML-Dokumente in das Aspose.Words-Dokumentmodell zu laden und in ein beliebiges [Unterstützte Formate](https://reference.aspose.com/words/de/net/aspose.words/saveformat/) zu konvertieren. <sup>22.5</sup>
* Ab Version 22.8 ist es möglich, ein Dokument im AZW3-Format zu speichern – Amazon Kindles proprietäres E-Book-Dateiformat (KF8 ist ein anderer Name für das Format). Jetzt können Sie nicht nur AZW3-Dokumente laden, sondern Ihre Dateien auch in das AZW3-Format exportieren, bei dem es sich im Wesentlichen um ein kompiliertes EPUB handelt. <sup>22.8</sup>

### Rendern und Drucken

#### Neue Druckgröße <sup>22,5</sup>

Durch die Einführung eines neuen Werts in die [PaperSize](https://reference.aspose.com/words/de/net/aspose.words/papersize/)-Enumeration wurde Unterstützung für die Druckseitengröße "Umschlag Nr. 10" hinzugefügt.

#### Rendern von MathML-Formeln <sup>22.5</sup>

Die Darstellung eines Rahmens um MathML-Formeln und die Schriftarterkennung beim Rendern von Zeichen für solche Formeln wurden verbessert.

#### DML-Diagrammverbesserungen <sup>22.6</sup>

Die öffentlichen API-Diagramme von DrawingML wurden um die Unterstützung von Farbverläufen, Texturen und Musterfüllungen erweitert.

#### Glyph beschreibt das Parsen für OpenType <sup>22.7</sup>

Das Parsen von Aspose.Words-eigenen glyph-Umrissen für OpenType-Schriftarten (CFF) wurde implementiert.

Bisher wurde die glyph-Analyse für OpenType-Schriftarten (CFF) über GDI+ durchgeführt. Jetzt funktioniert es also in Fällen, in denen GDI+ nicht verfügbar ist – Java, .NET Standard-Plattformen, Linux OS usw. In bestimmten Fällen wie WordArt, Texteffekten, einigen Office Math-Funktionen und anderen ist die Analyse von Glyph-Umrissen erforderlich.

#### Formschattenformatierung festlegen <sup>22.7</sup>

Die Möglichkeit, die Schattenformatierung des Formobjekts festzulegen, wurde durch Hinzufügen einer neuen [ShadowFormat](https://reference.aspose.com/words/de/net/aspose.words.drawing/shapebase/shadowformat/)-Eigenschaft bereitgestellt.

#### Unterstützung für Zellabstände in Tabellen <sup>22.8</sup>

Die Layout-Engine wurde nun deutlich verbessert: Ein sehr komplexer Zellenabstandsmechanismus in Tabellen wurde implementiert.

#### Schriftartersetzung für Symbole <sup>22.8</sup>

Die Schriftartersetzung für Symbole wurde verbessert.

#### Algorithmus zur Drehung der Diagrammachsenbeschriftung <sup>22.8</sup>

Der Rotationsalgorithmus der Diagrammachsenbeschriftungen wurde verbessert.

### Dokumente laden und speichern

#### Laden und Konvertieren von PDF in ein festes Seitenformat ohne Layoutmodell <sup>22.6</sup>

Die Möglichkeit, PDF-Dokumente mit hoher Wiedergabetreue und Leistung zu laden und in feste Seitenformate zu konvertieren, wurde implementiert.

#### Neuer HTML-Importmodus <sup>22.7</sup>

Durch das Hinzufügen eines neuen Werts zur [HtmlInsertOptions](https://reference.aspose.com/words/de/net/aspose.words/htmlinsertoptions/)-Enumeration wurde ein neuer HTML-Importmodus für Elemente auf Blockebene eingeführt.

#### Konvertieren Sie in PDF/UA-1 CSkompatibel mit WCAG 2.0 <sup>22.7</sup>

Unterstützung für die Konvertierung eines Dokuments in das WCAG 2.0-kompatible PDF/UA-1-Format wurde hinzugefügt.

Wenn der Kunde also über ein barrierefreies Word-Dokument verfügt und es über Aspose.Words unter Angabe der Konvertierungsdetails in PDF/UA-1 konvertiert, ist die Ausgabe WCAG 2.0-kompatibel.

WCAG oder Web Content Accessibility Guidelines sind eine Reihe von Richtlinien, die vom W3C in Zusammenarbeit mit Einzelpersonen und Organisationen auf der ganzen Welt entwickelt wurden. Jetzt können Sie mit Aspose.Words Ihr Dokument in das Ausgabeformat PDF/UA-1 konvertieren, das zum Erstellen von WCAG 2.0-kompatiblen PDF-Dokumenten geeignet ist.

Es ist erwähnenswert, dass WCAG 2.0 zwei zusätzliche Anforderungen hat, die nicht in der PDF/UA-1-Spezifikation spezifiziert sind:

* Kontrastanforderungen

* Anforderungen für die Kennzeichnung von Multimedia-Inhalten

Beide Anforderungen sind jedoch für unseren Fall der Konvertierung von Word nach PDF nicht relevant.

### Andere

* Ausnahme der Übernahme des Volltextfülleffekts, der das Verhalten von MS Word nachahmt, wurde implementiert. <sup>22.6</sup>
* Unterstützung der `DATABASE`-Felder wurde hinzugefügt. Mithilfe dieses Feldtyps können Sie beispielsweise die Ergebnisse einer Datenbankabfrage in einer Microsoft Word-Tabelle anzeigen. <sup>22.7</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für .NET 22.5 Versionshinweise](/words/net/aspose-words-for-net-22-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.6 Versionshinweise](/words/net/aspose-words-for-net-22-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.7 Versionshinweise](/words/net/aspose-words-for-net-22-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 22.8 Versionshinweise](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Siehe auch

{{% alert color="primary" %}}

Diese Seite enthält die neuesten Veröffentlichungsnachrichten der letzten 2 Jahre. Einzelheiten zu früheren Versionen finden Sie auf den [Versionshinweise'](/words/net/release-notes/)-Seiten in den entsprechenden Abschnitten.

{{% /alert %}}