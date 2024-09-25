---
title: Was ist neu?
second_title: Aspose.Words für Java
articleTitle: Was ist neu in Aspose.Words für Java
linktitle: Was ist neu in Aspose.Words für Java
type: docs
description: "Aspose.Words für Java erweitert und erhöht täglich. Auf dieser Seite erfahren Sie mehr über die riesigen und interessantesten Features des Produkts."
weight: 2
url: /de/java/what-s-new-in-aspose-words-for-java/
---

Diese Seite beschreibt das interessanteste Neues Aspose.Words Funktionen, die in den letzten Versionen eingeführt wurden.

## Aspose.Words für Java 24.9

Aspose.Words 24.9 führt das Einfügen von Gruppenformen und StructuredDocumentTags über DocumentBuilder ein, verbessert die Darstellung von Radialdiagrammen mit Abstufungen, verbessert digitale Signaturen mit XAdES-EPES-Unterstützung, fügt Markdown-Unterstreichungserkennung hinzu und bietet Zugriff auf Fußnoten-/Endnotentrennzeichen.

### Darstellung und Drucken

#### Abstufungen auf Radialdiagrammen

Die Darstellung von Abstufungen auf Radialdiagrammen wurde implementiert.

### Konvertieren, Laden und Speichern von Dokumenten

#### Unterstreichungsformatierung beim Laden von Markdown-Dateien

Die Option zur Erkennung von Unterstreichungsformatierungen beim Laden von Markdown-Dokumenten wurde durch Hinzufügen einer neuen öffentlichen Eigenschaft [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting) integriert.

### Digitale Signaturen

#### Dokumente mit XAdES-EPES signieren

Die Möglichkeit, Dokumente mit XML-DSig-Signaturen auf XAdES-EPES-Ebene zu signieren, wurde durch Hinzufügen einer neuen öffentlichen Eigenschaft [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) und einer neuen öffentlichen Aufzählung [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/) eingeführt.

### Sonstiges

* Eine neue öffentliche Methode [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) wurde hinzugefügt, um Formen zu gruppieren.
* Eine neue öffentliche Methode [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) wurde hinzugefügt, um **StructuredDocumentTags** in ein Dokument einzufügen.
* Öffentlicher Zugriff auf Fußnoten-/Endnotentrennzeichen wurde durch Hinzufügen einiger öffentlicher Klassen und Eigenschaften ermöglicht.

{{% alert color="primary" %}}

Erfahren Sie mehr über [Versionshinweise zu Aspose.Words für Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words für Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 erweitert die Optionen für Baugruppen, verbessert die Rendering-Funktionen und erweitert einige andere Optionen.

Aspose.Words 24.6 verbessert die Rendering-Optionen, verbessert die Such- und Vergleichsfunktion und erweitert mehrere andere Funktionen.

Aspose.Words 24.7 ändert die Art und Weise, wie Sie mit ActiveX arbeiten, erweitert die Rendering-Funktionen und ermöglicht den Export in die Formate Markdown und XLSX.

Aspose.Words 24.8 verbessert die Diagrammanpassung durch präzise Kontrolle über Achsenbeschriftungen, erweitert die Schriftartenverwaltung, verbessert die Handhabung der Dokumentstruktur und fügt neue Funktionen für HTML/XAML-Export, PDF-Funktionalität, Dokumentkonvertierung und digitale Signaturen hinzu.

### Unterstützte Formate

Ab Version 24.7 wird der Export in PDF/UA-2 unterstützt, um die Zugänglichkeit für Benutzer mit Behinderungen zu gewährleisten.

### Rendering und Drucken

#### Änderungen in Charts, Shapes und DrawingML <sup>24.5</sup>

- DrawingML-Effekt-Rendering für SVG-Grafiken wurde implementiert und erweitert die bisherige, auf Bilder beschränkte Funktionalität.
- Unterstützung für das Erstellen von Kombinationsdiagrammen und das Anpassen von Eigenschaften wie Lückenbreite, Überlappung und Blasenskala innerhalb von Seriengruppen wurde durch Hinzufügen der Klassen [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) und [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) und der Eigenschaft [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups) eingeführt.
- Die Funktionalität zum Manipulieren des SoftEdge-Effekts von Formen wurde durch Hinzufügen der Klasse [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/) implementiert.
- Die Möglichkeit zum Ändern der Anpassungswerte von Formen wurde durch Hinzufügen der öffentlichen Klassen [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) und [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) und der Eigenschaft [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments) implementiert.

#### Änderungen bei Diagrammen, Formen und Zeichnungen <sup>24.6</sup>

* Die Diagrammfunktionen wurden verbessert. Sie können jetzt eine größere Vielfalt an Diagrammen erstellen, darunter *Treemaps*, *Sunbursts*, *Histogramme*, *Pareto*-Diagramme, *Box & Whisker*-Diagramme, *Wasserfälle* und *Trichter*. Dadurch können Sie Ihre Daten vielfältiger und informativer visualisieren.
* Die Farbsteuerung für die Schattenformatierung wurde verbessert. Sie können das Erscheinungsbild Ihrer Dokumente genauer steuern, indem Sie auf Schattenfarben zugreifen.
* Die Leistungssteigerung für das Hintergrund-Rendering wurde verbessert. Dank der nativen Kacheltechnologie können Sie das Rendern von Hintergründen mit kleinen Elementen erheblich beschleunigen.
* Es wurden realistische Farbverläufe für Formen hinzugefügt. Sie können jetzt DML-Formen mit nichtlinearen Farbverläufen erstellen, die den visuellen Stil von Microsoft Word nachahmen und so ein eleganteres Erscheinungsbild erzielen.

#### Anpassung von Diagrammdatenbeschriftungen <sup>24.7</sup>

Die Möglichkeit, Diagrammdatenbeschriftungen wie **Ausrichtung** und **Rotation** anzupassen, wurde hinzugefügt.

#### Benutzerdefinierte Zahlenformatierung für Listenebenen <sup>24.7</sup>

Ein Setter für die öffentliche Eigenschaft [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) wurde hinzugefügt. Sie können jetzt eine benutzerdefinierte Zahlenformatierung für Listenebenen definieren.

#### Änderungen bei der Arbeit mit ActiveX <sup>24.7</sup>

* Die Eigenschaften von ActiveX-Objekten können jetzt geändert werden, sodass Sie mehr Kontrolle über ihr Verhalten haben.
* Die Möglichkeit, den Wert des ActiveX-Steuerelements mit Optionsfeld zu ändern, um dynamische Interaktion zu ermöglichen, wurde hinzugefügt.
* Die Möglichkeit, ein ActiveX-Kontrollkästchen auf „aktiviert“ oder „deaktiviert“ umzuschalten, wurde hinzugefügt.

#### Kontrolle über die Ausrichtung und Drehung der Achsenmarkierungsbeschriftungen des Diagramms <sup>24.8</sup>

Für eine bequemere Diagrammanpassung wurde eine präzise Kontrolle über die Ausrichtung und Drehung der Achsenmarkierungsbeschriftungen des Diagramms hinzugefügt – die Klasse [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) wurde um neue Eigenschaften für **Orientation** und **Rotation** erweitert.

#### Ersetzen des Backslash durch das Yen-Zeichen <sup>24.8</sup>

Der abwärtskompatible HTML- und XAML-Export zum Ersetzen des Backslash-Zeichens durch das Yen-Zeichen wurde verbessert. Um dies zu erreichen, wurde die Eigenschaft **ReplaceBackslashWithYenSign** den Klassen [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) und [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) hinzugefügt.

#### Verwenden von SDT-Tags als Formularfeldnamen beim Exportieren in PDF <sup>24.8</sup>

Der PDF-Export mit Unterstützung für die Verwendung von SDT-Tags als Formularfeldnamen wurde durch Hinzufügen einer neuen Eigenschaft **UseSdtTagAsFormFieldName** zur Klasse [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) verbessert.

### Konvertieren, Laden und Speichern von Dokumenten

#### Exportieren von Links in das Markdown-Format <sup>24.7</sup>

Die Möglichkeit, den Export von Links im Markdown-Format zu steuern, wurde durch die Implementierung der Eigenschaft [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Eine neue Klasse **LowCode.Converter** wurde eingeführt, die eine Reihe von Methoden zum Konvertieren verschiedener Dokumenttypen mit einer einzigen Codezeile bereitstellt.

### Suchen und Vergleichen

#### Erweiterte Vergleichsoptionen <sup>24.6</sup>
Die Möglichkeit, Datenanalyse-Workflows mit verbesserten Vergleichsfunktionen zu optimieren, wurde hinzugefügt. Dazu gehören eine neue Option [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) und eine neu gestaltete Benutzeroberfläche für erweiterte Vergleiche.

### Sonstiges

* Die Funktion zum Entfernen leerer Seiten aus einem Dokument wurde durch Hinzufügen der Methode [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) implementiert. <sup>24.5</sup>
* Die Möglichkeit, das Vorhandensein von VBA-Makros zu prüfen, ohne ein Dokument zu laden, wurde durch Hinzufügen der Eigenschaft [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) bereitgestellt. <sup>24.5</sup>
* Das Beibehalten der Quellnummerierung beim Einfügen eines Dokuments mithilfe der LINQ Reporting Engine wird jetzt unterstützt. <sup>24.5</sup>
* Eine neue Eigenschaft [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) wurde hinzugefügt – diese bietet einen genaueren Zeitstempel für Kommentare und verbessert die Organisation und Nachverfolgbarkeit. <sup>24.6</sup>
* Die LINQ Reporting Engine wurde verbessert. Es wurden selektiv leere Absätze entfernt und benutzerdefinierte Nachrichten für fehlende Objektmitglieder definiert, was zu übersichtlicheren und informativeren Berichten führt. <sup>24.6</sup>
* Das Datums-/Uhrzeitformat wird jetzt automatisch erkannt, um einen nahtlosen Export in das XLSX-Format zu ermöglichen. <sup>24.7</sup>
* Die öffentliche Eigenschaft [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), mit der Sie überprüfen können, ob ein VBA-Projekt geschützt ist, wurde hinzugefügt. <sup>24.7</sup>
* Die Schriftartinformationen wurden durch die Eigenschaft **EmbeddingLicensingRights** erweitert, die den Klassen [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) und [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) hinzugefügt wurde. <sup>24.8</sup>
* Eine Möglichkeit zum effizienten Löschen von Abschnittskopf- und -fußzeilen unter Beibehaltung von Wasserzeichen wurde hinzugefügt, um genauer mit der Dokumentstruktur arbeiten zu können. Verwenden Sie zum Löschen von Abschnittskopf- und -fußzeilen die neue öffentliche Methode **ClearHeadersFooters**. <sup>24.8</sup>
* Die digitale Signatur von XPS-Dokumenten mit [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) wurde aktiviert – zu diesem Zweck wurde eine neue Eigenschaft **DigitalSignatureDetails** hinzugefügt. <sup>24.8</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Versionshinweise zu Aspose.Words für Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Erfahren Sie mehr über [Versionshinweise zu Aspose.Words für Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Erfahren Sie mehr über [Versionshinweise zu Aspose.Words für Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Erfahren Sie mehr über [Versionshinweise zu Aspose.Words für Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words für Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbessert die Erfahrung im Umgang mit Schlaganfallfarben, verbessert OLE-Objekte und LINQ-Berichterstattung sowie stellt eine neue Bibliographie Quellen öffentlich vor API.

Aspose.Words 24.2 erweiterte Diagramme API, Stilmanagement und LINQ Optionen. Diese Version von Aspose.Words auch die Fähigkeit, SvgSaveOptionen während des Renderns anzugeben, flexiblere Steuerbelastung Markdown Dateien und Arbeiten mit Referenztext für Fußnoten und Endnoten.

Aspose.Words 24.3 stellt einen neuen TIFF Reader/Writer und Emulation von binären Rasteroperationen für WMF-Metafiles vor. Aspose.Words 24.3 erweitert die Charts weiter API.

Aspose.Words 24.4 verbessert das Speichern von Formaten, einige Rendering-Optionen sowie die Arbeit mit digitalen Signaturen.

### Unterstützte Formate <sup>24.4</sup>

Das moderne **WebP**-Bildformat wird jetzt in Aspose.Words. Sie können jetzt WebP-Bilder in Dokumente einlesen und einfügen sowie Bilder im WebP-Format speichern.

### Rendering und Printing

#### Stroke Color Control <sup>ANHANG</sup>

Die [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) Klasse wurde mit einer Reihe von neuen öffentlichen Eigenschaften im Zusammenhang mit der Verwaltung von Schlaganfallfarben erweitert: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) und [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) und [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Diagramme zeichnen API Erweiterung <sup>24.2 / 24.3 / 24.4</sup>

Die **DrawingML Charts API** wird weiter ausgebaut.

#### Einbetten von Schriften, die in @font-face-Regeln deklariert sind <sup>24.4</sup>

Es wurde die Möglichkeit hinzugefügt, Schriften, die in @font-face-Regeln deklariert sind, in die Schriftdefinitionen des resultierenden Dokuments einzubetten, indem eine neue Eigenschaft namens [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) hinzugefügt wurde.

#### Arbeiten mit Leucht- und Reflexionsformatierung <sup>24.4</sup>

Die Möglichkeit, mit Leucht- und Reflexionsformatierung für ein Zeichenobjekt zu arbeiten, wurde implementiert.

### Laden und Speichern von Dokumenten

#### Geben Sie SvgSaveOptionen während des Renderings an <sup>KAPITEL 2</sup>

Die Fähigkeit, anzugeben [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) beim Rendern mit der [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) und [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) Methoden.

#### Leere Zeilen beim Laden speichern Markdown Dateien <sup>KAPITEL 2</sup>

Die Fähigkeit, leere Linien beim Laden zu bewahren Markdown Dateien wurden hinzugefügt.

#### Ein neuer TIFF Reader/Schreiber <sup>KAPITEL 3</sup>

Ein neuer TIFF-Leser/Schreiber für Aspose.Words für .NET Standard, .NET 6 und später wurde entwickelt. Aspose.Words für .NET 24.3 fügte Unterstützung beim Lesen von TIFF-Bildern mit JPEG und alten JPEG-Drucktypen hinzu und verbesserte auch die Qualität der Lese- und Schreibvorgänge deutlich.

### Sonstige

* Die Fähigkeit, den Text der `TextBox` OLE-Steuerung wurde eingeführt, indem eine neue [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) Immobilie zum neuen [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Klasse. ANHANG <sup>ANHANG</sup>
* Die Bibliographie Quellen öffentlich API wurde implementiert, indem ein paar neue [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) und [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) Klassen und [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) Aufzählung, sowie durch Hinzufügen eines neuen [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) Eigentum an der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. <sup>ANHANG</sup>
* An API um den Zugriff auf Typ-Mitglieder durch Vorlagen-Syntax für die LINQ Reporting Engine zu begrenzen. <sup>ANHANG</sup>
* Neue öffentliche Immobilien [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), und [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) für verbesserte Stilverwaltung wurden hinzugefügt [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasse. <sup>KAPITEL 2</sup>
* Die Funktionalität, den eigentlichen Referenzmarkentext für Fußnoten und Endnoten abzurufen, wurde mit der [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) und die [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) Methode. <sup>KAPITEL 2</sup>
* Kompatibilität mit `Word 2016` Diagramme für die `LINQ Reporting Engine` wurde aktiviert. <sup>KAPITEL 2</sup>
* Die Emulation binärer Rasteroperationen für WMF-Metafiles wurde implementiert. <sup>KAPITEL 3</sup>

* Es wurde die Möglichkeit aktiviert, Signaturoptionen für Dokumente innerhalb von SaveOptions zu definieren, indem eine neue Klasse namens [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) mit neuen öffentlichen Elementen hinzugefügt wurde, sowie neue Eigenschaften zu den Klassen [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) und [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) hinzugefügt wurden. <sup>24.4</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Java 24.1 freigeben](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 24.2 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Erfahren Sie mehr über [Aspose.Words für Java 24.3 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Erfahren Sie mehr über [Aspose.Words für Java 24.4 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words für Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 erweitert Rendering-Optionen, metafile Rendering Emulation und markdown Optionen speichern.

Aspose.Words 23.10 verbessert das Rendering, erweitert Optionen für das Laden und Speichern von Dokumenten und ermöglicht es Benutzern, Dokumente auf neue Weise zu verschmelzen.

Aspose.Words 23.11 verbessert die Arbeit mit Revisionen, XLSX-Format und Schriftarten auf der Chart-Legende mit zusätzlichen Optionen.

Aspose.Words 23.12 führt neue Eigenschaften und Aufzählungen für die Arbeit mit PDF-Dokumenten ein, Unterstützung für WebP Bilder und aktualisierte Bouncy Castle Bibliothek.

### Rendering und Printing

#### Anpassen von Axes Titel in ZeichnungML Diagramme <sup>23.9</sup>

Die Fähigkeit, Achsentitel in Zeichnungs-ML-Charts anzupassen, wurde durch die Umsetzung einer neuen öffentlichen Klasse eingeführt [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) und [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) Eigentum.

#### Bestimmung der vertikalen Position von Schriften innerhalb eines Absatzes <sup>23.9</sup>

Es ist nun möglich, die vertikale Position von Schriftarten innerhalb eines Absatzes mit der neuen Öffentlichkeit zu definieren [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) Eigentum und das neue [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Aufzählung.

#### Vordergrund Farbsteuerung <sup>ANHANG</sup>

Die Fähigkeit, die Vordergrundfarbe ohne Modifikatoren abzurufen, wurde dem [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) und [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) Klassen über die **BaseForeColor** Eigentum.

#### Erweiterung der Funktionalität von Diagrammen <sup>ANHANG</sup>

Die Funktionalität der [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), und [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) Klassen wurden mit neuen Methoden und Eigenschaften erweitert.

#### Automatische Einstellung und Passen eines Bildes in eine Form <sup>ANHANG</sup>

Durch die neue Form ist eine einfache Möglichkeit zur automatischen Einstellung und Passung eines Bildes in einer bestimmten Form geschaffen worden. [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) Methode.

#### Standard Schriftformatierung für Zeichnung ML Auf der Karte anzeigen <sup>ANHANG</sup>

Die Möglichkeit, Standard-Schriftformatierung für Legendeneinträge von Zeichnungs-ML-Charts anzugeben, wurde über die **Font** Eigentum. Diese Funktion erleichtert ein schlankeres und konsequenteres Aussehen für Chart-Elemente und verbessert die gesamte Dokumentenästhetik.

#### Seitenlayout beim Öffnen von PDF in Reader angeben <sup>ANHANG</sup>

Die Fähigkeit, das beim Öffnen eines Dokuments in einem PDF-Lesegerät zu verwendende Seitenlayout anzugeben, wurde durch die Einführung eines neuen [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) Eigentum an der [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Klasse und Einführung eines neuen [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Aufzählung.

### Laden und Speichern von Dokumenten

#### Angabe eines Ordnernamens zur Konstruktion von Image URIs in Markdown <sup>23.9</sup>

Die [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) wurde erweitert, indem [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) Eigenschaft, die es erlaubt, den Namen des Ordners anzugeben, der verwendet wird, um das in den Markdown Dokument.

#### PDF reduzieren Ausgangsgröße <sup>ANHANG</sup>

Verschiedene PDF-Rendering-Optimierungen, um die Ausgabegröße bei der Nutzung zu reduzieren [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) Einstellungen wurden implementiert.

#### Erkennung von Hyperlinks beim Laden von TXT-Dokumenten <sup>ANHANG</sup>

Die Funktion, Hyperlinks beim Laden von TXT-Dokumenten zu erkennen, wurde durch Hinzufügen eines neuen [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) Eigentum.

### Sonstige

- Metafile-Rendering-Emulation zur Bestimmung der Rasterungsgröße wurde implementiert, speziell für WMF-Pennbreite und EMF-Kosmetikstiftbreite. Um dies zu erreichen, **ScaleWmfFontsToMetafileSize** Eigentum wurde ersetzt durch [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) und die [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) wurde hinzugefügt. <sup>23.9</sup>
- Mit Hilfe der [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) Methode. <sup>ANHANG</sup>
- Ja. Die Fähigkeit zum Zugriff und Modifizieren von Stileigenschaften wurde durch die Einführung des neuen [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) Eigentum. <sup>ANHANG</sup>
- Die Methoden der [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasse. <sup>ANHANG</sup>
- Ein Weg, um zu kontrollieren, wann eine bestimmte Revision angenommen/verworfen werden soll oder nicht, indem die [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) und [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) Methoden. Diese Verbesserung gewährt Benutzern eine feinere Kontrolle über den Revisionsprozess. <sup>ANHANG</sup>
- Ja. Die Möglichkeit, alle Abschnitte eines Dokuments auf das gleiche XLSX Arbeitsblatt zu schreiben, wurde durch das neue [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) Aufzählungstyp und der neue [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) Eigentum. <sup>ANHANG</sup>
- Unterstützung für WebP Bild wurde eingeführt. Bitte beachten Sie, dass diese Funktion nur für .NetStandart und .NET6+ Versionen. <sup>ANHANG</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Java 23.9 Release Notes](/words/java/aspose-words-for-java-23-9-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.10 freigeben](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java Veröffentlichungen](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.12 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words für Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 verbessert die Fähigkeit, mit Diagrammreihendaten zu arbeiten und mit ODT-Dokumenten zu arbeiten, sowie Kopf- und Fußzeilen sowie deren Textumhüllung zu verbessern.

Aspose.Words 23.6 erweitert Rendering-Optionen, fügt ein neues Exportformat hinzu, verbessert die LINQ-Berichterstattung und LowCode Werkzeuge.

Aspose.Words 23.7 verbessert die Reporting-Funktionen, fügt ein neues Exportformat hinzu und führt Änderungen an der Arbeit mit Tabellen und digitalen Signaturen ein.

Aspose.Words 23.8 erweitert die Fähigkeiten verschiedener Formate, verbessert das Rendering und fügt neue Optionen für die Arbeit mit Feldern hinzu

### Unterstützte Formate

* Ab Version 23.6 kann ein Dokument im XLSX-Format gespeichert werden. Jetzt können Sie Ihre Dokumente in Excel-Format konvertieren. <sup>23.6</sup>

* Ab Version 23.7 kann eine Dokumentseite oder Form im EPS-Format gespeichert werden. <sup>L 347 vom 20.12.2013, S. 1).</sup>

* ### Neue Formateigenschaften

  - Die Funktionalität zur automatischen Erstellung von Inhaltsverzeichnis (TOC) für MOBI-Dokumente wurde eingeführt. <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>
  - Die [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) Konstruktor wurde erweitert [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>
  - Die Erstellung von vertikalen Texten für EMF-Metadateien wurde durchgeführt. <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>

### Rendering

#### Erhalten und ändern Daten der Tabellenreihe <sup>23.5</sup>

Das Feature, um Diagrammreihendaten zu erhalten und zu modifizieren, wurde durch Hinzufügen bereitgestellt:

- neue Klassen: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- neue enum-Typen: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Unterstützung für fortgeschrittene Typografie <sup>23.6</sup>

Unterstützung für Advanced Typography in WMF, EMF und EMF+ Rendering wurde hinzugefügt.

#### Farbige Inhalte auf der Seite <sup>23.6</sup>

Das öffentliche Eigentum [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), Anzeige, ob die Seite eingefärbt ist oder nicht, wurde hinzugefügt.

#### Formatierung für Diagrammdatenlabels <sup>23.6</sup>

Es wurde die Möglichkeit zur Einstellung von Füll-, Hub- und Ausrufformatierungen für Chart-Datenlabels implementiert.

### Mail Merge und Reporting

#### Dynamische HTML-Einfügung für LINQ Reporting Engine <sup>23.6</sup>

Eine neue Art der dynamischen HTML-Einfügung für LINQ Reporting Engine wurde hinzugefügt.

#### Mustache Tags Support <sup>L 347 vom 20.12.2013, S. 1).</sup>

Mustache tags werden nun im [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) und [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) Methoden.

#### LINQ Reporting Engine Template Syntax Updates <sup>L 347 vom 20.12.2013, S. 1).</sup>

Die LINQ Reporting Engine Template-Syntax unterstützt jetzt die `ElementAt` und ElementAtOrDefault Erweiterungsmethoden.

#### Angabe der Größe von Rendered Images <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>

Ein neues öffentliches Eigentum **ImageSize** zur Angabe der Größe der Bildwiedergaben im Pixel wurde eingeführt.

#### Whitespaces für JSON String Values – LINQ <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>

Der LINQ Reporting Engine wurde eine Option hinzugefügt, um Whitespaces für JSON-Stringwerte zu erhalten.

### LowCode <sup>23.6</sup>

Neu LowCode Es wurden Methoden hinzugefügt, mit denen verschiedene Arten von Dokumenten in ein einziges Ausgabedokument zusammengefasst werden sollen.

### Sonstige

- Die Unterstützung der Textumhüllung in Kopf- und Fußzeilen wurde implementiert. <sup>23.5</sup>
- Ja. Die Fähigkeit, digitale Signaturen von ODT-Dokumenten zu entfernen, wurde durch die [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Methode. <sup>23.5</sup>
- Ja. Das öffentliche Eigentum [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) um den Grund- und Rubintext des phonetischen Führers zu erhalten [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) wurde hinzugefügt. <sup>23.5</sup>
- Ja. Die Fähigkeit, einen digitalen Signaturwert aus einem digital signierten Dokument als Byte-Array abzurufen, wurde durch die Einführung eines neuen [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) Eigentum. <sup>L 347 vom 20.12.2013, S. 1).</sup>
- Die [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) und [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Klassen wurden mit neuen öffentlichen Mitgliedern erweitert – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), und [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>L 347 vom 20.12.2013, S. 1).</sup>
- Unterstützung für CITATION und BIBLIOGRAPHY Felder wurde hinzugefügt. <sup>Verordnung (EG) Nr. 231/2009 des Europäischen Parlaments und des Rates vom 23. November 2009 über die Haushaltsordnung für den Gesamthaushaltsplan der Union (ABl.</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Java 23.5 freigeben](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.6 freigeben](/words/java/aspose-words-for-java-23-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words für Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 verbessert die Leistung der Emulation des Rasterbetriebs sowie verbessert die Export- und Renderingqualität des Dokuments.

Aspose.Words 23.2 führt das Speichern von Dokumenten im MOBI-Format ein, verbessert das Diagramm-Rendering und macht bemerkenswerte Änderungen der Erscheinungsdetails des Dokuments.

Aspose.Words 23.3 verbessert den Import und Speichern von Dokumenten mit neuen Eigenschaften und verbessert auch die Qualität der Arbeit mit Hintergrund und Vordergrundfarbe und radialem Gradienten.

Aspose.Words 23.4 verbessert die Berechnung einiger Parameter und die Positionierung der Tabelle und des umgebenden Textes.

### Leistungsverbesserungen

#### Emulation von Rasteroperationen <sup>Artikel 2</sup>

Leistung und Qualität der Emulation von Rasteroperationen mit Metafiles wurden deutlich verbessert.

### Unterstützte Formate

#### Export nach MOBI <sup>23.2</sup>

Ab Version 23.2 kann ein Dokument im MOBI-Format gespeichert werden (auch PRC, AZW genannt – Amazon Kindles eigenes E-Book-Dateiformat). Jetzt können Sie nicht nur MOBI-Dokumente laden, sondern auch Ihre Dateien in das MOBI-Format exportieren.

### Rendering

#### Arbeit mit Shading Theme Farben <sup>Artikel 2</sup>

Die Fähigkeit, mit Schattierung Themenfarben zu arbeiten wurde implementiert.

#### Unterstützung von R-Quadrated Coeffizient in DML Charts <sup>Artikel 2</sup>

Unterstützung von R-Quadrat-Koeffizienten in DML-Diagramm-Trendlinien-Etiketten, wenn Rendering hinzugefügt wurde.

#### Chart Rendering Verbesserungen <sup>23.2</sup>

Seit 23.2 wurde die Chart Rendering deutlich verbessert.

#### Hintergrund und Vordergrund Farbsteuerung <sup>23.3</sup>

Die [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) Klasse wurde mit einer Reihe von neuen öffentlichen Eigenschaften im Zusammenhang mit Hintergrund und Vordergrund Farben erweitert: **ForeThemeColor** und **BackThemeColor**, **ForeTintAndShade** und **BackTintAndShade**.

#### Radiale Gradienten mit dem `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering von Radialgradienten mit der `SkiaSharp` nativer Shaker für .NET Standard wurde umgesetzt.

#### Abstand zwischen Tisch und umgebendem Text <sup>ANHANG</sup>

Die Fähigkeit, den Abstand zwischen der Tabelle und dem umgebenden Text festzulegen, wurde durch die Einführung neuer Eigenschaften in die [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Klasse: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), und [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Laden und Speichern von Dokumenten

#### Generieren `TOC` für AZW3 Dokumente <sup>Artikel 2</sup>

Die Fähigkeit zu erzeugen `TOC` (Inhaltstabelle) für AZW3-Dokumente wurde durch die Verwendung der [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) Eigentum.

#### Ausführende Liste Markdown <sup>Artikel 2</sup>

Eine Möglichkeit, den Export von Listenartikeln zu kontrollieren Markdown das Format durch das Hinzufügen der [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) Eigentum an der [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasse.

#### Dokumentation zur Verbesserung der Fortschritte <sup>23.3</sup>

Es wurden Fortschrittsmeldungen für MOBI- und AZW3-Formate implementiert.

#### Sentence und Word Spacing Anpassung <sup>23.3</sup>

Die Fähigkeit, die Satz- und Wortabstände bei der Dokumenteneinfuhr automatisch anzupassen, wurde durch die Einführung der **AdjustSentenceAndWordSpacing** Eigentum.

### Sonstige

- Ja. Die Fähigkeit, die Charakterabstandseinstellung eines Dokuments festzulegen, wurde durch die [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) Implementierung von Immobilien <sup>23.2</sup>
- Der Weg zur Anleitung Aspose.Words ob Textboxen, Fußnoten und Endnoten in Wortzählstatistiken enthalten sind, indem die [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) Eigentum <sup>23.2</sup>
- Eine neue Option für einen Dokumentstil, mit der angegeben werden kann, ob der Stil automatisch nach dem entsprechenden Wert neu definiert wird, wurde durch die [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) Eigentum <sup>23.2</sup>
- Ja. Die Fähigkeit zu bestimmen, ob [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) wird ein phonetic guide run mit der **IsPhoneticGuide** Eigentum <sup>ANHANG</sup>
- Eine einfache Möglichkeit, mit Serien und Achsen von Combo-Charts zu arbeiten, wurde durch die Einführung der **ChartAxisCollection** Klasse und Hinzufügen der **Chart.Axes** Eigentum <sup>ANHANG</sup>
- Neue öffentliche Eigenschaften, die mit der Form relativ Positionierung und Dimensionierung verbunden sind, wurden dem [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse <sup>ANHANG</sup>
- Genauigkeit und Leistung der Farbhelligkeitsberechnung für die automatische Textfarbenauflösung wurde gemäß den neuesten Versionen der Microsoft Word <sup>ANHANG</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Java Veröffentlichungen](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.2 Release Notes](/words/java/aspose-words-for-java-23-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.3 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Java 23.4 Release Notes](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Siehe auch

{{% alert color="primary" %}}

Diese Seite enthält die neuesten Release-Nachrichten für die letzten 2 Jahre. Für Details zu früheren Versionen, siehe die [Veröffentlichungen '](https://releases.aspose.com/words/java/release-notes/) Seiten in den entsprechenden Abschnitten.

{{% /alert %}}
