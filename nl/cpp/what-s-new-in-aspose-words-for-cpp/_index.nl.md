---
title: Wat is er nieuw
second_title: Aspose.Words voor C++
articleTitle: Wat is er nieuw in Aspose.Words voor C++
linktitle: Wat is er nieuw in Aspose.Words voor C++
type: docs
description: "Aspose.Words voor C++ breidt zich dagelijks uit en verbetert. Op deze pagina kunt u meer te weten komen over de enorme en meest interessante functies van het product."
weight: 2
url: /nl/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Deze pagina beschrijft de meest interessante nieuwe Aspose.Words - functies die zijn geïntroduceerd in recente releases.

## Aspose.Words voor C++ 24.9, 24.10

Aspose.Words 24.9 introduceert group shape invoeging en StructuredDocumentTag invoeging via DocumentBuilder, verbetert de weergave van radiale grafieken met graduaties, verbetert digitale handtekeningen met XAdES-EPES ondersteuning, voegt Markdown onderstrepingherkenning toe en biedt toegang tot voetnoot/eindnoot scheidingstekens.

Aspose.Words 24.10 introduceert verbeterde ondersteuning voor ActiveX control met CommandButton creatie, nieuwe shape visibility control, de mogelijkheid om group shapes, verbeterde Markdown export voor tabellen, grafiekopmaak voor Pie en Doughnut grafieken, betere Big5-codering en ondersteuning voor verouderde Taiwanese lettertypen.

### Rendering en afdrukken

#### Graduaties op radiale grafieken <sup>24.9</sup>

De weergave van graduaties op radiale grafieken is geïmplementeerd.

#### CommandButton ActiveX-Besturingselementen <sup>24.10</sup>

De mogelijkheid om CommandButton ActiveX-besturingselementen te maken is geïntroduceerd door een nieuwe openbare methode [InsertForms2OleControl]() en een nieuwe openbare klasse [Forms2OleControl]() toe te voegen.

#### Control Shape Visibility <sup>24.10</sup>

Er is een nieuwe openbare eigenschap [Hidden]() toegevoegd om de zichtbaarheid van shapes te regelen.

#### Veranderingen in Pie en Doughnut grafieken <sup>24.10</sup>

Er zijn verschillende nieuwe openbare eigenschappen toegevoegd om Pie en Doughnut grafieken op te maken.

### Documenten converteren, laden en opslaan

#### Onderstrepen opmaak bij het laden van Markdown bestanden <sup>24.9</sup>

De optie om onderstreping te herkennen bij het laden van Markdown documenten is opgenomen door een nieuwe openbare eigenschap [ImportUnderlineFormatting]() toe te voegen.

#### Tabellen exporteren als HTML bij opslaan naar Markdown <sup>24.10</sup>

Een optie om tabellen als HTML te exporteren bij het opslaan van documenten in Markdown - indeling is geïmplementeerd door een nieuwe openbare Eigenschap [ExportAsHtml]() en een opsomming [MarkdownExportAsHtml]() toe te voegen.

### Digitale Handtekeningen

#### Documenten ondertekenen met XAdES-EPES <sup>24.9</sup>

De mogelijkheid om documenten te ondertekenen met handtekeningen van XAdES-EPES Niveau XML-DSig is geïntroduceerd door een nieuwe openbare eigenschap [XmlDsigLevel]() en een nieuwe openbare opsomming [XmlDsigLevel]() toe te voegen.

### Ander

* Er is een nieuwe openbare methode [InsertGroupShape]() toegevoegd aan group shapes. <sup>24.9</sup>
* Er is een nieuwe openbare methode [InsertStructuredDocumentTag]() toegevoegd om **StructuredDocumentTags** in een document in te voegen. <sup>24.9</sup>
* Openbare toegang tot voetnoot / eindnoot scheidingstekens is verschaft door het toevoegen van een paar openbare klassen en eigenschappen. <sup>24.9</sup>
* De mogelijkheid om afzonderlijke vormen, group shapes samen te groeperen en beide vormen en group shapes rechtstreeks te groeperen, is geïntroduceerd door de methode [InsertGroupShape]() toe te voegen. <sup>24.10</sup>
* Big5 encoding handling voor TrueType cmap tabellen is verbeterd. <sup>24.10</sup>
* Ondersteuning voor verouderde Taiwanese lettertypen is verbeterd. <sup>24.10</sup>

{{% alert color="primary" %}}

Lees meer over [Aspose.Words voor C++ 24.9 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.10 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words voor C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 breidt opties voor assemblies uit, verbetert de rendermogelijkheden en breidt enkele andere opties uit.

Aspose.Words 24.6 verbetert de weergaveopties, verbetert de Zoek-en vergelijkingsfunctionaliteit en breidt verschillende andere functies uit.

Aspose.Words 24.7 wijzigt de manier waarop u met ActiveX werkt, breidt de weergavemogelijkheden uit en exporteert naar de indelingen Markdown en XLSX.

### Ondersteunde Formaten

Vanaf versie 24.7 wordt exporteren naar PDF/UA-2 ondersteund om toegankelijkheid voor gebruikers met een handicap te garanderen.

### Rendering en afdrukken

#### Wijzigingen in grafieken, vormen en DrawingML <sup>24.5</sup>

- DrawingML effecten rendering voor SVG graphics, uitbreiding van de vorige functionaliteit beperkt tot afbeeldingen, is geïmplementeerd.
- Ondersteuning voor het maken van combo-diagrammen en het aanpassen van eigenschappen zoals gap width, overlap en bubble scale binnen reeksgroepen is geïntroduceerd door de **ChartSeriesGroup** en **ChartSeriesGroupCollection** klassen en de **SeriesGroups** eigenschap toe te voegen.
- Functionaliteit om het SoftEdge effect van shapes te manipuleren is geïmplementeerd door de **SoftEdgeFormat** klasse toe te voegen.
- De mogelijkheid om waarden van shapes aan te passen te wijzigen is geïmplementeerd door de eigenschap **AdjustmentCollection** en **Adjustment** openbare klassen en **Adjustments** toe te voegen.

#### Wijzigingen in grafieken, vormen en tekening <sup>24.6</sup>

- De kaartmogelijkheden zijn verbeterd. U kunt nu een grotere verscheidenheid aan grafieken maken, waaronder *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* grafieken, *Box & Whisker* grafieken, *Waterfalls* en *Funnels*. Hierdoor kunt u uw gegevens op een meer diverse en informatieve manier visualiseren.
- Kleurcontrole voor schaduwopmaak is verbeterd. U kunt nauwkeuriger controle krijgen over het uiterlijk van uw documenten door toegang te krijgen tot schaduwkleuren.
- Performance boost voor achtergrond rendering is verbeterd. U kunt het renderen van achtergronden met kleine elementen aanzienlijk versnellen dankzij native tegeltechnologie.
- Er zijn realistische gradiënten voor vormen toegevoegd. U kunt nu DML-vormen maken met niet-lineaire verlopen, waarbij de visuele stijl van Microsoft Word wordt nagebootst voor een meer gepolijste look.

#### Aanpassing Van Diagramgegevens <sup>24.7</sup>

De mogelijkheid om diagramgegevenslabels zoals **Orientation** en **Rotation** Aan te passen is toegevoegd.

#### Aangepaste nummer Styling Voor Lijstniveaus <sup>24.7</sup>

Er is een setter voor de openbare eigenschap [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) toegevoegd. U kunt nu een aangepaste nummerstyling definiëren voor lijstniveaus.

#### Wijzigingen in het werken met ActiveX <sup>24.7</sup>

- De eigenschappen van ActiveX-objecten kunnen nu worden gewijzigd, zodat u meer controle hebt over hun gedrag.
- De mogelijkheid om de waarde van het ActiveX-besturingselement keuzerondje te wijzigen om dynamische interactie mogelijk te maken, is toegevoegd.
- De mogelijkheid om een ActiveX checkbox om te schakelen naar "aangevinkt" of "niet aangevinkt" is toegevoegd.

### Documenten laden en opslaan

#### Koppelingen exporteren naar Markdown - indeling <sup>24.7</sup>

De mogelijkheid om de export van koppelingen in Markdown - indeling te beheren is toegevoegd door de implementatie van de eigenschap [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Zoeken en vergelijken

#### Geavanceerde Vergelijkingsopties <sup>24.6</sup>

De mogelijkheid om data-analyse workflows te stroomlijnen met verbeterde vergelijkingsfunctionaliteit is toegevoegd. Dit omvat een nieuwe optie **IgnoreStoreItemId** en een vernieuwde interface voor geavanceerde vergelijkingen.

### Ander

- De functie om lege pagina ' s uit een document te verwijderen is geïmplementeerd door de methode [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) toe te voegen. <sup>24.5</sup>
- De mogelijkheid om te controleren op de aanwezigheid van VBA macro ' s zonder een document te laden, is geleverd door de eigenschap **HasMacros** toe te voegen. <sup>24.5</sup>
- Er is een nieuwe eigenschap **DateTimeUtc** toegevoegd – Dit biedt een nauwkeuriger tijdstempel voor opmerkingen, waardoor de organisatie en traceerbaarheid worden verbeterd. <sup>24.6</sup>
- De DateTime-indeling wordt nu automatisch gedetecteerd voor naadloze export naar XLSX - indeling. <sup>24.7</sup>
- De openbare eigenschap [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), waarmee u kunt controleren of een VBA - project is beschermd, is toegevoegd. <sup>24.7</sup>

{{% alert color="primary" %}}

Lees meer over [Aspose.Words Voor C++ 24.5 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.6 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.7 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words voor C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbetert de ervaring met het beheren van lijnkleuren, verbetert OLE objecten en introduceert een nieuwe Bibliografie bronnen openbaar API.

Aspose.Words 24.2 Uitgebreide grafieken API en stijlbeheer. Deze versie van Aspose.Words introduceerde ook de mogelijkheid om SvgSaveOptions te specificeren tijdens het renderen, flexibeler controle laden van Markdown bestanden en werken met referentietekst voor voetnoten en eindnoten.

Aspose.Words 24.3 introduceert emulatie van binaire rasterbewerkingen voor WMF metafiles en blijft ook de grafieken API uitbreiden.

Aspose.Words 24.4 verbetert sommige weergaveopties en verbetert het werken met digitale handtekeningen.

### Rendering en afdrukken

#### Stroke Color Control <sup>24.1</sup>

De klasse [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) is uitgebreid met een reeks nieuwe openbare eigenschappen met betrekking tot het beheren van lijnkleuren: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Grafieken API Extensie <sup>24.2 / 24.3 / 24.4</sup>

De **DrawingML Charts API** wordt nog steeds uitgebreid.

#### Lettertypen insluiten die zijn gedeclareerd in @font-face regels <sup>24.4</sup>

Toegevoegd een mogelijkheid om lettertypen gedeclareerd in @font-face Regels in te sluiten in de lettertypedefinities van het resulterende document is geïntroduceerd door een nieuwe eigenschap [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) toe te voegen.

#### Werken met Glow en Reflection formatteren <sup>24.4</sup>

De mogelijkheid om te werken met gloed en reflectie opmaak voor een tekening object is geïmplementeerd.

### Documenten laden en opslaan

#### SvgSaveOptions Opgeven Tijdens Het Renderen <sup>24.2</sup>

De mogelijkheid om [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) te specificeren tijdens het renderen is toegevoegd met behulp van de [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) en [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) methoden.

#### Lege regels behouden bij het laden van Markdown bestanden <sup>24.2</sup>

De mogelijkheid om lege regels te behouden bij het laden van Markdown - bestanden is toegevoegd.

### Ander

- De mogelijkheid om de tekst van het besturingselement `TextBox` OLE te wijzigen is geïntroduceerd door een nieuwe eigenschap **Text** toe te voegen aan de nieuwe klasse **TextBoxControl**. <sup>24.1</sup>
- De Bibliografie bronnen public API werd geïmplementeerd door het toevoegen van een nieuwe naamruimte [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) met zijn nieuwe klassen en opsommingen, en door het toevoegen van een nieuwe [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) eigenschap aan de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) klasse. <sup>24.1</sup>
- Nieuwe openbare eigenschappen [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) en [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) voor verbeterd stijlbeheer zijn toegevoegd aan de [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) - klasse. <sup>24.2</sup>
- De functionaliteit voor het ophalen van de eigenlijke referentiemarkeertekst voor voetnoten en eindnoten is verbeterd met de Eigenschap [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) en de methode [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Emulatie van binaire rasterbewerkingen voor WMF metafiles is geïmplementeerd. <sup>24.3</sup>
- De mogelijkheid om handtekeningopties voor documenten binnen **SaveOptions** te definiëren is ingeschakeld door een nieuwe **DigitalSignatureDetails** - klasse met nieuwe openbare leden toe te voegen, evenals door nieuwe eigenschappen toe te voegen aan de [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) en [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) - klassen. <sup>24.4</sup>

{{% alert color="primary" %}}

Lees meer over [Aspose.Words voor C++ 24.1 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.2 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.3 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Lees meer over [Aspose.Words voor C++ 24.4 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 breidt rendering opties, metafile rendering emulatie en markdown save Opties uit.

Aspose.Words 23.10 verbetert rendering, breidt opties voor het laden en opslaan van documenten uit en stelt gebruikers in staat om documenten op nieuwe manieren samen te voegen.

Aspose.Words 23.11 verbetert het werk met revisies, XLSX opmaak en lettertypen op grafieklegende met extra opties.

Aspose.Words 23.12 introduceert nieuwe eigenschappen en opsommingen voor het werken met PDF en OOXML documenten, evenals ondersteuning voor WebP afbeeldingen.

### Rendering en afdrukken

#### Titels van Assen aanpassen in DrawingML grafieken <sup>23.9</sup>

De mogelijkheid om astitels in DrawingML - diagrammen aan te passen is geïntroduceerd door de implementatie van een nieuwe eigenschap openbare klasse **ChartAxisTitle** en [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### De verticale positie van lettertypen binnen een alinea bepalen <sup>23.9</sup>

Het is nu mogelijk om de verticale positie van lettertypen binnen een alinea te definiëren met behulp van de nieuwe eigenschap public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) en de nieuwe [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) opsomming.

#### Voorgrondkleurcontrole <sup>23.10</sup>

De mogelijkheid om de voorgrondkleur op te halen zonder modifiers is toegevoegd aan de [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) en [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) klassen via de **BaseForeColor** eigenschap.

#### Uitbreiding van de functionaliteit van grafieken <sup>23.10</sup>

De functionaliteit van de klassen [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) en [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) is uitgebreid met nieuwe methoden en eigenschappen.

#### Een afbeelding automatisch aanpassen en in een vorm passen <sup>23.10</sup>

Een eenvoudige manier om een afbeelding automatisch aan te passen en in een bepaalde vorm te passen, is geboden via de nieuwe [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) - methode.

#### Standaard Lettertypeopmaak voor DrawingML Grafiekleggingsvermeldingen <sup>23.11</sup>

De mogelijkheid om standaard lettertypeopmaak op te geven voor legenda-items van DrawingML - diagrammen is toegevoegd via de eigenschap [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Deze functie vergemakkelijkt een meer gestroomlijnde en consistente weergave voor grafiekelementen, waardoor de algehele documentesthetiek wordt verbeterd.

#### Paginalay-out opgeven bij het openen van PDF in Reader <sup>23.12</sup>

De mogelijkheid om de pagina-indeling op te geven die moet worden gebruikt bij het openen van een document in een PDF reader is toegevoegd door de introductie van een nieuwe **PageLayout** eigenschap in de [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) klasse en de introductie van een nieuwe **PdfPageLayout** opsomming.

### Documenten laden en opslaan

#### Een mapnaam opgeven om Afbeelding URIs in Markdownte construeren <sup>23.9</sup>

De klasse [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) is uitgebreid met de eigenschap [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), waarmee de naam kan worden opgegeven van de map die wordt gebruikt om afbeelding URIs te construeren die in het Markdown document is geschreven.

#### PDF Uitvoergrootte Verkleinen <sup>23.10</sup>

Er zijn verschillende PDF rendering optimalisaties geïmplementeerd om de uitvoergrootte te verminderen bij het gebruik van [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) instellingen.

#### Hyperlinks herkennen bij het laden van TXT documenten <sup>23.10</sup>

De functie om hyperlinks te herkennen bij het laden van TXT documenten is geïmplementeerd door een nieuwe [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) eigenschap toe te voegen.

### Ander

- Metafile rendering emulatie om rasterisatie grootte te bepalen is geïmplementeerd, specifiek voor WMF pen breedte en EMF cosmetische pen breedte. Om dit te bereiken werd de eigenschap **ScaleWmfFontsToMetafileSize** vervangen door de Eigenschap [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) en werd de eigenschap [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) toegevoegd. <sup>23.9</sup>
* Een vereenvoudigde methode voor het invoegen van een document in een ander document op de huidige cursorpositie is geïntroduceerd met behulp van de methode [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* De mogelijkheid om stijleigenschappen te openen en te wijzigen is toegevoegd door de introductie van de nieuwe eigenschap [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* Een generieke type parameter is toegevoegd aan de methoden van de [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) klasse. <sup>23.10</sup>
* Een manier om te controleren wanneer een bepaalde herziening moet worden geaccepteerd / afgewezen of niet is geïmplementeerd met behulp van de [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) en [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) methoden. Deze verbetering geeft gebruikers een betere controle over het revisieproces. <sup>23.11</sup>
* De mogelijkheid om alle secties van een document op hetzelfde XLSX werkblad te schrijven is beschikbaar via het nieuwe [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) opsommingstype en de nieuwe [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) eigenschap. <sup>23.11</sup>
* Een manier om te bepalen hoe ZIP64 format extensies zullen worden gebruikt voor OOXML documenten is geïmplementeerd via de nieuwe Zip64Mode eigenschap van de `OoxmlSaveOptions` klasse en de nieuwe Zip64Mode opsomming. <sup>23.12</sup>
* Ondersteuning voor WebP image is geïntroduceerd. Houd er rekening mee dat deze functie alleen beschikbaar is voor .NetStandart en .NET6+ versies. <sup>23.12</sup>

{{% alert color="primary" %}}

Lees meer over [Aspose.Words voor C++ 23.9 Release Notes](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Lees meer over [Aspose.Words voor C++ 23.10 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Lees meer over [Aspose.Words voor C++ 23.11 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Lees meer over [Aspose.Words voor C++ 23.12 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Zie Ook

{{% alert color="primary" %}}

Deze pagina bevat het laatste release nieuws van de afgelopen 2 jaar. Voor meer informatie over eerdere releases, zie de [Release Notes'](/words/cpp/release-notes/) pagina ' s in de relevante secties.

{{% /alert %}}
