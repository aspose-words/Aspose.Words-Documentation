---
title: Nieuw
second_title: Aspose.Words voor .NET
articleTitle: Wat is er nieuw in Aspose.Words voor .NET
linktitle: Wat is er nieuw in Aspose.Words voor .NET
type: docs
description: "Aspose.Words voor .NET breidt uit en verbetert dagelijks. Op deze pagina, kunt u leren over de enorme en meest interessante kenmerken van het product."
weight: 10
url: /nl/net/what-s-new-in-aspose-words-for-net/
---

Deze pagina beschrijft de meest interessante nieuwe Aspose.Words features geïntroduceerd in recente releases.

## Aspose.Words voor .NET 24,1; 24,2, 24,3, 24,4

Aspose.Words 24.1 verbetert de ervaring rond het beheer van beroerte kleuren, verbetert OLE objecten en LINQ rapportage, en introduceert een nieuwe `Bibliography Sources` publiek API.

Aspose.Words 24.2 uitgebreide grafieken API, stijlbeheer, en LINQ-opties. Deze versie van Aspose.Words ook de mogelijkheid ingevoerd om SvgSaveOptions te specificeren tijdens het renderen, flexibelere bediening laden Markdown bestanden, en werken met referentietekst voor voetnoten en eindnoten.

Aspose.Words 24.3 introduceert een nieuwe TIFF Reader/Writer en Emulatie van binaire rasterbewerkingen voor WMF-metafiles. Aspose.Words 24,3 blijft ook de grafieken uitbreiden API.

Aspose.Words 24,4 verbetert het opslaan van formaten, sommige rendering opties, evenals verbetert het werk met digitale handtekeningen.

### Ondersteunde formaten <sup>24,4</sup>

De moderne **WebP** afbeeldingsformaat wordt nu ondersteund in Aspose.Words voor .NET Framework 4.6.2 en hoger. U kunt nu lezen en invoegen WebP afbeeldingen in documenten, evenals afbeeldingen in opslaan WebP formaat.

Let op: WebP is momenteel alleen beschikbaar in .NET Standard en .NET Framework v4.6.2 en hoger.

### Renderen en afdrukken

#### Kleurcontrole van de streep <sup>lid 1</sup>

De [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot het beheren van slagkleuren: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### TekeningML grafieken API Uitbreiding <sup>24,2 / 24,3 / 24,4</sup>

De **DrawingML Charts API** wordt verder uitgebreid.

#### Lettertypen insluiten Declared in @font-face regels <sup>24,4</sup>

Toevoegen van een mogelijkheid om lettertypen die in @font-face regels zijn aangegeven in te voegen in de resulterende document [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) eigendom.

#### Werk met Glow en Reflection Formatting <sup>24,4</sup>

De mogelijkheid om te werken met gloeien en reflectie formatteren voor een tekening object is geïmplementeerd.

### Documenten laden en opslaan

#### SvgSaveOptions opgeven tijdens renderen <sup>24.2</sup>

De mogelijkheid om te specificeren [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) tijdens het renderen is toegevoegd met behulp van de [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) en [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) methoden.

#### Lege regels behouden bij laden Markdown bestanden <sup>24.2</sup>

De mogelijkheid om lege regels te behouden bij laden Markdown bestanden zijn toegevoegd.

#### Een nieuwe TIFF-lezer/schrijver <sup>24,3</sup>

Een nieuwe TIFF reader/writer voor Aspose.Words voor .NET Standard, .NET 6 en later is ontwikkeld. Aspose.Words voor .NET 24.3 toegevoegd ondersteuning voor het lezen van TIFF beelden met JPEG en Old JPEG compressie types, en ook aanzienlijk verbeterd de kwaliteit van lezen en schrijven operaties.

### Andere

* De mogelijkheid om de tekst van de `TextBox` OLE controle is ingevoerd door toevoeging van een nieuwe [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) eigenschap aan de nieuwe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) Klasse. <sup>lid 1</sup>
* The Bibliography Sources public API werd geïmplementeerd door het toevoegen van een nieuwe namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) met zijn nieuwe klassen en opsommingen, en door het toevoegen van een nieuwe [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) eigendom van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) Klasse. <sup>lid 1</sup>
* An API om de toegang tot type leden te beperken met behulp van sjabloon syntax voor de `LINQ Reporting Engine` is verstrekt. <sup>lid 1</sup>
* Nieuwe openbare eigendommen [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), en [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) voor verbeterd stijlbeheer zijn toegevoegd aan de [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasse. <sup>24.2</sup>
* De functionaliteit voor het ophalen van de werkelijke referentiemarkeringstekst voor voetnoten en eindnoten is verbeterd met de [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) de [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) methode. <sup>24.2</sup>
* Compatibiliteit met `Word 2016` grafieken voor de `LINQ Reporting Engine` is ingeschakeld. <sup>24.2</sup>
* Emulatie van binaire rasterbewerkingen voor WMF-metafiles is geïmplementeerd. <sup>24,3</sup>
* De mogelijkheid om ondertekeningsopties voor documenten binnen **SaveOptions** is ingeschakeld door een nieuwe [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) klasse met nieuwe publieke leden, evenals het toevoegen van nieuwe eigenschappen aan de [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) en [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) lessen. <sup>24,4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 24.1 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.3 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24,4 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23,9, 23.10, 23.11, 23.12

Aspose.Words 23,9 breidt rendering opties, metafile rendering emulatie, en markdown opties opslaan.

Aspose.Words 23.10 verbetert het renderen, breidt de opties voor het laden en opslaan van documenten uit en stelt gebruikers in staat om documenten op nieuwe manieren samen te voegen.

Aspose.Words 23.11 verbetert het werk met revisies, XLSX-formaat en lettertypen op grafiek legende met extra opties.

Aspose.Words 23.12 introduceert nieuwe eigenschappen en opsommingen voor het werken met PDF en OOXML documenten, evenals ondersteuning voor WebP afbeeldingen.

### Renderen en afdrukken

#### Bijlentitels aanpassen in TekeningML Grafieken <sup>23,9</sup>

De mogelijkheid om astitels aan te passen in DrawingML grafieken is geïntroduceerd door de implementatie van een nieuwe publieke klasse [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) en [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) eigendom.

#### Het bepalen van de verticale positie van lettertypen binnen een alinea <sup>23,9</sup>

Het is nu mogelijk om de verticale positie van lettertypen binnen een paragraaf te definiëren met behulp van het nieuwe publiek [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) eigendom en de nieuwe [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) Lijst.

#### Voorgrondkleurregeling <sup>23.10</sup>

De mogelijkheid om de voorgrondkleur op te halen zonder modifiers is toegevoegd aan de [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) en [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) klassen via de **BaseForeColor** eigendom.

#### Uitbreiding van de functionaliteit van grafieken <sup>23.10</sup>

De functionaliteit van de [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), en [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) De klassen zijn uitgebreid met nieuwe methoden en eigenschappen.

#### Een afbeelding automatisch aanpassen en aanpassen in een vorm <sup>23.10</sup>

Door de nieuwe [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) methode.

#### Standaard lettertypeopmaak voor tekenen ML Grafiek Legende-vermeldingen <sup>23.11</sup>

De mogelijkheid om standaard lettertype opmaak voor legende vermeldingen van DrawingML grafieken is toegevoegd via de [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) eigendom. Deze functie vergemakkelijkt een meer gestroomlijnde en consistente verschijning voor grafiek elementen, het verbeteren van de algehele document esthetiek.

#### Pagina-indeling opgeven bij het openen van PDF in Reader <sup>23,12</sup>

De mogelijkheid om de pagina-indeling te specificeren die gebruikt moet worden bij het openen van een document in een PDF-lezer is toegevoegd door de introductie van een nieuwe [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) eigendom van de [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klasse en de invoering van een nieuwe [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) Lijst.

### Documenten laden en opslaan

#### Een mapnaam specificeren om afbeeldingsURI's in te bouwen Markdown <sup>23,9</sup>

De [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) klasse is uitgebreid met de [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) eigenschap, die het mogelijk maakt om de naam van de map die wordt gebruikt voor het construeren van afbeeldingsURI's geschreven in de Markdown document.

#### PDF verkleinen Uitvoergrootte <sup>23.10</sup>

Verschillende PDF rendering optimalisaties om output grootte te verminderen bij het gebruik [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) instellingen zijn geïmplementeerd.

#### Hyperlinks herkennen bij het laden van TXT-documenten <sup>23.10</sup>

De functie om hyperlinks te herkennen bij het laden van TXT documenten is geïmplementeerd door het toevoegen van een nieuwe [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) eigendom.

### Andere

* Metafile rendering emulatie te bepalen rasterization grootte is geïmplementeerd, specifiek voor WMF pen breedte en EMF cosmetische pen breedte. Om dit te bereiken heeft de **ScaleWmfFontsToMetafileSize** eigendom werd vervangen door de [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) de [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) eigendom is toegevoegd. <sup>23,9</sup>
* Een vereenvoudigde methode voor het invoegen van een document in een ander document op de huidige cursor positie is ingevoerd met behulp van de [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) methode. <sup>23.10</sup>
* De mogelijkheid om stijleigenschappen te openen en te wijzigen is toegevoegd door de introductie van de nieuwe [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) eigendom. <sup>23.10</sup>
* Aan de methoden van de [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) Klasse. <sup>23.10</sup>
* Een manier om te controleren wanneer een bepaalde herziening moet worden aanvaard / afgewezen of niet is uitgevoerd door gebruik te maken van de [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) en [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) methoden. Deze verbetering geeft gebruikers fijnere controle over het herzieningsproces. <sup>23.11</sup>
* De mogelijkheid om alle secties van een document op hetzelfde XLSX werkblad te schrijven is via de nieuwe [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) Type opsomming en het nieuwe [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) eigendom. <sup>23.11</sup>
* Een manier om te controleren hoe ZIP64 formaat extensies worden gebruikt voor OOXML documenten is geïmplementeerd via de nieuwe Zip64Mode eigendom van de `OoxmlSaveOptions` klasse en de nieuwe Zip64Mode opsomming. <sup>23,12</sup>
* Ondersteuning voor WebP beeld is geïntroduceerd. Let op: deze functie is alleen beschikbaar voor .NetStandart en .NET6+ versies. <sup>23,12</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23,9 Release Notes](/words/net/aspose-words-for-net-23-9-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words 23,5 vergroot het vermogen om te werken met grafiekreeksgegevens en de mogelijkheid om te werken met ODT-documenten, en verbetert headers/voeters en hun tekstverpakking.

Aspose.Words 23.6 breidt rendering opties, voegt een nieuwe export formaat, verbetert LINQ rapportage en LowCode gereedschap.

Aspose.Words 23.7 vergroot de rapportagemogelijkheden, voegt een nieuw exportformaat toe en introduceert wijzigingen in het werken met tabellen en digitale handtekeningen.

Aspose.Words 23.8 vergroot de mogelijkheden van verschillende formaten, verbetert rendering, en voegt nieuwe opties voor het werken met velden

### Ondersteunde formaten

* Te beginnen met versie 23.6, is het mogelijk om een document op te slaan in XLSX formaat. Nu kunt u uw documenten converteren naar Excel-formaat. <sup>23,6</sup>
* Vanaf versie 23.7 is het mogelijk om een documentpagina of vorm in EPS-formaat op te slaan. <sup>23,7</sup>

### Nieuwe opmaakfuncties

* De functionaliteit voor het automatisch genereren van Inhoudsopgave (TOC) voor MOBI-documenten is ingevoerd. <sup>23,8</sup>
* De [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) constructor is uitgebreid met [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23,8</sup>
* Vorming van verticale tekst voor EMF-metafiles is geïmplementeerd. <sup>23,8</sup>

### Renderen en afdrukken

#### Aanpassen en aanpassen Grafiekreeksgegevens <sup>23,5</sup>

De functie te krijgen en te wijzigen grafiek serie gegevens werd verstrekt door het toevoegen van:

* nieuwe klassen: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nieuwe enum types: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Ondersteuning voor geavanceerde typografie <sup>23,6</sup>

Ondersteuning voor geavanceerde typografie in WMF, EMF en EMF+ rendering is toegevoegd.

#### Gekleurde inhoud op de pagina <sup>23,6</sup>

Openbare goederen [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), geeft aan of de pagina is gekleurd of niet, is toegevoegd.

#### Formatteren voor grafiekgegevenslabels <sup>23,6</sup>

De mogelijkheid om vul-, slag- en afroepopmaak voor kaartgegevenslabels in te stellen is geïmplementeerd.

### Mail Merge en rapportage

#### Dynamische HTML-invoeging voor LINQ rapportage-engine <sup>23,6</sup>

Een nieuwe manier van dynamische HTML-invoeging voor LINQ Reporting Engine is toegevoegd.

#### Mustache Tags ondersteuning <sup>23,7</sup>

Mustache tags worden nu ondersteund in de [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) en [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) methoden.

#### LINQ Reporting Engine Template Syntaxis Updates <sup>23,7</sup>

De LINQ Reporting Engine syntaxis ondersteunt nu de `ElementAt` en ElementAtOrDefault extensie methoden.

#### De grootte van gerenderde afbeeldingen specificeren <sup>23,8</sup>

Een nieuw openbaar eigendom [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) voor het specificeren van de grootte van weergegeven afbeeldingen in pixel is geïntroduceerd.

#### Whitespaces voor JSON-tekenreekswaarden behouden <sup>23,8</sup>

Er is een optie toegevoegd aan de LINQ Reporting Engine om witruimtes voor JSON string waarden te behouden.

### LowCode <sup>23,6</sup>

Nieuw LowCode Er zijn methoden toegevoegd om verschillende soorten documenten samen te voegen in één enkel uitvoerdocument.

### Andere

* Ondersteuning voor tekstverpakking in headers/voeters is geïmplementeerd. <sup>23,5</sup>
* De mogelijkheid om digitale handtekeningen uit ODT-documenten te verwijderen is toegevoegd door de [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) methode. <sup>23,5</sup>
* Openbare goederen [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) om de basis- en robijntekst van de fonetische gids te verkrijgen [Run](https://reference.aspose.com/words/net/aspose.words/run/) is toegevoegd. <sup>23,5</sup>
* De mogelijkheid om een digitale handtekening waarde op te halen uit een digitaal ondertekend document als byte array is toegevoegd door de invoering van een nieuwe [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) eigendom. <sup>23,7</sup>
* De [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) de klassen zijn uitgebreid met nieuwe publieke leden [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), en [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23,7</sup>
* Ondersteuning voor CITATION en BIBLIOGRAFIE velden is toegevoegd. <sup>23,8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23,5 Release Notes](/words/net/aspose-words-for-net-23-5-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.6 Release Notes](/words/net/aspose-words-for-net-23-6-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.7 Release Notes](/words/net/aspose-words-for-net-23-7-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.8 Release Notes](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23,1, 23,2, 23,3, 23,4

Aspose.Words 23.1 verbetert de prestaties van raster werking emulatie, evenals verbetert document export en rendering kwaliteit.

Aspose.Words 23.2 introduceert het opslaan van documenten in het MOBI-formaat, verbetert de weergave van grafieken en brengt opmerkelijke wijzigingen aan in de weergavegegevens van documenten.

Aspose.Words 23.3 verbetert de documenten importeren en opslaan met nieuwe eigenschappen, en verbetert ook de kwaliteit van het werk met achtergrond- en voorgrondkleur en radiale gradiënt.

Aspose.Words 23.4 verbetert de berekening van sommige parameters en de positie van de tabel en de omliggende tekst.

### Prestatieverbeteringen

#### Emulatie van rasteroperaties <sup>23,1</sup>

De prestaties en kwaliteit van emulatie van rasterbewerkingen met metafiles zijn aanzienlijk verbeterd.

### Ondersteunde formaten

#### Exporteren naar MOBI <sup>23,2</sup>

Beginnend met versie 23.2, is het mogelijk om een document op te slaan in MOBI-formaat (ook wel PRC genoemd, AZW Amazon Kindle's eigen e-book bestandsformaat). Nu kunt u niet alleen MOBI-documenten laden, maar ook uw bestanden exporteren naar MOBI-formaat.

### Renderen

#### Werk met Shading Thema Kleuren <sup>23,1</sup>

De mogelijkheid om te werken met schaduw thema kleuren is geïmplementeerd.

#### Ondersteuning van R-kwadraatcoëfficiënt in DML-grafieken <sup>23,1</sup>

Ondersteuning van R-kwadraatcoëfficiënt in DML grafiek trendline labels wanneer rendering is toegevoegd.

#### Grafiekverbeteringen <sup>23,2</sup>

Sinds 23,2 is de grafiekweergave aanzienlijk verbeterd.

#### Achtergrond en voorgrondkleurcontrole <sup>23,3</sup>

De [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot achtergrond- en voorgrondkleuren: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Radiaal kleurverloop met de `SkiaSharp` Native Shader <sup>23,3</sup>

Rendering van radiale hellingen met de `SkiaSharp` native shader voor .NET Standard is uitgevoerd.

#### Afstand tussen de Tafel en Omgeving Tekst <sup>23,4</sup>

De mogelijkheid om de afstand tussen de tabel en de omliggende tekst in te stellen is toegevoegd door het introduceren van nieuwe eigenschappen aan de [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) klasse: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), en [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Documenten laden en opslaan

#### Genereren `TOC` voor AZW3-documenten <sup>23,1</sup>

Het vermogen om te genereren `TOC` (inhoudsopgave) voor AZW3-documenten is toegevoegd door het gebruik van de [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) eigendom.

#### Items van lijst exporteren naar Markdown <sup>23,1</sup>

Een manier om de uitvoer van lijst-items naar Markdown formaat is verstrekt door toevoeging van de [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) eigendom van de [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) Klasse.

#### Document dat voortgangsmeldingen opslaat <sup>23,3</sup>

Het opslaan van voortgangsmeldingen voor MOBI- en AZW3-formaten is geïmplementeerd.

#### Veroordeeldheid en aanpassing van de woordafstand <sup>23,3</sup>

De mogelijkheid om te specificeren of zin en woordafstand automatisch kunnen worden aangepast bij documentimport is toegevoegd door de [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) eigendom.

### Andere

* Het vermogen om de aanpassing van de karakterafstand van een document te specificeren is toegevoegd door middel van de [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) uitvoering <sup>23,2</sup>
* Instructie Aspose.Words of tekstvakken, voetnoten en endnotes in woordtellingsstatistieken zijn opgenomen door toevoeging van de [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) eigenschap <sup>23,2</sup>
* Een nieuwe optie voor een document stijl, die het mogelijk maakt om te specificeren of de stijl automatisch wordt geherdefinieerd op basis van de juiste waarde, is ingevoerd via de [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) eigenschap <sup>23,2</sup>
* Het vermogen om te bepalen of [Run](https://reference.aspose.com/words/net/aspose.words/run/) is een fonetische handleiding is toegevoegd met behulp van de [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) eigenschap <sup>23,4</sup>
* Een eenvoudige manier om te werken met series en assen van combo grafieken is geïmplementeerd door de invoering van de [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) klasse en toevoeging van de [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) eigenschap <sup>23,4</sup>
* Nieuwe openbare eigenschappen verbonden aan de vorm relatieve positionering en grootte zijn toegevoegd aan de [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klasse <sup>23,4</sup>
* Nauwkeurigheid en prestaties van kleur helderheid berekening voor automatische tekst kleur resolutie is verbeterd in overeenstemming met de nieuwste versies van Microsoft Word <sup>23,4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23.1 Release Notes](/words/net/aspose-words-for-net-23-1-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.2 Release Notes](/words/net/aspose-words-for-net-23-2-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.3 Release Notes](/words/net/aspose-words-for-net-23-3-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.4 Release Notes](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 22,9, 22.10, 22.11, 22.12

Aspose.Words 22,9 breidt opties uit voor het laden en opslaan van documenten en verbeterde interactie met enkele andere opties.

Aspose.Words 22.10 verbetert het vinden en vervangen van opties, verbetert OLE objecten, en breidt lijst functionaliteit.

Aspose.Words 22.11 breidt zijn functionaliteit uit met nieuwe opties voor handiger werken met reeds bekende objecten: velden, afdrukken, OLE en gestructureerde documenttags.

Aspose.Words 22.12 vergroot de renderingsmogelijkheden en introduceert opties voor het werken met marges bij het laden/opslaan van een document.

### Prestatieverbeteringen <sup>22.12</sup>

Er is een optimalisatie ingevoerd die de diepte van graphics state nesting aanzienlijk vermindert bij het renderen naar PDF om de naleving van de specificaties te handhaven.

### Renderen en afdrukken

#### Afdrukken Niet-gekleurd Pagina's op een kleurenprinter <sup>22.11</sup>

Een aangepaste kleur/grijswaarden afdrukmodus is geïmplementeerd door een nieuwe **GrayscaleAuto** waarde aan de [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) Lijst.

Een nieuwe print eigenschap stelt gebruikers in staat om te controleren hoe niet-gekleurde pagina's worden afgedrukt als het apparaat ondersteunt kleur afdrukken. Deze functie kan nuttig zijn als gebruikers niet-gekleurde pagina's automatisch willen afdrukken met alleen grijswaarden afdrukmodus.

#### Nieuwe Rand-renderingseigenschappen <sup>22.12</sup>

Nieuwe openbare eigendommen [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) en [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) zijn geïntroduceerd.

#### Lineaire Trendline Formule voor TekeningML Rendering <sup>22.12</sup>

Lineaire trendlijn formule rendering voor DrawingML grafieken is geïmplementeerd.

#### Lettertype Terugvalinstellingen voor Google Noto Lettertypen <sup>22.12</sup>

De vooraf gedefinieerde font-fallbackinstellingen voor Google Noto lettertypen zijn bijgewerkt.

### Documenten laden en opslaan

#### Cache Header of Footer Shapes om PDF te verminderen Grootte <sup>22,9</sup>

De mogelijkheid om header/voeter vormen cache om de grootte van de output PDF-bestand te verminderen is geïmplementeerd door het toevoegen van een nieuwe **CacheHeaderFooterShapes** eigendom.

#### Automatische nummerdetectie bij het laden van een document <sup>22,9</sup>

Het vermogen om de [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) eigendom na tekst laden is geïmplementeerd door een uitgebreide van de [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) Klasse.

#### Bijzondere vermelding Margetype <sup>22.12</sup>

De mogelijkheid om een bepaalde [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) type voor de gegeven sectie is geïmplementeerd.

### Zoeken en vergelijken <sup>22.10</sup>

De mogelijkheid om te negeren [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) bij het vinden en vervangen van opties is geïmplementeerd door het toevoegen van een nieuwe [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) eigendom van de [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) Klasse.

### Andere

* Een nieuwe functie voor FieldEQ als OfficeMath is toegevoegd. <sup>22,9</sup>
* Het creëren van gestructureerde documenttags van Group type op rijniveau was toegestaan. <sup>22,9</sup>
* OLE objecten en controles worden nu behandeld als metafile beelden bij het omzetten van een document naar HTML. <sup>22.10</sup>
* Een nieuwe functie om te controleren of een bepaalde lijst is gemaakt uit dezelfde template als de vergeleken lijst is toegevoegd door de invoering van een nieuwe [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) methode in de [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) Klasse. <sup>22.10</sup>
* De mogelijkheid om nieuwe gestructureerde document tags van de [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) type is toegevoegd. <sup>22.11</sup>
* Er is voorzien in de mogelijkheid om de vooruitgang op het gebied van het bijwerken van het veld te volgen. <sup>22.11</sup>
* A new **EmbedAttachments** eigenschap waarmee gebruikers OLE bijlagen kunnen insluiten vanuit een brondocument in het uitvoer PDF-document is geïntroduceerd. <sup>22.11</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 22,9 Release Notes](/words/net/aspose-words-for-net-22-9-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22.10 Release Notes](/words/net/aspose-words-for-net-22-10-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22.11 Release Notes](/words/net/aspose-words-for-net-22-11-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22.12 Loslaten](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 22,5; 22,6; 22,7; 22,8

Aspose.Words 22,5 introduceert ondersteuning voor nieuwe laadformaten en een nieuwe afdrukpaginagrootte, en verbetert enkele renderingsopties.

Aspose.Words 22.6 breidt de mogelijkheden uit om PDF naar andere formaten te converteren, en verbetert het werk met DrawingML en solide tekstvuleffect.

Aspose.Words 22.7 vergroot de mogelijkheden om te werken met rendering functies, en voegt ook nieuwe functies voor het werken met HTML import en export naar PDF.

Aspose.Words 22.8 introduceert een nieuw exportformaat en verbetert verschillende renderingalgoritmen.

De API is verbeterd voor een flexibelere en gemakkelijkere ontwikkeling.

### Ondersteunde formaten

* Ondersteuning voor het laden van EPUB en XML documenten is ingevoerd door het toevoegen van nieuwe waarden aan de [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) Lijst. Vanaf versie 22.5, is het mogelijk om EPUB en XML documenten te laden in Aspose.Words document model en converteren naar elke [ondersteunde formaten](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22,5</sup>
* Vanaf versie 22.8 is het mogelijk om een document op te slaan in het AZW3 formaat. Amazon Kindle's eigen e-book bestandsformaat (KF8 is een andere naam voor het formaat). Nu kunt u niet alleen AZW3 documenten laden, maar ook uw bestanden exporteren naar AZW3 formaat, dat is in wezen een samengesteld EPUB. <sup>22,8</sup>

### Renderen en afdrukken

#### Nieuwe afdrukgrootte <sup>22,5</sup>

Ondersteuning voor de [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/) Lijst.

#### MathML-formules renderen <sup>22,5</sup>

De weergave van een randvak rond MathML formules en lettertype detectie bij het renderen van tekens voor dergelijke formules is verbeterd.

#### DML Grafiekverbeteringen <sup>22,6</sup>

TekeningML grafieken openbaar API is uitgebreid om kleurverloop, textuur en patroonvullingen te ondersteunen.

#### Glyph Uitlijning Ontleden voor OpenType <sup>27,7</sup>

Aspose.Words eigen glyph schetsen voor OpenType (CFF) lettertypen is geïmplementeerd.

Wat voorafging: glyph Het verwerken van OpenType (CFF) lettertypen werd uitgevoerd via GDI+. Dus nu werkt het in gevallen waarin GDI+ niet beschikbaar is Java, .NET Standard platforms, Linux OS, enz. Glyph schetst ontleden is vereist in specifieke gevallen zoals WordArt, tekst effecten, sommige Office Wiskunde functies, en anderen.

#### Vormschaduwopmaak instellen <sup>27,7</sup>

De mogelijkheid om de schaduwopmaak van het vormobject in te stellen is geboden door het toevoegen van een nieuwe [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) eigendom.

#### Ondersteuning voor celafstand in tabellen <sup>22,8</sup>

De lay-out motor is nu aanzienlijk verbeterd: een zeer complex celafstandsmechanisme in tabellen is geïmplementeerd.

#### Lettertypesubstitutie voor symbolen <sup>22,8</sup>

Lettertypevervanging voor symbolen is verbeterd.

#### Grafiek Axis Label Rotatie Algorithm <sup>22,8</sup>

Het rotatiealgoritme van kaartaslabels is verbeterd.

### Documenten laden en opslaan

#### PDF laden en omzetten naar Fixed-page Format zonder Layout Model <sup>22,6</sup>

De mogelijkheid om PDF-documenten te laden en converteren naar vaste paginaformaten met hoge trouw en prestaties is geïmplementeerd.

#### Nieuwe HTML-importmodus <sup>27,7</sup>

Een nieuwe HTML import mode voor blok-niveau elementen is ingevoerd door het toevoegen van een nieuwe waarde aan de [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/) Lijst.

#### Converteren naar PDF/UA-1 CSompliant met WCAG 2.0 <sup>27,7</sup>

Ondersteuning voor het omzetten van een document naar PDF/UA-1 formaat, conform WCAG 2.0, is toegevoegd.

Dus, als de klant een toegankelijk Word-document heeft en het converteert naar PDF/UA-1 via Aspose.Words met vermelding van de conversie-specificiën, dan zal de uitvoer WCAG 2.0 compatibel zijn.

WCAG of Web Content Toegankelijkheid Richtlijnen is een reeks richtlijnen ontwikkeld door W3C in samenwerking met individuen en organisaties over de hele wereld. Nu met Aspose.Words U kunt uw document converteren naar het uitvoer PDF/UA-1 formaat, dat geschikt is om WCAG 2.0 conforme PDF documenten te bouwen.

Er zij op gewezen dat WCAG 2.0 twee aanvullende eisen heeft die niet in de PDF/UA-1 specificatie zijn gespecificeerd:

* contrast eisen

* vereisten voor het merken van multimedia-inhoud

Maar beide vereisten zijn niet relevant voor ons geval van het omzetten van Word naar PDF.

### Andere

* Uitzondering van het erven van de solide tekst vullen effect dat MS Word gedrag nabootst is geïmplementeerd. <sup>22,6</sup>
* Ondersteuning van de `DATABASE` velden zijn toegevoegd. Met behulp van dit type veld kunt u bijvoorbeeld de resultaten van een database query tonen in a Microsoft Word tafel. <sup>27,7</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 22,5 Release Notes](/words/net/aspose-words-for-net-22-5-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22,6 Release Notes](/words/net/aspose-words-for-net-22-6-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22.7 Release Notes](/words/net/aspose-words-for-net-22-7-release-notes/).

Meer informatie over [Aspose.Words voor .NET 22,8 Release Notes](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Zie ook

{{% alert color="primary" %}}

Deze pagina bevat het laatste nieuws van de afgelopen 2 jaar. Voor meer informatie over eerdere releases, zie de [Loslaten '](/words/net/release-notes/) pagina's in de desbetreffende secties.

{{% /alert %}}