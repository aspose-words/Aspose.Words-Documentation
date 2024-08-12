---
title: Was ist neu
second_title: Aspose.Words für Python via .NET
articleTitle: Was ist neu in Aspose.Words für Python via .NET?
linktitle: Was ist neu in Aspose.Words für Python via .NET?
type: docs
description: "Aspose.Words für Python via .NET wird täglich erweitert und verbessert. Auf dieser Seite erfahren Sie mehr über die großen und interessantesten Funktionen des Produkts."
weight: 10
url: /de/python-net/what-s-new-in-aspose-words-for-python-net/
---

Auf dieser Seite werden die interessantesten neuen Aspose.Words-Funktionen beschrieben, die in den letzten Versionen eingeführt wurden.

## Aspose.Words für Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 erweitert die Optionen für Baugruppen, verbessert die Rendering-Funktionen und erweitert einige andere Optionen.

Aspose.Words 24.6 verbessert die Rendering-Optionen, verbessert die Such- und Vergleichsfunktion und erweitert mehrere andere Funktionen.

Aspose.Words 24.7 ändert die Art und Weise, wie Sie mit ActiveX arbeiten, erweitert die Rendering-Funktionen und ermöglicht den Export in die Formate Markdown und XLSX.

Aspose.Words 24.8 verbessert die Diagrammanpassung durch präzise Kontrolle über Achsenbeschriftungen, erweitert die Schriftartenverwaltung, verbessert die Handhabung der Dokumentstruktur und fügt neue Funktionen für HTML/XAML-Export, PDF-Funktionalität, Dokumentkonvertierung und digitale Signaturen hinzu.

### Unterstützte Formate

Ab Version 24.7 wird der Export in PDF/UA-2 unterstützt, um die Zugänglichkeit für Benutzer mit Behinderungen zu gewährleisten.

### Rendern und Drucken

#### Änderungen in Charts, Shapes und DrawingML <sup>24.5</sup>

* Das Rendern von DrawingML-Effekten für SVG-Grafiken wurde implementiert und erweitert die bisherige, auf Bilder beschränkte Funktionalität.
* Durch das Hinzufügen der Klassen [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) und [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) sowie der Eigenschaft [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) wurde Unterstützung für das Erstellen von Kombinationsdiagrammen und das Anpassen von Eigenschaften wie Lückenbreite, Überlappung und Blasenskalierung innerhalb von Reihengruppen eingeführt.
* Die Funktionalität zur Manipulation des SoftEdge-Effekts von Formen wurde durch Hinzufügen der Klasse [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) implementiert.
* Die Möglichkeit, Anpassungswerte von Formen zu ändern, wurde durch Hinzufügen von **AdjustmentCollection** und **Adjustment** öffentliche Klassen und [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) Eigentum.

#### Änderungen bei Diagrammen, Formen und Zeichnungen <sup>24.6</sup>

* Die Diagrammfunktionen wurden verbessert. Sie können jetzt eine größere Vielfalt an Diagrammen erstellen, darunter *Treemaps*, *Sunbursts*, *Histogramme*, *Pareto*-Diagramme, *Box & Whisker*-Diagramme, *Wasserfälle* und *Trichter*. Dadurch können Sie Ihre Daten vielfältiger und informativer visualisieren.
* Die Farbsteuerung für die Schattenformatierung wurde verbessert. Sie können das Erscheinungsbild Ihrer Dokumente genauer steuern, indem Sie auf Schattenfarben zugreifen.
* Die Leistungssteigerung für das Hintergrund-Rendering wurde verbessert. Dank der nativen Kacheltechnologie können Sie das Rendern von Hintergründen mit kleinen Elementen erheblich beschleunigen.
* Es wurden realistische Farbverläufe für Formen hinzugefügt. Sie können jetzt DML-Formen mit nichtlinearen Farbverläufen erstellen, die den visuellen Stil von Microsoft Word nachahmen und so ein eleganteres Erscheinungsbild erzielen.

#### Anpassung von Diagrammdatenbeschriftungen <sup>24.7</sup>

Die Möglichkeit, Diagrammdatenbeschriftungen wie **Ausrichtung** und **Rotation** anzupassen, wurde hinzugefügt.

#### Benutzerdefinierte Zahlenformatierung für Listenebenen <sup>24.7</sup>

Ein Setter für die öffentliche Eigenschaft [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) wurde hinzugefügt. Sie können jetzt eine benutzerdefinierte Zahlenformatierung für Listenebenen definieren.

#### Änderungen bei der Arbeit mit ActiveX <sup>24.7</sup>

* Die Eigenschaften von ActiveX-Objekten können jetzt geändert werden, sodass Sie mehr Kontrolle über ihr Verhalten haben.
* Die Möglichkeit, den Wert des ActiveX-Steuerelements mit Optionsfeld zu ändern, um dynamische Interaktion zu ermöglichen, wurde hinzugefügt.
* Die Möglichkeit, ein ActiveX-Kontrollkästchen auf „aktiviert“ oder „deaktiviert“ umzuschalten, wurde hinzugefügt.

#### Kontrolle über die Ausrichtung und Drehung der Achsenmarkierungsbeschriftungen des Diagramms <sup>24.8</sup>

Für eine bequemere Diagrammanpassung wurde eine präzise Kontrolle über die Ausrichtung und Drehung der Achsenmarkierungsbeschriftungen des Diagramms hinzugefügt – die Klasse AxisTickLabels wurde um neue Eigenschaften für Ausrichtung und Drehung erweitert.

#### Ersetzen des Backslash durch das Yen-Zeichen <sup>24.8</sup>

Der abwärtskompatible HTML- und XAML-Export zum Ersetzen des Backslash-Zeichens durch das Yen-Zeichen wurde verbessert. Um dies zu erreichen, wurde die Eigenschaft ReplaceBackslashWithYenSign den Klassen HtmlSaveOptions und XamlFlowSaveOptions hinzugefügt.

#### Verwenden von SDT-Tags als Formularfeldnamen beim Exportieren in PDF <sup>24.8</sup>

Der PDF-Export mit Unterstützung für die Verwendung von SDT-Tags als Formularfeldnamen wurde durch Hinzufügen einer neuen Eigenschaft UseSdtTagAsFormFieldName zur Klasse PdfSaveOptions verbessert.

### Konvertieren, Laden und Speichern von Dokumenten

#### Exportieren von Links in das Markdown-Format <sup>24.7</sup>

Die Möglichkeit, den Export von Links im Markdown-Format zu steuern, wurde durch die Implementierung der Eigenschaft [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/) hinzugefügt.

#### LowCode <sup>24.8</sup>

Eine neue Klasse LowCode.Converter wurde eingeführt, die eine Reihe von Methoden zum Konvertieren verschiedener Dokumenttypen mit einer einzigen Codezeile bereitstellt.

### Suchen und Vergleichen

#### Erweiterte Vergleichsoptionen <sup>24.6</sup>
Die Möglichkeit, Datenanalyse-Workflows mit verbesserten Vergleichsfunktionen zu optimieren, wurde hinzugefügt. Dazu gehören eine neue Option [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) und eine neu gestaltete Benutzeroberfläche für erweiterte Vergleiche.

### Andere

* Die Funktion zum Entfernen leerer Seiten aus einem Dokument wurde durch Hinzufügen der Methode [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/) implementiert. <sup>24.5</sup>
* Die Möglichkeit, das Vorhandensein von VBA-Makros zu überprüfen, ohne ein Dokument zu laden, wurde durch Hinzufügen der Eigenschaft [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) bereitgestellt. <sup>24.5</sup>
* Das Beibehalten der Quellennummerierung beim Einfügen eines Dokuments mit der LINQ Reporting Engine wird jetzt unterstützt. <sup>24.5</sup>
* Eine neue Eigenschaft [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) wurde hinzugefügt – diese bietet einen genaueren Zeitstempel für Kommentare und verbessert die Organisation und Nachverfolgbarkeit. <sup>24.6</sup>
* Die LINQ Reporting Engine wurde verbessert. Es wurden selektiv leere Absätze entfernt und benutzerdefinierte Nachrichten für fehlende Objektmitglieder definiert, was zu übersichtlicheren und informativeren Berichten führt. <sup>24.6</sup>
* Das Datums-/Uhrzeitformat wird jetzt automatisch erkannt, um einen nahtlosen Export in das XLSX-Format zu ermöglichen. <sup>24.7</sup>
* Die öffentliche Eigenschaft [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), mit der Sie überprüfen können, ob ein VBA-Projekt geschützt ist, wurde hinzugefügt. <sup>24.7</sup>
* Die Schriftartinformationen wurden durch die Eigenschaft EmbeddingLicensingRights erweitert, die den Klassen FontInfo und PhysicalFontInfo hinzugefügt wurde. <sup>24.8</sup>
* Eine Möglichkeit zum effizienten Löschen von Abschnittskopf- und -fußzeilen unter Beibehaltung von Wasserzeichen wurde hinzugefügt, um genauer mit der Dokumentstruktur arbeiten zu können. Verwenden Sie zum Löschen von Abschnittskopf- und -fußzeilen die neue öffentliche Methode ClearHeadersFooters. <sup>24.8</sup>
* Die digitale Signatur von XPS-Dokumenten mit XpsSaveOptions wurde aktiviert – zu diesem Zweck wurde eine neue Eigenschaft DigitalSignatureDetails hinzugefügt. <sup>24.8</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.5 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.6 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.7 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.8 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbessert die Erfahrung bei der Verwaltung von Strichfarben, verbessert OLE-Objekte und führt eine neue öffentliche API-Datei für Bibliographiequellen ein.

Aspose.Words 24.2 erweiterte Diagramm-API, Stilverwaltung und LINQ-Optionen. Mit dieser Version von Aspose.Words wurde außerdem die Möglichkeit eingeführt, beim Rendern SVGSaveOptions anzugeben, das Laden von Markdown-Dateien flexibler zu steuern und mit Referenztext für Fußnoten und Endnoten zu arbeiten.

Aspose.Words 24.3 führt einen neuen TIFF Reader/Writer und die Emulation binärer Rasteroperationen für WMF-Metadateien ein. Aspose.Words 24.3 erweitert auch weiterhin die Charts API.

Aspose.Words 24.4 verbessert das Speichern von Formaten, einige Rendering-Optionen sowie die Arbeit mit digitalen Signaturen.

### Unterstützte Formate <sup>24.4</sup>

Das moderne **WebP**-Bildformat wird jetzt in Aspose.Words für .NET Framework 4.6.2 und höher unterstützt. Sie können jetzt WebP-Bilder in Dokumente einlesen und einfügen sowie Bilder im WebP-Format speichern. Bitte beachten Sie, dass WebP derzeit nur in .NET Standard und .NET Framework v4.6.2 und höher verfügbar ist.

### Rendern und Drucken

#### Kontrolle der Strichfarbe <sup>24.1</sup>

Die [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/)-Klasse wurde um eine Reihe neuer öffentlicher Eigenschaften im Zusammenhang mit der Verwaltung von Strichfarben erweitert: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) und [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) und [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### DrawingML Charts API-Erweiterung <sup>24.2 / 24.3 / 24.4</sup>

Die **DrawingML Charts API** wird weiterhin erweitert.

#### Einbetten von Schriften, die in @font-face-Regeln deklariert sind <sup>24.4</sup>

Es wurde die Möglichkeit hinzugefügt, Schriften, die in @font-face-Regeln deklariert sind, in die Schriftdefinitionen des resultierenden Dokuments einzubetten, indem eine neue Eigenschaft namens [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) hinzugefügt wurde.

#### Arbeiten mit Leucht- und Reflexionsformatierung <sup>24.4</sup>

Die Möglichkeit, mit Leucht- und Reflexionsformatierung für ein Zeichenobjekt zu arbeiten, wurde implementiert.

### Dokumente laden und speichern

#### Geben Sie SVGSaveOptions beim Rendern an <sup>24.2</sup>

Die Möglichkeit, [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) während des Renderns anzugeben, wurde mithilfe der Methoden [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) und [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) hinzugefügt.

#### Leere Zeilen beim Laden von Markdown-Dateien beibehalten <sup>24.2</sup>

Es wurde die Möglichkeit hinzugefügt, leere Zeilen beim Laden von Markdown-Dateien beizubehalten.

#### Ein neuer TIFF Reader/Writer<sup>24.3</sup>

Für Aspose.Words wurde ein neuer TIFF Reader/Writer entwickelt. Aspose.Words für .NET 24.3 unterstützt das Lesen von TIFF-Bildern mit den Komprimierungstypen JPEG und Old JPEG und verbessert signifikant die Qualität von Lese- und Schreibvorgängen.

### Andere

* Durch das Hinzufügen einer neuen **Text**-Eigenschaft zur neuen **TextBoxControl**-Klasse wurde die Möglichkeit eingeführt, den Text des `TextBox`-OLE-Steuerelements zu ändern. <sup>24.1</sup>
* Das öffentliche API von Bibliography Sources wurde durch das Hinzufügen eines neuen Namespace [Aspose.Words.Bibliography]() mit seinen neuen Klassen und Aufzählungen und durch das Hinzufügen einer neuen [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) -Eigenschaft zur [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Klasse implementiert. <sup>24.1</sup>
* Der [Style](https://reference.aspose.com/words/python-net/aspose.words/style/)-Klasse wurden neue öffentliche Eigenschaften [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) und [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) für eine verbesserte Stilverwaltung hinzugefügt. <sup>24.2</sup>
* Die Funktionalität zum Abrufen des tatsächlichen Referenzmarkentextes für Fußnoten und Endnoten wurde durch die Eigenschaft [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) und die Methode [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) erweitert. <sup>24.2</sup>
* Die Emulation von binären Rasteroperationen für WMF-Metadateien wurde implementiert. <sup>24.3</sup>
* Es wurde die Möglichkeit aktiviert, Signaturoptionen für Dokumente innerhalb von SaveOptions zu definieren, indem eine neue Klasse namens [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) mit neuen öffentlichen Elementen hinzugefügt wurde, sowie neue Eigenschaften zu den Klassen [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) und [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) hinzugefügt wurden. <sup>24.4</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.1 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.2 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.3 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.4 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 erweitert die Rendering-Optionen, die Metadatei-Rendering-Emulation und die markdown-Speicheroptionen.

Aspose.Words 23.10 verbessert das Rendering, erweitert die Optionen zum Laden und Speichern von Dokumenten und ermöglicht Benutzern das Zusammenführen von Dokumenten auf neue Arten.

Aspose.Words 23.11 erweitert die Arbeit mit Revisionen, XLSX-Format und Schriftarten in der Diagrammlegende um zusätzliche Optionen.

Aspose.Words 23.12 führt neue Eigenschaften und Aufzählungen für die Arbeit mit PDF- und OOXML-Dokumenten sowie Unterstützung für WebP-Bilder ein.

### Rendern und Drucken

#### Anpassen von Achsentiteln in DrawingML-Diagrammen <sup>23.9</sup>

Die Möglichkeit, Achsentitel in DrawingML-Diagrammen anzupassen, wurde durch die Implementierung einer neuen [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/)- und [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/)-Eigenschaft für öffentliche Klassen eingeführt.

####  Bestimmen der vertikalen Position von Schriftarten innerhalb eines Absatzes <sup>23.9</sup>

Mit der neuen öffentlichen [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/)-Eigenschaft und der neuen [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/)-Enumeration ist es jetzt möglich, die vertikale Position von Schriftarten innerhalb eines Absatzes zu definieren.

#### Vordergrundfarbsteuerung <sup>23.10</sup>

Den [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/)- und [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/)-Klassen wurde über die **BaseForeColor**-Eigenschaft die Möglichkeit hinzugefügt, die Vordergrundfarbe ohne Modifikatoren abzurufen.

#### Erweiterung der Funktionalität von Diagrammen <sup>23.10</sup>

Die Funktionalität der Klassen [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) und [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) wurde um neue Methoden und Eigenschaften erweitert.

#### Ein Bild automatisch anpassen und in eine Form einpassen <sup>23.10</sup>

Die neue [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default)-Methode bietet eine einfache Möglichkeit, ein Bild automatisch anzupassen und an eine bestimmte Form anzupassen.

#### Standardschriftformatierung für DrawingML-Diagrammlegendeneinträge <sup>23.11</sup>

Über die [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/)-Eigenschaft wurde die Möglichkeit hinzugefügt, die Standardschriftformatierung für Legendeneinträge von DrawingML-Diagrammen festzulegen. Diese Funktion ermöglicht ein schlankeres und einheitlicheres Erscheinungsbild von Diagrammelementen und verbessert so die Gesamtästhetik des Dokuments.

#### Geben Sie das Seitenlayout beim Öffnen von PDF in Reader <sup>23.12</sup> an

Die Möglichkeit, das Seitenlayout anzugeben, das beim Öffnen eines Dokuments in einem PDF-Reader verwendet werden soll, wurde durch die Einführung einer neuen [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/)-Eigenschaft in die [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)-Klasse und die Einführung einer neuen [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/)-Enumeration hinzugefügt.

### Dokumente laden und speichern

#### Angeben eines Ordnernamens zum Erstellen von Bild-URIs in Markdown <sup>23.9</sup>

Die [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/)-Klasse wurde um die [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/)-Eigenschaft erweitert, die es ermöglicht, den Namen des Ordners anzugeben, der zum Erstellen von Bild-URIs verwendet wird, die in das Markdown-Dokument geschrieben werden.

#### Reduzieren Sie die PDF-Ausgabegröße <sup>23.10</sup>

Verschiedene PDF-Rendering-Optimierungen zur Reduzierung der Ausgabegröße bei Verwendung von [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)-Einstellungen wurden implementiert.

#### Hyperlinks beim Laden von TXT-Dokumenten erkennen <sup>23.10</sup>

Die Funktion zur Erkennung von Hyperlinks beim Laden von TXT-Dokumenten wurde durch das Hinzufügen einer neuen [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/)-Eigenschaft implementiert.

### Andere

– Metadatei-Rendering-Emulation zur Bestimmung der Rasterisierungsgröße wurde implementiert, insbesondere für die WMF-Stiftbreite und die EMF-Kosmetikstiftbreite. Um dies zu erreichen, wurde die **ScaleWmfFontsToMetafileSize**-Eigenschaft durch die [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/)-Eigenschaft ersetzt und die [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/)-Eigenschaft hinzugefügt. <sup>23.9</sup>
- Mit der [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions)-Methode wurde eine vereinfachte Methode zum Einfügen eines Dokuments in ein anderes Dokument an der aktuellen Cursorposition eingeführt. <sup>23.10</sup>
– Durch die Einführung der neuen [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/)-Eigenschaft wurde die Möglichkeit hinzugefügt, auf Stileigenschaften zuzugreifen und diese zu ändern. <sup>23.10</sup>
- Den Methoden der [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)-Klasse wurde ein generischer Typparameter hinzugefügt. <sup>23.10</sup>
– Die Möglichkeit, alle Abschnitte eines Dokuments in dasselbe XLSX-Arbeitsblatt zu schreiben, wurde durch den neuen [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/)-Aufzählungstyp und die neue [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/)-Eigenschaft bereitgestellt. <sup>23.11</sup>
* Durch die neue Zip64Mode-Eigenschaft der `OoxmlSaveOptions`-Klasse und die neue Zip64Mode-Enumeration wurde eine Möglichkeit implementiert, zu steuern, wie ZIP64-Formaterweiterungen für OOXML-Dokumente verwendet werden. <sup>23.12</sup>
* Unterstützung für WebP-Bilder wurde eingeführt. Bitte beachten Sie, dass diese Funktion nur für die Versionen .NetStandart und .NET6+ verfügbar ist. <sup>23.12</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.9 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.10 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.11 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Erfahren Sie mehr über [Aspose.Words für .NET 23.12 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 verbessert die Fähigkeit, mit Diagrammseriendaten und ODT-Dokumenten zu arbeiten, und verbessert außerdem Kopf-/Fußzeilen und deren Textumbruch.

Aspose.Words 23.6 erweitert die Rendering-Optionen, fügt ein neues Exportformat hinzu und verbessert die LINQ-Berichterstellung und LowCode-Tools.

Aspose.Words 23.7 verbessert die Berichtsfunktionen, fügt ein neues Exportformat hinzu und führt Änderungen bei der Arbeit mit Tabellen und digitalen Signaturen ein.

Aspose.Words 23.8 erweitert die Möglichkeiten verschiedener Formate, verbessert das Rendering und fügt neue Optionen für die Arbeit mit Feldern hinzu

### Unterstützte Formate

* Ab Version 23.6 ist es möglich, ein Dokument im XLSX-Format zu speichern. Jetzt können Sie Ihre Dokumente in das Excel-Format konvertieren. <sup>23.6</sup>

* Ab Version 23.7 ist es möglich, eine Dokumentseite oder -form im EPS-Format zu speichern. <sup>23.7</sup>

### Neue Formatfunktionen

- Die Funktionalität zur automatischen Generierung von Inhaltsverzeichnissen (TOC) für MOBI-Dokumente wurde eingeführt. <sup>23.8</sup>
- Der [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions)-Konstruktor wurde um [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) erweitert. <sup>23.8</sup>
- Die Gestaltung von vertikalem Text für EMF-Metadateien wurde implementiert. <sup>23.8</sup>

### Rendern

#### Abrufen und Ändern von Diagrammreihendaten <sup>23.5</sup>

Die Funktion zum Abrufen und Ändern von Diagrammseriendaten wurde durch das Hinzufügen von Folgendem bereitgestellt:

- neue Klassen: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- neue Enum-Typen: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Unterstützung für Advanced Typography <sup>23.6</sup>

Unterstützung für erweiterte Typografie im WMF-, EMF- und EMF+-Rendering wurde hinzugefügt.

#### Farbiger Inhalt auf der Seite <sup>23.6</sup>

Die öffentliche Eigenschaft [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), die angibt, ob die Seite farbig ist oder nicht, wurde hinzugefügt.

#### Formatierung für Diagrammdatenbeschriftungen <sup>23.6</sup>

Die Möglichkeit, Füll-, Strich- und Beschriftungsformatierungen für Diagrammdatenbeschriftungen festzulegen, wurde implementiert.

### Mail Merge und Berichterstattung

#### Dynamische HTML-Einfügung für LINQ Reporting Engine <sup>23.6</sup>

Eine neue Möglichkeit der dynamischen HTML-Einfügung für die LINQ Reporting Engine wurde hinzugefügt.

#### Unterstützung für Mustache-Tags <sup>23.7</sup>

Mustache-Tags werden jetzt in den [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/)- und [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/)-Methoden unterstützt.

#### Festlegen der Größe gerenderter Bilder <sup>23.8</sup>

Eine neue öffentliche Eigenschaft [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) zur Angabe der Größe gerenderter Bilder in Pixel wurde eingeführt.

#### Leerzeichen für JSON-Stringwerte beibehalten – LINQ <sup>23.8</sup>

Der LINQ Reporting Engine wurde eine Option hinzugefügt, um Leerzeichen für JSON-Zeichenfolgenwerte beizubehalten.

### LowCode <sup>23.6</sup>

Es wurden neue LowCode-Methoden hinzugefügt, die verschiedene Dokumenttypen in einem einzigen Ausgabedokument zusammenführen sollen.

### Andere

- Unterstützung für Textumbruch in Kopf-/Fußzeilen wurde implementiert. <sup>23.5</sup>
– Die Möglichkeit, digitale Signaturen aus ODT-Dokumenten zu entfernen, wurde über die [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str)-Methode hinzugefügt. <sup>23.5</sup>
– Die öffentliche Eigenschaft [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) zum Abrufen des Basis- und Ruby-Textes des phonetischen Leitfadens [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) wurde hinzugefügt. <sup>23.5</sup>
– Durch die Einführung einer neuen [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/)-Eigenschaft wurde die Möglichkeit hinzugefügt, einen digitalen Signaturwert aus einem digital signierten Dokument als Byte-Array abzurufen. <sup>23.7</sup>
– Die Klassen [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) und [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) wurden um neue öffentliche Mitglieder erweitert – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) und [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.5 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.6 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.7 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.8 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 23.1, 23.2, 23.3, 23.4

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

Die [Fill](https://reference.aspose.com/words/de/net/aspose.words.drawing/fill/)-Klasse wurde um eine Reihe neuer öffentlicher Eigenschaften im Zusammenhang mit Hintergrund- und Vordergrundfarben erweitert: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) und [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) und [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Radiale Farbverläufe mit dem `SkiaSharp` Native Shader <sup>23.3</sup>

Das Rendern radialer Verläufe mit dem nativen `SkiaSharp`-Shader für .NET Standard wurde implementiert.

#### Abstand zwischen der Tabelle und dem umgebenden Text <sup>23.4</sup>

Durch die Einführung neuer Eigenschaften in die [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Klasse wurde die Möglichkeit hinzugefügt, den Abstand zwischen der Tabelle und dem umgebenden Text festzulegen: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) und [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Dokumente laden und speichern

#### `TOC` für AZW3-Dokumente generieren <sup>23.1</sup>

Die Möglichkeit, `TOC` (Inhaltsverzeichnis) für AZW3-Dokumente zu generieren, wurde durch die Verwendung der [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/)-Eigenschaft hinzugefügt.

#### Listenelemente nach Markdown <sup>23.1</sup> exportieren

Durch das Hinzufügen der [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/)-Eigenschaft zur [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/)-Klasse wurde eine Möglichkeit bereitgestellt, den Export von Listenelementen in das Markdown-Format zu steuern.

#### Benachrichtigungen über den Fortschritt der Dokumentspeicherung <sup>23.3</sup>

Das Speichern von Fortschrittsbenachrichtigungen für die Formate MOBI und AZW3 wurde implementiert.

#### Anpassung von Satz- und Wortabständen <sup>23.3</sup>

Durch die Einführung der [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/)-Eigenschaft wurde die Möglichkeit hinzugefügt, anzugeben, ob Satz- und Wortabstände beim Dokumentimport automatisch angepasst werden sollen.

### Andere

– Durch die [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/)-Eigenschaftsimplementierung <sup>23.2</sup> wurde die Möglichkeit hinzugefügt, die Anpassung des Zeichenabstands eines Dokuments anzugeben
– Die Möglichkeit, Aspose.Words anzuweisen, ob Textfelder, Fußnoten und Endnoten in die Wortzahlstatistik einbezogen werden sollen, wurde durch Hinzufügen der [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/)-Eigenschaft <sup>23.2</sup> bereitgestellt
– Über die [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/)-Eigenschaft <sup>23.2</sup> wurde eine neue Option für einen Dokumentstil eingeführt, mit der festgelegt werden kann, ob der Stil basierend auf dem entsprechenden Wert automatisch neu definiert wird
– Mithilfe der [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/)-Eigenschaft <sup>23.4</sup> wurde die Möglichkeit hinzugefügt, festzustellen, ob [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ein phonetischer Guide-Lauf ist
- Eine einfache Möglichkeit, mit Reihen und Achsen von Kombinationsdiagrammen zu arbeiten, wurde durch die Einführung der [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/)-Klasse und das Hinzufügen der [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/)-Eigenschaft <sup>23.4</sup> implementiert
– Der [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse <sup>23.4</sup> wurden neue öffentliche Eigenschaften hinzugefügt, die mit der relativen Positionierung und Größe der Form verbunden sind
– Genauigkeit und Leistung der Farbhelligkeitsberechnung für die automatische Textfarbauflösung wurden gemäß den neuesten Versionen von Microsoft Word <sup>23.4</sup> verbessert

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.1 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.2 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.3 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 23.4 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 erweitert die Optionen zum Laden und Speichern von Dokumenten und verbessert die Interaktion mit einigen anderen Optionen.

Aspose.Words 22.10 verbessert die Such- und Ersetzungsoptionen, erweitert OLE-Objekte und erweitert die Listenfunktionalität.

Aspose.Words 22.11 erweitert seine Funktionalität um neue Optionen für komfortableres Arbeiten mit bereits bekannten Objekten: OLE und strukturierte Dokument-Tags.

Aspose.Words 22.12 verbessert die Rendering-Funktionen und führt Optionen für die Arbeit mit Rändern beim Laden/Speichern eines Dokuments ein.

### Leistungsverbesserungen <sup>22.12</sup>

Es wurde eine Optimierung eingeführt, die die Tiefe der Verschachtelung des Grafikstatus beim Rendern in PDF erheblich reduziert, um die Spezifikationskonformität aufrechtzuerhalten.

### Rendern und Drucken

#### Neue Eigenschaften für die Randdarstellung <sup>22.12</sup>

Neue öffentliche Eigenschaften [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) und [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) wurden eingeführt.

#### Lineare Trendlinienformel für DrawingML-Rendering <sup>22.12</sup>

Die Darstellung linearer Trendlinienformeln für DrawingML-Diagramme wurde implementiert.

#### Schriftart-Fallback-Einstellungen für Google Noto-Schriftarten <sup>22.12</sup>

Die vordefinierten Schriftart-Fallback-Einstellungen für Google Noto-Schriftarten wurden aktualisiert.

### Dokumente laden und speichern

#### Kopf- oder Fußzeilenformen zwischenspeichern, um die PDF-Größe zu reduzieren <sup>22.9</sup>

Die Möglichkeit, Kopf-/Fußzeilenformen zwischenzuspeichern, um die Größe der ausgegebenen PDF-Datei zu reduzieren, wurde durch Hinzufügen einer neuen **CacheHeaderFooterShapes**-Eigenschaft implementiert.

#### Automatische Nummerierungserkennung beim Laden eines Dokuments <sup>22.9</sup>

Die Möglichkeit, die [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/)-Eigenschaft beim Laden von Text anzugeben, wurde durch eine Erweiterung der [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/)-Klasse implementiert.

#### Angeben eines bestimmten Margin-Typs <sup>22.12</sup>

Die Möglichkeit, einen bestimmten **Margin**-Typ für den angegebenen Abschnitt anzugeben, wurde implementiert.

### Suchen und vergleichen <sup>22.10</sup>

Die Möglichkeit, [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) bei Such- und Ersetzungsoptionen zu ignorieren, wurde durch das Hinzufügen einer neuen [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/)-Eigenschaft zur [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/)-Klasse implementiert.

### Andere

- Eine neue Funktion, um FieldEQ als OfficeMath zu erhalten, wurde hinzugefügt. <sup>22.9</sup>
- Die Erstellung strukturierter Dokument-Tags vom Typ Group auf Zeilenebene war erlaubt. <sup>22.9</sup>
– OLE-Objekte und -Steuerelemente werden jetzt beim Konvertieren eines Dokuments in HTML als Metadateibilder behandelt. <sup>22.10</sup>
– Durch die Einführung einer neuen **HasSameTemplate**-Methode in die [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/)-Klasse wurde eine neue Funktion hinzugefügt, um zu überprüfen, ob eine bestimmte Liste aus derselben Vorlage wie die verglichene Liste erstellt wurde. <sup>22.10</sup>
- Die Möglichkeit, neue strukturierte Dokument-Tags vom Typ [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) zu erstellen, wurde hinzugefügt. <sup>22.11</sup>
– Es wurde eine neue **EmbedAttachments**-Eigenschaft eingeführt, die es Benutzern ermöglicht, OLE-Anhänge aus einem Quelldokument in das ausgegebene PDF-Dokument einzubetten. <sup>22.11</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.9 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.10 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.11 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.12 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Siehe auch

{{% alert color="primary" %}}

Diese Seite enthält die neuesten Veröffentlichungsnachrichten der letzten 2 Jahre. Einzelheiten zu früheren Versionen finden Sie auf den [Versionshinweise'](/words/python-net/release-notes/)-Seiten in den entsprechenden Abschnitten.

{{% /alert %}}