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

## Aspose.Words für Python via .NET 24.1, 24.2, 24.3

Aspose.Words 24.1 verbessert die Erfahrung bei der Verwaltung von Strichfarben, verbessert OLE-Objekte und führt eine neue öffentliche API-Datei für Bibliographiequellen ein.

Aspose.Words 24.2 erweiterte Diagramm-API, Stilverwaltung und LINQ-Optionen. Mit dieser Version von Aspose.Words wurde außerdem die Möglichkeit eingeführt, beim Rendern SVGSaveOptions anzugeben, das Laden von Markdown-Dateien flexibler zu steuern und mit Referenztext für Fußnoten und Endnoten zu arbeiten.

Aspose.Words 24.3 führt einen neuen TIFF Reader/Writer und die Emulation binärer Rasteroperationen für WMF-Metadateien ein. Aspose.Words 24.3 erweitert auch weiterhin die Charts API.

### Rendern und Drucken

#### Kontrolle der Strichfarbe <sup>24.1</sup>

Die [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/)-Klasse wurde um eine Reihe neuer öffentlicher Eigenschaften im Zusammenhang mit der Verwaltung von Strichfarben erweitert: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) und [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) und [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### DrawingML Charts API-Erweiterung <sup>24.2 / 24.3</sup>

Die **DrawingML Charts API** wird weiterhin erweitert.

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

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.1 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.2 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 24.3 Versionshinweise](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

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

## Aspose.Words für Python via .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 bietet Unterstützung für neue Ladeformate und eine neue Druckseitengröße und verbessert einige Rendering-Optionen.

Aspose.Words 22.6 erweitert die Möglichkeiten der PDF-Konvertierung in andere Formate und verbessert die Arbeit mit DrawingML und dem Volltextfülleffekt.

Aspose.Words 22.7 erweitert die Möglichkeiten der Arbeit mit Rendering-Funktionen und fügt außerdem neue Funktionen für die Arbeit mit HTML-Import und -Export in PDF hinzu.

Aspose.Words 22.8 führt ein neues Exportformat ein und verbessert verschiedene Rendering-Algorithmen.

Das API wurde für eine flexiblere und bequemere Entwicklung erweitert.

### Unterstützte Formate

* Unterstützung für das Laden von EPUB- und XML-Dokumenten wurde durch das Hinzufügen neuer Werte zur **LoadFormat**-Enumeration eingeführt. Ab Version 22.5 ist es möglich, EPUB- und XML-Dokumente in das Aspose.Words-Dokumentmodell zu laden und in ein beliebiges [Unterstützte Dokumentformate](/words/de/python-net/supported-document-formats/) zu konvertieren. <sup>22.5</sup>
* Ab Version 22.8 ist es möglich, ein Dokument im AZW3-Format zu speichern – Amazon Kindles proprietäres E-Book-Dateiformat (KF8 ist ein anderer Name für das Format). Jetzt können Sie nicht nur AZW3-Dokumente laden, sondern Ihre Dateien auch in das AZW3-Format exportieren, bei dem es sich im Wesentlichen um ein kompiliertes EPUB handelt. <sup>22.8</sup>

### Rendern und Drucken

#### Neue Druckgröße <sup>22,5</sup>

Durch die Einführung eines neuen Werts in die [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/)-Aufzählung wurde Unterstützung für die Druckseitengröße "Umschlag Nr. 10" hinzugefügt.

#### Rendern von MathML-Formeln <sup>22.5</sup>

Die Darstellung eines Rahmens um MathML-Formeln und die Schriftarterkennung beim Rendern von Zeichen für solche Formeln wurden verbessert.

#### DML-Diagrammverbesserungen <sup>22.6</sup>

Die öffentlichen API-Diagramme von DrawingML wurden um die Unterstützung von Farbverläufen, Texturen und Musterfüllungen erweitert.

#### Glyph skizziert das Parsen für OpenType <sup>22.7</sup>

Das Parsen von Aspose.Words-eigenen glyph-Umrissen für OpenType-Schriftarten (CFF) wurde implementiert.

Bisher wurde die glyph-Analyse für OpenType-Schriftarten (CFF) über GDI+ durchgeführt. Jetzt funktioniert es also in Fällen, in denen GDI+ nicht verfügbar ist – Java, .NET Standard-Plattformen, Linux, macOS usw. In bestimmten Fällen wie WordArt, Texteffekten, einigen Office Math-Funktionen und anderen ist die Analyse von Glyph-Umrissen erforderlich.

#### Formschattenformatierung festlegen <sup>22.7</sup>

Die Möglichkeit, die Schattenformatierung des Formobjekts festzulegen, wurde durch Hinzufügen einer neuen [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/)-Eigenschaft bereitgestellt.

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

Durch das Hinzufügen eines neuen Werts zur [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/)-Enumeration wurde ein neuer HTML-Importmodus für Elemente auf Blockebene eingeführt.

#### Konvertieren in PDF/UA-1, kompatibel mit WCAG 2.0 <sup>22.7</sup>

Unterstützung für die Konvertierung eines Dokuments in das WCAG 2.0-kompatible PDF/UA-1-Format wurde hinzugefügt.

Wenn der Kunde also über ein barrierefreies Word-Dokument verfügt und es über Aspose.Words unter Angabe der Konvertierungsdetails in PDF/UA-1 konvertiert, ist die Ausgabe WCAG 2.0-kompatibel.

WCAG oder Web Content Accessibility Guidelines sind eine Reihe von Richtlinien, die vom W3C in Zusammenarbeit mit Einzelpersonen und Organisationen auf der ganzen Welt entwickelt wurden. Jetzt können Sie mit Aspose.Words Ihr Dokument in das Ausgabeformat PDF/UA-1 konvertieren, das zum Erstellen von WCAG 2.0-kompatiblen PDF-Dokumenten geeignet ist.

Es ist erwähnenswert, dass WCAG 2.0 zwei zusätzliche Anforderungen hat, die nicht in der PDF/UA-1-Spezifikation spezifiziert sind:

- Kontrastanforderungen
- Anforderungen für die Kennzeichnung von Multimedia-Inhalten

Beide Anforderungen sind jedoch für unseren Fall der Konvertierung von Word nach PDF nicht relevant.

### Andere

Es wurde eine Ausnahme für die Übernahme des Volltextfülleffekts implementiert, der das Verhalten von MS Word nachahmt. <sup>22.6</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.5 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.6 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.7 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.8 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words für Python via .NET 22.3, 22.4

Aspose.Words 22.3 erweitert die Möglichkeiten der Arbeit mit PDF- und TXT-Formaten und verbessert die Arbeit einiger vorhandener Algorithmen und Engines.

Aspose.Words 22.4 erweitert die PDF-Funktionen – jetzt können Sie eine Datei im PDF/A-4-Format speichern und erhalten eine Reihe weiterer Verbesserungen bei der PDF-Ausgabe. Gleichzeitig bietet Aspose.Words 22.4 zusätzliche Möglichkeiten zum Arbeiten mit DML-Diagrammen, zum Lesen der Photoshop-Metadaten und zum Importieren von HTML-Elementen auf Blockebene.

Das API wurde für eine flexiblere und bequemere Entwicklung erweitert.

### Unterstützte Funktionen

Ab Aspose.Words 22.4 wurde Unterstützung für Python 3.10 hinzugefügt.

### Leistungsverbesserungen

Das Laden eines zuvor gespeicherten Schriftarten-Suchcaches zur Beschleunigung des Schriftarten-Cache-Initialisierungsprozesses beim Rendern wurde implementiert. Jetzt funktionieren Ihre Lösungen noch schneller.

### Unterstützte Formate

Das Laden eines Dokuments im AZW3-Format (KF8 ist ein anderer Name für das Format) wurde hinzugefügt. Jetzt können Sie ein AZW3-Dokument laden und in jedes andere unterstützte Format konvertieren.

### Rendern

#### Rendern von MathML-Formeln

Die Darstellung von Operatoren in MathML-Formeln wurde verbessert.

#### Verbesserungen bei DML-Diagrammen

An den DML-Diagrammen wurden folgende Verbesserungen vorgenommen:

* Der Skalierungsalgorithmus der DML-Diagrammachsen wurde verbessert und entspricht jetzt dem in MS Word

* Die Möglichkeit, mit DrawingML-Diagrammlegendeneinträgen zu manipulieren, wurde bereitgestellt, um unser Diagramm-API immer umfassender zu machen
* Die Möglichkeit, den Namen einer XLS/XLSX-Datei anzugeben, mit der das DrawingML-Diagramm verknüpft ist, wurde implementiert

#### Rendern in PDF mit PDF/A-4-Konformität

Das Rendern in PDF mit PDF/A-4-Konformität wurde durch das Hinzufügen neuer Werte zur [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/)-Enumeration – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4) – hinzugefügt. Diese Option setzt überarbeitete Konformitätsstufen voraus: Die normale PDF/A-4-Konformität entspricht der Konformitätsstufe U früherer Versionen, und die Konformitätsstufe A wird entfernt.

#### Auslesen der Photoshop-Metadatenauflösung in JPEG

Das Auslesen der Photoshop-Metadatenauflösung in JPEG-Bildern wurde implementiert, um ein interessantes Problem mit der falschen Skalierung von Bildern beim Rendern zu beheben.

#### Lassen Sie lateinischen Text in der Mitte eines Wortes umbrechen

Die Funktion "Lateinischen Text in der Mitte eines Wortes umbrechen lassen" wurde unterstützt, um unsere lateinische Unterstützung beim Rendern noch besser zu machen.

### Dokumente laden und speichern

#### Steuern des Stilverhaltens beim Laden eines Dokuments

Es wurde eine neue Option [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) eingeführt, um das Verhalten widersprüchlicher Stile beim Dokumentimport zu steuern.

#### Konvertieren Sie Formen beim Exportieren in SVG

Die Möglichkeit, Formen beim Exportieren in HTML, MHTML oder EPUB in SVG-Bilder zu konvertieren, wurde durch Hinzufügen der [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/)-Eigenschaft bereitgestellt.

#### Speichern in PDF 2.0 und Verbesserungen bei der PDF-Ausgabe

Die Möglichkeit, ein Dokument als PDF 2.0 zu speichern, indem der [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/)-Enumeration ein neuer Wert hinzugefügt wird, sowie mehrere andere gewünschte Verbesserungen der PDF-Ausgabe wurden eingeführt.

#### Neuer HTML-Importmodus

Ein neuer Importmodus für HTML-Elemente auf Blockebene wurde implementiert, um das Microsoft Word-Verhalten nachzuahmen.

### Andere

* Die Möglichkeit, OOXML eines Inhaltssteuerelements abzurufen und in einem String zu speichern, wurde eingeführt.
* Erkennung von nicht standardmäßigen Fußnoten in PDF-Dokumenten beim Import hinzugefügt.
* Es wurde eine Möglichkeit hinzugefügt, benutzerdefinierte Felddaten abzurufen, die dem Feld zugeordnet sind.
* Der Tabellenvergleichsalgorithmus, der auf einer umfassenden Analyse des Microsoft Word-Vergleichsmechanismus basiert, wurde verbessert.
* Die Kommentarsyntax in der LINQ Reporting Engine wurde bereitgestellt.

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.3 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für Python via .NET 22.4 Versionshinweise](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Siehe auch

{{% alert color="primary" %}}

Diese Seite enthält die neuesten Veröffentlichungsnachrichten der letzten 2 Jahre. Einzelheiten zu früheren Versionen finden Sie auf den [Versionshinweise'](/words/python-net/release-notes/)-Seiten in den entsprechenden Abschnitten.

{{% /alert %}}