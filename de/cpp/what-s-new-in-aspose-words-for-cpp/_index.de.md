---
title: Was ist neu
second_title: Aspose.Words für C++
articleTitle: Was ist neu in Aspose.Words für C++
linktitle: Was ist neu in Aspose.Words für C++
type: docs
description: "Aspose.Words für C++ erweitert und verbessert sich täglich. Auf dieser Seite erfahren Sie mehr über die großen und interessantesten Funktionen des Produkts."
weight: 2
url: /de/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Diese Seite beschreibt die interessantesten neuen Aspose.Words Funktionen, die in den letzten Versionen eingeführt wurden.

## Aspose.Words für C++ 24.9

Aspose.Words 24.9 führt die Einfügung von group shape und StructuredDocumentTag über DocumentBuilder ein, verbessert die Darstellung von Radialdiagrammen mit Abstufungen, verbessert die digitalen Signaturen mit XAdES-EPES unterstützung, fügt Markdown Unterstreichungserkennung hinzu und bietet Zugriff auf Fußnoten-/ Endnotentrennzeichen.

### Rendern und Drucken

#### Graduierungen auf Radialdiagrammen

Die Darstellung von Abstufungen auf Radialdiagrammen wurde implementiert.

### Dokumente konvertieren, laden und speichern

#### Formatierung beim Laden von Markdown-Dateien unterstreichen

Die Option, Unterstreichungsformatierungen beim Laden von Markdown-Dokumenten zu erkennen, wurde durch Hinzufügen einer neuen öffentlichen Eigenschaft [ImportUnderlineFormatting]() integriert.

### Digitale Signaturen

#### Dokumente signieren mit XAdES-EPES

Die Möglichkeit, Dokumente mit zu signieren XAdES-EPES Signaturen der Ebene XML - DSig wurden eingeführt, indem eine neue öffentliche Eigenschaft [XmlDsigLevel]() und eine neue öffentliche Aufzählung [XmlDsigLevel]() hinzugefügt wurden.

### Andere

* Eine neue öffentliche Methode [InsertGroupShape]() wurde zu group shapes hinzugefügt.
* Eine neue öffentliche Methode [InsertStructuredDocumentTag]() wurde hinzugefügt, um **StructuredDocumentTags** in ein Dokument einzufügen.
* Der öffentliche Zugriff auf Fußnoten- / Endnotentrennzeichen wurde durch Hinzufügen einiger öffentlicher Klassen und Eigenschaften ermöglicht.

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für C++ 24.9 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words für C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 erweitert die Optionen für Assemblys, verbessert die Renderfunktionen und erweitert einige andere Optionen.

Aspose.Words 24.6 verbessert die Renderoptionen, erweitert die Such- und Vergleichsfunktionen und erweitert mehrere andere Funktionen.

Aspose.Words 24.7 ändert die Art und Weise, wie Sie mit ActiveX arbeiten, erweitert die Renderfunktionen sowie den Export in die Formate Markdown und XLSX.

### Unterstützte Formate

Ab Version 24.7 wird der Export nach PDF/UA-2 unterstützt, um die Zugänglichkeit für Benutzer mit Behinderungen zu gewährleisten.

### Rendern und Drucken

#### Änderungen in Diagrammen, Formen und Zeichnungsml <sup>24.5</sup>

- Das Rendern von DrawingML-Effekten für SVG -Grafiken wurde implementiert, um die bisherige Funktionalität zu erweitern, die auf Bilder beschränkt war.
- Unterstützung für das Erstellen von Kombinationsdiagrammen und das Anpassen von Eigenschaften wie Spaltenbreite, Überlappung und Blasenskalierung innerhalb von Reihengruppen wurde eingeführt, indem die Klassen **ChartSeriesGroup** und **ChartSeriesGroupCollection** sowie die Eigenschaft **SeriesGroups** hinzugefügt wurden.
- Die Funktionalität zum Manipulieren des SoftEdge -Effekts von Formen wurde durch Hinzufügen der **SoftEdgeFormat** -Klasse implementiert.
- Die Möglichkeit, Anpassungswerte von Formen zu ändern, wurde durch Hinzufügen der öffentlichen Klassen **AdjustmentCollection** und **Adjustment** und der Eigenschaft **Adjustments** implementiert.

#### Änderungen in Diagrammen, Formen und Zeichnungen <sup>24.6</sup>

- Die Diagrammfunktionen wurden verbessert. Sie können jetzt eine größere Auswahl an Diagrammen erstellen, einschließlich *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* diagramme, *Box & Whisker* Diagramme, *Waterfalls* und *Funnels*. So können Sie Ihre Daten vielfältiger und informativer visualisieren.
- Die Farbsteuerung für die Schattenformatierung wurde verbessert. Sie können das Erscheinungsbild Ihrer Dokumente genauer steuern, indem Sie auf Schattenfarben zugreifen.
- Die Leistungssteigerung für das Hintergrundrendern wurde verbessert. Dank der nativen Kacheltechnologie können Sie das Rendern von Hintergründen mit kleinen Elementen erheblich beschleunigen.
- Realistische Verläufe für Formen wurden hinzugefügt. Sie können jetzt DML -Formen mit nichtlinearen Verläufen erstellen, die den visuellen Stil von Microsoft Word nachahmen, um ein polierteres Aussehen zu erzielen.

#### Anpassung der Diagrammdatenetiketten <sup>24.7</sup>

Die Möglichkeit, Diagrammdatenbeschriftungen wie **Orientation** und **Rotation** anzupassen, wurde hinzugefügt.

#### Benutzerdefiniertes Nummernstyling für Listenebenen <sup>24.7</sup>

Ein Setter für die öffentliche Eigenschaft [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) wurde hinzugefügt. Sie können jetzt einen benutzerdefinierten Nummernstil für Listenebenen definieren.

#### Änderungen bei der Arbeit mit ActiveX <sup>24.7</sup>

- Die Eigenschaften von ActiveX-Objekten können jetzt geändert werden, sodass Sie mehr Kontrolle über ihr Verhalten haben.
- Die Möglichkeit, den Wert des Optionsfelds ActiveX Control zu ändern, um eine dynamische Interaktion zu ermöglichen, wurde hinzugefügt.
- Die Möglichkeit, ein ActiveX-Kontrollkästchen auf "aktiviert" oder "deaktiviert" umzuschalten, wurde hinzugefügt.

### Laden und Speichern von Dokumenten

#### Exportieren von Links in das Markdown -Format <sup>24.7</sup>

Die Möglichkeit, den Export von Links im Format Markdown zu steuern, wurde durch die Implementierung der Eigenschaft [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) hinzugefügt.

### Suchen und vergleichen

#### Erweiterte Vergleichsoptionen <sup>24.6</sup>

Die Möglichkeit, Datenanalyse-Workflows mit verbesserten Vergleichsfunktionen zu rationalisieren, wurde hinzugefügt. Dies beinhaltet eine neue **IgnoreStoreItemId** -Option und eine neu gestaltete Oberfläche für erweiterte Vergleiche.

### Andere

- Die Funktion zum Entfernen leerer Seiten aus einem Dokument wurde durch Hinzufügen der [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) -Methode implementiert. <sup>24.5</sup>
- Die Möglichkeit, das Vorhandensein von VBA Makros zu überprüfen, ohne ein Dokument zu laden, wurde durch Hinzufügen der Eigenschaft **HasMacros** bereitgestellt. <sup>24.5</sup>
- Eine neue **DateTimeUtc** -Eigenschaft wurde hinzugefügt - dies bietet einen genaueren Zeitstempel für Kommentare, was die Organisation und Rückverfolgbarkeit verbessert. <sup>24.6</sup>
- Das Datums-/Uhrzeitformat wird jetzt automatisch für den nahtlosen Export in das XLSX-Format erkannt. <sup>24.7</sup>
- Die öffentliche Eigenschaft [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), mit der Sie überprüfen können, ob ein VBA-Projekt geschützt ist, wurde hinzugefügt. <sup>24.7</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für C++ 24.5 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Erfahren Sie mehr über [Aspose.Words für C++ 24.6 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Erfahren Sie mehr über [Aspose.Words für C++ 24.7 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words für C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbessert die Erfahrung mit der Verwaltung von Strichfarben, verbessert OLE-Objekte und führt eine neue öffentliche Literaturquelle API ein.

Aspose.Words 24.2 erweiterte Diagramme API und Stilverwaltung. Diese Version von Aspose.Words führte auch die Möglichkeit ein, SvgSaveOptions während des Renderns anzugeben, das Laden von Markdown -Dateien flexibler zu steuern und mit Referenztext für Fußnoten und Endnoten zu arbeiten.

Aspose.Words 24.3 führt die Emulation binärer Raster-Operationen für WMF-Metadateien ein und erweitert auch weiterhin die Diagramme API.

Aspose.Words 24.4 verbessert einige Renderoptionen sowie die Arbeit mit digitalen Signaturen.

### Rendern und Drucken

#### Strichfarbensteuerung <sup>24.1</sup>

Die Klasse [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) wurde um eine Reihe neuer öffentlicher Eigenschaften erweitert, die sich auf die Verwaltung von Strichfarben beziehen: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) und [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) und [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Zeichnungml Charts API Erweiterung <sup>24.2 / 24.3 / 24.4</sup>

Die **DrawingML Charts API** wird weiterhin erweitert.

#### Schriftarten einbetten, die in @font-face -Regeln deklariert sind <sup>24.4</sup>

Es wurde eine Möglichkeit hinzugefügt, in @font-face -Regeln deklarierte Schriftarten in die Schriftdefinitionen des resultierenden Dokuments einzubetten, indem eine neue [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) -Eigenschaft hinzugefügt wurde.

#### Arbeiten mit Glüh- und Reflexionsformatierung <sup>24.4</sup>

Die Möglichkeit, mit Glüh- und Reflexionsformatierungen für ein Zeichenobjekt zu arbeiten, wurde implementiert.

### Laden und Speichern von Dokumenten

#### Geben Sie beim Rendern SvgSaveOptions an <sup>24.2</sup>

Die Möglichkeit, [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) während des Renderns anzugeben, wurde mit [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) hinzugefügt.[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) und [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) methoden.

#### Leere Zeilen beim Laden von Markdown -Dateien beibehalten <sup>24.2</sup>

Die Möglichkeit, leere Zeilen beim Laden von Markdown -Dateien beizubehalten, wurde hinzugefügt.

### Andere

- Die Möglichkeit, den Text des `TextBox` OLE-Steuerelements zu ändern, wurde eingeführt, indem der neuen **TextBoxControl**-Klasse eine neue **Text**-Eigenschaft hinzugefügt wurde. <sup>24.1</sup>
- Die öffentlichen Literaturquellen API wurden durch Hinzufügen eines neuen Namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) mit seinen neuen Klassen und Aufzählungen und durch Hinzufügen einer neuen [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) -Eigenschaft zur [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) -Klasse implementiert. <sup>24.1</sup>
- Der Klasse [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) wurden neue öffentliche Eigenschaften [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) und [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) für eine verbesserte Stilverwaltung hinzugefügt. <sup>24.2</sup>
- Die Funktionalität zum Abrufen des tatsächlichen Referenzmarkentexts für Fußnoten und Endnoten wurde um die Eigenschaft [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) und die Methode [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) erweitert. <sup>24.2</sup>
- Die Emulation von binären Raster-Operationen für WMF-Metadateien wurde implementiert. <sup>24.3</sup>
- Die Möglichkeit, Signaturoptionen für Dokumente innerhalb von **SaveOptions** zu definieren, wurde durch Hinzufügen einer neuen **DigitalSignatureDetails**-Klasse mit neuen öffentlichen Mitgliedern sowie durch Hinzufügen neuer Eigenschaften zu den Klassen [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) und [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) aktiviert. <sup>24.4</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für C++ 24.1 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Erfahren Sie mehr über [Aspose.Words für C++ 24.2 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Erfahren Sie mehr über [Aspose.Words für C++ 24.3 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Erfahren Sie mehr über [Aspose.Words für C++ 24.4 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words für C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 erweitert Renderoptionen, Metadatei-Rendering-Emulation und markdown Speicheroptionen.

Aspose.Words 23.10 verbessert die Darstellung, erweitert die Optionen zum Laden und Speichern von Dokumenten und ermöglicht Benutzern das Zusammenführen von Dokumenten auf neue Weise.

Aspose.Words 23.11 erweitert die Arbeit mit Revisionen, XLSX-Format und Schriftarten in Diagrammlegenden um zusätzliche Optionen.

Aspose.Words 23.12 führt neue Eigenschaften und Aufzählungen für die Arbeit mit PDF- und OOXML-Dokumenten sowie Unterstützung für WebP-Bilder ein.

### Rendern und Drucken

#### Anpassen von Achsentiteln in DrawingML-Diagrammen <sup>23.9</sup>

Die Möglichkeit, Achsentitel in DrawingML-Diagrammen anzupassen, wurde durch die Implementierung einer neuen öffentlichen Klasse **ChartAxisTitle** und [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) eingeführt.

#### Bestimmen der vertikalen Position von Schriftarten innerhalb eines Absatzes <sup>23.9</sup>

Es ist jetzt möglich, die vertikale Position von Schriftarten innerhalb eines Absatzes mithilfe der neuen public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) -Eigenschaft und der neuen [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) -Aufzählung zu definieren.

#### Vordergrundfarbsteuerung <sup>23.10</sup>

Die Möglichkeit, die Vordergrundfarbe ohne Modifikatoren abzurufen, wurde den Klassen [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) und [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) über die Eigenschaft **BaseForeColor** hinzugefügt.

#### Erweiterung der Funktionalität von Diagrammen <sup>23.10</sup>

Die Funktionalität der Klassen [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) und [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) wurde um neue Methoden und Eigenschaften erweitert.

#### Automatisches Anpassen und Anpassen eines Bildes an eine Form <sup>23.10</sup>

Eine einfache Möglichkeit, ein Bild automatisch anzupassen und in eine bestimmte Form einzupassen, wurde durch die neue [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) -Methode bereitgestellt.

#### Standardschriftartformatierung für DrawingML-Diagrammlegenden-Einträge <sup>23.11</sup>

Die Möglichkeit, Standardschriftformatierungen für Legendeneinträge von DrawingML-Diagrammen festzulegen, wurde über die Eigenschaft [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) hinzugefügt. Diese Funktion ermöglicht ein schlankeres und einheitlicheres Erscheinungsbild für Diagrammelemente und verbessert die Gesamtästhetik des Dokuments.

#### Seitenlayout beim Öffnen von PDF in Reader angeben <sup>23.12</sup>

Die Möglichkeit, das Seitenlayout anzugeben, das beim Öffnen eines Dokuments in einem PDF -Reader verwendet werden soll, wurde durch die Einführung einer neuen **PageLayout**-Eigenschaft für die [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)-Klasse und die Einführung einer neuen **PdfPageLayout**-Aufzählung hinzugefügt.

### Laden und Speichern von Dokumenten

#### Angeben eines Ordnernamens zum Erstellen des Bildes URIs in Markdown <sup>23.9</sup>

Die Klasse [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) wurde um die Eigenschaft [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) erweitert, mit der der Name des Ordners angegeben werden kann, der zum Erstellen des in das Markdown -Dokument geschriebenen Bildes URIs verwendet wird.

#### PDF Ausgabegröße reduzieren <sup>23.10</sup>

Verschiedene PDF -Rendering-Optimierungen zur Reduzierung der Ausgabegröße bei Verwendung von [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) -Einstellungen wurden implementiert.

#### Erkennen von Hyperlinks beim Laden von TXT-Dokumenten <sup>23.10</sup>

Die Funktion zum Erkennen von Hyperlinks beim Laden von TXT-Dokumenten wurde durch Hinzufügen einer neuen [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/)-Eigenschaft implementiert.

### Andere

- Die Metadatei-Rendering-Emulation zur Bestimmung der Rastergröße wurde speziell für WMF Stiftbreite und EMF kosmetische Stiftbreite implementiert. Um dies zu erreichen, wurde die Eigenschaft **ScaleWmfFontsToMetafileSize** durch die Eigenschaft [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) ersetzt und die Eigenschaft [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) hinzugefügt. <sup>23.9</sup>
* Mit der [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) -Methode wurde eine vereinfachte Methode zum Einfügen eines Dokuments in ein anderes Dokument an der aktuellen Cursorposition eingeführt. <sup>23.10</sup>
* Die Möglichkeit, auf Stileigenschaften zuzugreifen und diese zu ändern, wurde durch die Einführung der neuen Eigenschaft [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) hinzugefügt. <sup>23.10</sup>
* Den Methoden der Klasse [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) wurde ein generischer Typparameter hinzugefügt. <sup>23.10</sup>
* Mit den Methoden [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) und [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) wurde eine Möglichkeit implementiert, zu steuern, wann eine bestimmte Revision akzeptiert / abgelehnt werden soll oder nicht. Diese Erweiterung gibt den Benutzern eine genauere Kontrolle über den Revisionsprozess. <sup>23.11</sup>
* Die Möglichkeit, alle Abschnitte eines Dokuments auf dasselbe XLSX-Arbeitsblatt zu schreiben, wurde durch den neuen [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/)-Aufzählungstyp und die neue [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/)-Eigenschaft bereitgestellt. <sup>23.11</sup>
* Eine Möglichkeit zu steuern, wie ZIP64-Formaterweiterungen für OOXML-Dokumente verwendet werden, wurde durch die neue Zip64Mode-Eigenschaft der `OoxmlSaveOptions`-Klasse und die neue Zip64Mode-Aufzählung implementiert. <sup>23.12</sup>
* Unterstützung für WebP-Bilder wurde eingeführt. Bitte beachten Sie, dass diese Funktion nur für verfügbar ist.NetStandart und .NET6+ Versionen. <sup>23.12</sup>

{{% alert color="primary" %}}

Erfahren Sie mehr über [Aspose.Words für C++ 23.9 Versionshinweise](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Erfahren Sie mehr über [Aspose.Words für C++ 23.10 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Erfahren Sie mehr über [Aspose.Words für C++ 23.11 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Erfahren Sie mehr über [Aspose.Words für C++ 23.12 Versionshinweise](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Siehe auch

{{% alert color="primary" %}}

Diese Seite enthält die neuesten Release-Nachrichten der letzten 2 Jahre. Einzelheiten zu früheren Versionen finden Sie in der [Versionshinweise'](/words/cpp/release-notes/) seiten in den entsprechenden Abschnitten.

{{% /alert %}}
