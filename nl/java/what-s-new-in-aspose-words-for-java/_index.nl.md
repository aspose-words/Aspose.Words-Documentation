---
title: Wat is nieuw?
second_title: Aspose.Words voor Java
articleTitle: Wat is nieuw in Aspose.Words voor Java
linktitle: Wat is nieuw in Aspose.Words voor Java
type: docs
description: "Aspose.Words voor Java breidt uit en verbetert dagelijks. Op deze pagina, kunt u leren over de enorme en meest interessante kenmerken van het product."
weight: 2
url: /nl/java/what-s-new-in-aspose-words-for-java/
---

Deze pagina beschrijft de meest interessante nieuwe Aspose.Words features geïntroduceerd in recente releases.

## Aspose.Words voor Java 24,1; 24,2; 24,3

Aspose.Words 24.1 verbetert de ervaring rond het beheren van beroerte kleuren, verbetert OLE objecten en LINQ rapportage, en introduceert een nieuwe Bibliografie bronnen publiek API.

Aspose.Words 24.2 uitgebreide grafieken API, stijlbeheer, en LINQ opties. Deze versie van Aspose.Words ook de mogelijkheid ingevoerd om SvgSaveOptions te specificeren tijdens het renderen, flexibelere bediening laden Markdown bestanden, en werken met referentietekst voor voetnoten en endnotes.

Aspose.Words 24.3 introduceert een nieuwe TIFF Reader/Writer en Emulatie van binaire rasterbewerkingen voor WMF-metafiles. Aspose.Words 24,3 blijft ook de grafieken uitbreiden API.

### Renderen en afdrukken

#### Kleurregeling ophalen <sup>lid 1</sup>

De [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot het beheren van slagkleuren: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) en [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) en [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### TekeningML grafieken API Uitbreiding <sup>24,2 / 24,3</sup>

De **DrawingML Charts API** wordt verder uitgebreid.

### Documenten laden en opslaan

#### Specificeer SvgSaveOptions tijdens renderen <sup>24.2</sup>

Het vermogen om te specificeren [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) tijdens het renderen is toegevoegd met behulp van de [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) en [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) methoden.

#### Lege regels behouden bij laden Markdown bestanden <sup>24.2</sup>

De mogelijkheid om lege regels te behouden bij laden Markdown bestanden zijn toegevoegd.

#### Een nieuwe TIFF-lezer/schrijver <sup>24,3</sup>

Een nieuwe TIFF reader/writer voor Aspose.Words voor .NET Standard, .NET 6 en later is ontwikkeld. Aspose.Words voor .NET 24.3 toegevoegd ondersteuning voor het lezen van TIFF-afbeeldingen met JPEG en Old JPEG compressie types, en ook aanzienlijk verbeterd de kwaliteit van lezen en schrijven operaties.

### Andere

* De mogelijkheid om de tekst van de `TextBox` OLE controle is ingevoerd door toevoeging van een nieuwe [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) eigenschap aan de nieuwe [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Klasse. lid 1 <sup>lid 1</sup>
* The Bibliography Sources public API werd uitgevoerd door het toevoegen van een paar nieuwe [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) en [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) klassen en a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) telling, alsmede door toevoeging van een nieuwe [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) eigendom van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. <sup>lid 1</sup>
* An API de toegang tot typeleden beperken met behulp van sjabloonsyntaxis voor de LINQ Reporting Engine is verstrekt. <sup>lid 1</sup>
* Nieuwe openbare eigendommen [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), en [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) voor verbeterd stijlbeheer zijn toegevoegd aan de [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasse. <sup>24.2</sup>
* De functionaliteit voor het ophalen van de werkelijke referentiemarkeringstekst voor voetnoten en eindnoten is verbeterd met de [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) de [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) methode. <sup>24.2</sup>
* Compatibiliteit met `Word 2016` grafieken voor de `LINQ Reporting Engine` is ingeschakeld. <sup>24.2</sup>
* Emulatie van binaire rasterbewerkingen voor WMF-metafiles is geïmplementeerd. <sup>24,3</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 24.1 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Meer informatie over [Aspose.Words voor Java 24.2 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Meer informatie over [Aspose.Words voor Java 24.3 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

{{% /alert %}}

## Aspose.Words voor Java 23,9, 23.10, 23.11, 23.12

Aspose.Words 23,9 breidt rendering opties, metafile rendering emulatie, en markdown opties opslaan.

Aspose.Words 23.10 verbetert het renderen, breidt de opties voor het laden en opslaan van documenten uit en stelt gebruikers in staat om documenten op nieuwe manieren samen te voegen.

Aspose.Words 23.11 verbetert het werk met revisies, XLSX-formaat en lettertypen op grafiek legende met extra opties.

Aspose.Words 23.12. introduceert nieuwe eigenschappen en opsommingen voor het werken met PDF documenten, ondersteuning voor WebP beelden, en bijgewerkte Bouncy Castle bibliotheek.

### Renderen en afdrukken

#### Assentitels aanpassen in TekeningML Grafieken <sup>23,9</sup>

De mogelijkheid om astitels aan te passen in DrawingML grafieken is geïntroduceerd door de implementatie van een nieuwe publieke klasse [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) en [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) eigendom.

#### Het bepalen van de verticale positie van lettertypen binnen een alinea <sup>23,9</sup>

Het is nu mogelijk om de verticale positie van lettertypen binnen een alinea te definiëren met behulp van het nieuwe publiek [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) eigendom en de nieuwe [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Samenvatting.

#### Voorgrondkleurregeling <sup>23.10</sup>

De mogelijkheid om de voorgrondkleur op te halen zonder modifiers is toegevoegd aan de [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) en [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klassen via de **BaseForeColor** eigendom.

#### Uitbreiding van de functionaliteit van grafieken <sup>23.10</sup>

De functionaliteit van de [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), en [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) De klassen zijn uitgebreid met nieuwe methoden en eigenschappen.

#### Een afbeelding automatisch aanpassen en aanpassen in een vorm <sup>23.10</sup>

Door de nieuwe [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) methode.

#### Standaard lettertypeopmaak voor tekenen ML Grafiek Legende-vermeldingen <sup>23.11</sup>

De mogelijkheid om standaard lettertype opmaak voor legende vermeldingen van DrawingML grafieken is toegevoegd via de **Font** eigendom. Deze functie vergemakkelijkt een meer gestroomlijnde en consistente verschijning voor grafiek elementen, het verbeteren van de algehele document esthetiek.

#### Pagina-indeling opgeven bij het openen van PDF in Reader <sup>23,12</sup>

De mogelijkheid om de pagina-indeling te specificeren die gebruikt moet worden bij het openen van een document in een PDF-lezer is toegevoegd door de introductie van een nieuwe [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) eigendom van de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasse en de invoering van een nieuwe [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Samenvatting.

### Documenten laden en opslaan

#### Een mapnaam opgeven om afbeeldingsURI's in te bouwen Markdown <sup>23,9</sup>

De [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasse is uitgebreid met de [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) eigenschap, die het mogelijk maakt om de naam van de map te specificeren die gebruikt wordt om afbeeldingsURI's te construeren die in de Markdown document.

#### PDF verkleinen Uitvoergrootte <sup>23.10</sup>

Verschillende PDF rendering optimalisaties om de output grootte te verminderen bij het gebruik [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) instellingen zijn geïmplementeerd.

#### Hyperlinks herkennen bij het laden van TXT-documenten <sup>23.10</sup>

De functie om hyperlinks te herkennen bij het laden van TXT-documenten is geïmplementeerd door het toevoegen van een nieuwe [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) eigendom.

### Andere

- Metafile rendering emulatie te bepalen rasterization grootte is geïmplementeerd, specifiek voor WMF pen breedte en EMF cosmetische pen breedte. Om dit te bereiken, heeft de **ScaleWmfFontsToMetafileSize** eigendom werd vervangen door de [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) de [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) eigendom is toegevoegd. <sup>23,9</sup>
- Een vereenvoudigde methode voor het invoegen van een document in een ander document op de huidige cursor positie is ingevoerd met behulp van de [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) methode. <sup>23.10</sup>
- De mogelijkheid om stijleigenschappen te openen en te wijzigen is toegevoegd door de introductie van de nieuwe [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) eigendom. <sup>23.10</sup>
- Aan de methoden van de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasse. <sup>23.10</sup>
- Een manier om te controleren wanneer een bepaalde herziening moet worden aanvaard / verworpen of niet is uitgevoerd door gebruik te maken van de [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) en [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) methoden. Deze verbetering geeft gebruikers fijnere controle over het herzieningsproces. <sup>23.11</sup>
- De mogelijkheid om alle secties van een document op hetzelfde XLSX werkblad te schrijven is via de nieuwe [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) Type opsomming en het nieuwe [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) eigendom. <sup>23.11</sup>
- Steun voor WebP beeld is geïntroduceerd. Let op: deze functie is alleen beschikbaar voor .NetStandart en .NET6+ versies. <sup>23,12</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23,9 Release Notes](/words/java/aspose-words-for-java-23-9-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.10 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.11 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.12 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 23,5, 23,6, 23,7, 23,8

Aspose.Words 23,5 vergroot het vermogen om te werken met grafiekreeksgegevens en de mogelijkheid om te werken met ODT-documenten, en verbetert headers/voeters en hun tekstverpakking.

Aspose.Words 23.6 breidt rendering opties, voegt een nieuwe export formaat, verbetert LINQ rapportage en LowCode Gereedschap.

Aspose.Words 23.7 vergroot de rapportagemogelijkheden, voegt een nieuw exportformaat toe en introduceert wijzigingen in het werken met tabellen en digitale handtekeningen.

Aspose.Words 23.8 vergroot de mogelijkheden van verschillende formaten, verbetert rendering, en voegt nieuwe opties voor het werken met velden

### Ondersteunde formaten

* Vanaf versie 23.6, is het mogelijk om een document op te slaan in XLSX formaat. Nu kunt u uw documenten converteren naar Excel-formaat. <sup>23,6</sup>

* Vanaf versie 23.7 is het mogelijk om een documentpagina of vorm in EPS-formaat op te slaan. <sup>23,7</sup>

* Nieuw formaat

  - De functionaliteit voor het automatisch genereren van Inhoudsopgave (TOC) voor MOBI-documenten is ingevoerd. <sup>23,8</sup>
  - De [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) constructor is uitgebreid met [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23,8</sup>
  - Vormen van verticale tekst voor EMF-metafiles is geïmplementeerd. <sup>23,8</sup>

### Renderen

#### Aanpassen en aanpassen Grafiekreeksgegevens <sup>23,5</sup>

De functie te krijgen en te wijzigen grafiek serie gegevens werd verstrekt door het toevoegen van:

- nieuwe klassen: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nieuwe enumtypes: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Ondersteuning voor geavanceerde typografie <sup>23,6</sup>

Ondersteuning voor geavanceerde typografie in WMF, EMF en EMF+ rendering is toegevoegd.

#### Gekleurde inhoud op de pagina <sup>23,6</sup>

Openbare goederen [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), geeft aan of de pagina gekleurd is of niet, is toegevoegd.

#### Formatteren voor grafiekgegevenslabels <sup>23,6</sup>

De mogelijkheid om vul-, slag- en afroepopmaak voor kaartgegevenslabels in te stellen is geïmplementeerd.

### Mail Merge en rapportage

#### Dynamische HTML-invoeging voor LINQ-rapporterende motor <sup>23,6</sup>

Een nieuwe manier van dynamische HTML inbrenging voor LINQ Reporting Engine is toegevoegd.

#### Mustache Tags ondersteuning <sup>23,7</sup>

Mustache tags worden nu ondersteund in de [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) en [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) methoden.

#### LINQ Reporting Engine Syntaxis updates <sup>23,7</sup>

De LINQ Reporting Engine syntaxis ondersteunt nu de `ElementAt` en ElementAtOrDefault extensie methoden.

#### De grootte van gerenderde afbeeldingen specificeren <sup>23,8</sup>

Een nieuw openbaar eigendom **ImageSize** voor het specificeren van de grootte van weergegeven afbeeldingen in pixel is geïntroduceerd.

#### Whitespaces voor JSON-tekenreekswaarden behouden <sup>23,8</sup>

Aan de LINQ Reporting Engine is een optie toegevoegd om witruimtes voor JSON stringwaarden te behouden.

### LowCode <sup>23,6</sup>

Nieuw LowCode Er zijn methoden toegevoegd om verschillende soorten documenten samen te voegen in één enkel uitvoerdocument.

### Andere

- Ondersteuning voor tekstverpakking in headers/voeters is geïmplementeerd. <sup>23,5</sup>
- De mogelijkheid om digitale handtekeningen uit ODT-documenten te verwijderen is toegevoegd door de [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) methode. <sup>23,5</sup>
- Openbare goederen [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) om de basis- en robijntekst van de fonetische gids te verkrijgen [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) is toegevoegd. <sup>23,5</sup>
- De mogelijkheid om een digitale handtekening waarde van een digitaal ondertekend document als byte array is toegevoegd door de invoering van een nieuwe [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) eigendom. <sup>23,7</sup>
- De [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) en [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) de klassen zijn uitgebreid met nieuwe publieke leden [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), en [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23,7</sup>
- Ondersteuning voor CITATIE en BIBLIOGRAFIE velden is toegevoegd. <sup>23,8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23,5 Release Notes](/words/java/aspose-words-for-java-23-5-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.6 Release Notes](/words/java/aspose-words-for-java-23-6-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.7 Release Notes](/words/java/aspose-words-for-java-23-7-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.8 Release Notes](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 23,1, 23,2, 23,3, 23,4

Aspose.Words 23.1 verbetert de prestaties van raster werking emulatie, evenals verbetert document export en rendering kwaliteit.

Aspose.Words 23.2 introduceert het opslaan van documenten in het MOBI-formaat, verbetert de weergave van grafieken en brengt opmerkelijke wijzigingen aan in de weergavegegevens van documenten.

Aspose.Words 23.3 verbetert de documenten importeren en opslaan met nieuwe eigenschappen, en verbetert ook de kwaliteit van het werk met achtergrond- en voorgrondkleur en radiale gradiënt.

Aspose.Words 23.4 verbetert de berekening van sommige parameters en de positie van de tabel en de omliggende tekst.

### Prestatieverbeteringen

#### Emulatie van rasteroperaties <sup>23,1</sup>

De prestaties en kwaliteit van emulatie van rasteroperaties met metafiles zijn aanzienlijk verbeterd.

### Ondersteunde formaten

#### Exporteren naar MOBI <sup>23,2</sup>

Te beginnen met versie 23.2, is het mogelijk om een document op te slaan in MOBI-formaat (ook wel PRC genoemd, AZW Amazon Kindle's eigen e-book bestandsformaat). Nu kunt u niet alleen MOBI-documenten laden, maar ook uw bestanden exporteren naar MOBI-formaat.

### Renderen

#### Werk met Shading Thema Kleuren <sup>23,1</sup>

De mogelijkheid om te werken met schaduw thema kleuren is geïmplementeerd.

#### Ondersteuning van R-kwadraatcoëfficiënt in DML-grafieken <sup>23,1</sup>

Ondersteuning van R-kwadraatcoëfficiënt in DML grafiek trendline labels wanneer rendering is toegevoegd.

#### Grafiekverbeteringen <sup>23,2</sup>

Sinds 23,2 is de grafiekweergave aanzienlijk verbeterd.

#### Achtergrond en voorgrondkleurcontrole <sup>23,3</sup>

De [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) klasse is uitgebreid met een set nieuwe publieke eigenschappen met betrekking tot achtergrond- en voorgrondkleuren: **ForeThemeColor** en **BackThemeColor**, **ForeTintAndShade** en **BackTintAndShade**.

#### Radiaal kleurverloop met de `SkiaSharp` Native Shader <sup>23,3</sup>

Rendering van radiale hellingen met de `SkiaSharp` native shader voor .NET Standard is uitgevoerd.

#### Afstand tussen de Tafel en Omgeving Tekst <sup>23,4</sup>

De mogelijkheid om de afstand tussen de tabel en de omliggende tekst in te stellen is toegevoegd door het introduceren van nieuwe eigenschappen aan de [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) klasse: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), en [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Documenten laden en opslaan

#### Genereren `TOC` voor AZW3-documenten <sup>23,1</sup>

Het vermogen om te genereren `TOC` (inhoudsopgave) voor AZW3-documenten is toegevoegd door het gebruik van de [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) eigendom.

#### Items van lijst exporteren naar Markdown <sup>23,1</sup>

Een manier om de uitvoer van lijstitems naar Markdown formaat is verstrekt door toevoeging van de [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) eigendom van de [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasse.

#### Document dat voortgangsmeldingen opslaat <sup>23,3</sup>

Het opslaan van voortgangsmeldingen voor MOBI- en AZW3-formaten is geïmplementeerd.

#### Veroordeeldheid en aanpassing van de woordafstand <sup>23,3</sup>

Het vermogen om te specificeren of zin en woordafstand automatisch bij documentimport kan worden aangepast, is toegevoegd door de **AdjustSentenceAndWordSpacing** eigendom.

### Andere

- Het vermogen om de aanpassing van de karakterafstand van een document aan te geven is toegevoegd via de [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) uitvoering <sup>23,2</sup>
- De manier om instructies te geven Aspose.Words of tekstvakken, voetnoten en endnotes in woordtellingsstatistieken zijn opgenomen door toevoeging van de [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) eigenschap <sup>23,2</sup>
- Een nieuwe optie voor een documentstijl, die het mogelijk maakt te specificeren of de stijl automatisch wordt geherdefinieerd op basis van de juiste waarde, is ingevoerd via de [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) eigenschap <sup>23,2</sup>
- Het vermogen om te bepalen of [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) is een fonetische handleiding is toegevoegd met behulp van de **IsPhoneticGuide** eigenschap <sup>23,4</sup>
- Een eenvoudige manier om te werken met series en assen van combo grafieken is geïmplementeerd door de invoering van de **ChartAxisCollection** klasse en toevoeging van de **Chart.Axes** eigenschap <sup>23,4</sup>
- Nieuwe openbare eigenschappen verbonden aan de vorm relatieve positionering en grootte zijn toegevoegd aan de [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasse <sup>23,4</sup>
- Nauwkeurigheid en prestaties van kleur helderheid berekening voor automatische tekst kleur resolutie is verbeterd in overeenstemming met de nieuwste versies van Microsoft Word <sup>23,4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23.1 Release Notes](/words/java/aspose-words-for-java-23-1-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.2 Release Notes](/words/java/aspose-words-for-java-23-2-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.3 Release Notes](/words/java/aspose-words-for-java-23-3-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.4 Release Notes](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 22,9, 22.10, 22.11, 22.12

Aspose.Words 22,9 breidt de opties uit voor het laden en opslaan van documenten en verbeterde interactie met enkele andere opties.

Aspose.Words 22.10 verbetert het vinden en vervangen van opties, verbetert OLE-objecten en breidt lijstfunctionaliteit uit.

Aspose.Words 22.11 breidt zijn functionaliteit uit met nieuwe opties voor handiger werken met reeds bekende objecten: velden, afdrukken, OLE en gestructureerde documenttags.

Aspose.Words 22.12 vergroot de renderingsmogelijkheden en introduceert opties voor het werken met marges bij het laden/opslaan van een document.

### Prestatieverbeteringen <sup>22.12</sup>

Er is een optimalisatie ingevoerd die de diepte van graphics state nesting aanzienlijk vermindert bij het renderen naar PDF om naleving van de specificaties te behouden.

### Renderen en afdrukken

#### Niet-gekleurd afdrukken Pagina's op een kleurenprinter <sup>22.11</sup>

Een aangepaste kleur/grijswaarden afdrukmodus is geïmplementeerd door een nieuwe **GrayscaleAuto** waarde aan de [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) Samenvatting.

Een nieuwe printeigenschap stelt gebruikers in staat om te bepalen hoe niet-gekleurde pagina's worden afgedrukt als het apparaat kleurafdrukken ondersteunt. Deze functie kan handig zijn als gebruikers niet-gekleurde pagina's automatisch willen afdrukken met alleen grijswaarden afdrukmodus.

#### Nieuwe Rand-renderingseigenschappen <sup>22.12</sup>

Nieuwe openbare eigendommen [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) en [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) zijn geïntroduceerd.

#### Lineaire Trendline Formule voor TekeningML Rendering <sup>22.12</sup>

Lineaire trendlijn formule rendering voor DrawingML grafieken is geïmplementeerd.

#### Lettertype terugvalinstellingen voor Google Noto Lettertypen <sup>22.12</sup>

De vooraf gedefinieerde font-fallbackinstellingen voor Google Noto lettertypen zijn bijgewerkt.

### Documenten laden en opslaan

#### Cache Header of Footer Shapes om PDF-grootte te verkleinen <sup>22,9</sup>

De mogelijkheid om header/voeter vormen cache om de grootte van de output PDF-bestand te verminderen is geïmplementeerd door het toevoegen van een nieuwe [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) eigendom.

#### Automatische nummerdetectie bij het laden van een document <sup>22,9</sup>

De mogelijkheid om de [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) eigendom na tekst laden is uitgevoerd door een uitgebreide van de [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Klasse.

#### Bijzondere vermelding Margetype <sup>22.12</sup>

De mogelijkheid om een bepaalde [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) type voor de gegeven sectie is geïmplementeerd.

### Zoeken en vergelijken <sup>22.10</sup>

De mogelijkheid om te negeren [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) bij het vinden en vervangen van opties is geïmplementeerd door een nieuwe [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) eigendom van de [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasse.

### Andere

- Een nieuwe functie om FieldEQ als OfficeMath te krijgen is toegevoegd. <sup>22,9</sup>
- Aanmaken van gestructureerde documenttags van Group type op rijniveau was toegestaan. <sup>22,9</sup>
- OLE objecten en controles worden nu behandeld als metafile beelden bij het omzetten van een document naar HTML. <sup>22.10</sup>
- Een nieuwe functie om te controleren of een bepaalde lijst is gemaakt van dezelfde template als de vergeleken lijst is toegevoegd door de invoering van een nieuwe [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) methode in de [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Klasse. <sup>22.10</sup>
- Het vermogen om nieuwe gestructureerde document tags van de [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) type is toegevoegd. <sup>22.11</sup>
- Er is voorzien in de mogelijkheid om de voortgang van het veld bij te werken. <sup>22.11</sup>
- Een nieuwe **EmbedAttachments** eigenschap waarmee gebruikers OLE-bijlagen vanuit een brondocument in het uitvoer PDF-document kunnen insluiten is geïntroduceerd. <sup>22.11</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 22,9 Release Notes](/words/java/aspose-words-for-java-22-9-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.10 Release Notes](/words/java/aspose-words-for-java-22-10-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.11 Release Notes](/words/java/aspose-words-for-java-22-11-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.12 Loslaten](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 22,5; 22,6; 22,7; 22,8

Aspose.Words 22,5 introduceert ondersteuning voor nieuwe laadformaten en een nieuwe afdrukpaginagrootte, en verbetert enkele renderingsopties.

Aspose.Words 22,6 breidt de mogelijkheden van het omzetten van PDF naar andere formaten uit, en verbetert het werk met DrawingML en solide tekstvuleffect.

Aspose.Words 22.7 vergroot de mogelijkheden om te werken met rendering functies, en voegt ook nieuwe functies voor het werken met HTML import en export naar PDF.

Aspose.Words 22.8 introduceert een nieuw exportformaat en verbetert verschillende rendering algoritmen.

De API is verbeterd voor meer flexibele en handige ontwikkeling.

### Ondersteunde formaten

* Ondersteuning voor het laden van EPUB en XML documenten is ingevoerd door het toevoegen van nieuwe waarden aan de [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Samenvatting. Vanaf versie 22.5, is het mogelijk om EPUB en XML documenten te laden in Aspose.Words document model en converteren naar elke [verdere beoordelingen](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22,5</sup>
* Vanaf versie 22.8, is het mogelijk om een document op te slaan in AZW3 formaat. Amazon Kindle's eigen e-book bestandsformaat (KF8 is een andere naam voor het formaat). Nu kunt u niet alleen AZW3-documenten laden, maar ook uw bestanden exporteren naar AZW3-formaat, wat in wezen een samengesteld EPUB is. <sup>22,8</sup>

### Renderen en afdrukken

#### Nieuwe afdrukgrootte <sup>22,5</sup>

Ondersteuning voor de [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) Samenvatting.

#### MathML-formules renderen <sup>22,5</sup>

De weergave van een randvak rond MathML formules en lettertype detectie bij het renderen van tekens voor dergelijke formules is verbeterd.

#### DML Grafiekverbeteringen <sup>22,6</sup>

TekeningML grafieken publiek API is uitgebreid om kleurverloop, textuur en patroonvullingen te ondersteunen.

#### Glyph Overzichten ontleden voor OpenType <sup>27,7</sup>

Aspose.Words eigen glyph schetsen voor OpenType (CFF) lettertypen is geïmplementeerd.

Wat voorafging: glyph Het verwerken van OpenType (CFF) lettertypen werd uitgevoerd via GDI+. Dus nu werkt het in gevallen waarin GDI+ niet beschikbaar is Java, .NET Standard platformen, Linux OS, enz. Glyph schetst ontleden is vereist in specifieke gevallen zoals WordArt, tekst effecten, sommige Office Wiskunde functies, en anderen.

#### Vormschaduwopmaak instellen <sup>27,7</sup>

De mogelijkheid om de schaduwopmaak van het vormobject in te stellen is geboden door het toevoegen van een nieuwe [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) eigendom.

#### Ondersteuning voor celafstand in tabellen <sup>22,8</sup>

De lay-out motor is nu aanzienlijk verbeterd: een zeer complex celafstandsmechanisme in tabellen is geïmplementeerd.

#### Lettertypesubstitutie voor symbolen <sup>22,8</sup>

Lettertypevervanging voor symbolen is verbeterd.

#### Grafiek Axis Label Rotatie Algoritme <sup>22,8</sup>

Het rotatiealgoritme van kaartaslabels is verbeterd.

### Documenten laden en opslaan

#### PDF laden en converteren naar Fixed-page Format zonder Layout Model <sup>22,6</sup>

De mogelijkheid om PDF-documenten te laden en converteren naar vaste paginaformaten met hoge trouw en prestaties is geïmplementeerd.

#### Nieuwe HTML-importmodus <sup>27,7</sup>

Een nieuwe HTML import mode voor blok-niveau elementen is ingevoerd door het toevoegen van een nieuwe waarde aan de [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) Samenvatting.

#### Converteren naar PDF/UA-1 CSSopliant met WCAG 2.0 <sup>27,7</sup>

Ondersteuning voor het omzetten van een document naar PDF/UA-1 formaat, conform WCAG 2.0, is toegevoegd.

Dus, als de klant een toegankelijk Word-document heeft en het converteren naar PDF/UA-1 via Aspose.Words met vermelding van de conversie-specificiën, dan zal de uitvoer WCAG 2.0 compatibel zijn.

WCAG of Web Content Toegankelijkheid Richtlijnen is een reeks richtlijnen ontwikkeld door W3C in samenwerking met individuen en organisaties over de hele wereld. Nu met Aspose.Words U kunt uw document converteren naar het uitvoer PDF/UA-1 formaat, dat geschikt is om WCAG 2.0 conforme PDF-documenten te bouwen.

Het is vermeldenswaard dat WCAG 2.0 twee aanvullende eisen heeft die niet zijn gespecificeerd in de PDF/UA-1 specificatie:

- eisen inzake contrast
- voorschriften voor het merken van multimedia-inhoud

Maar beide vereisten zijn niet relevant voor ons geval van het omzetten van Word naar PDF.

### Andere

* Uitzondering van het erven van de solide tekst fill effect dat MS Word gedrag nabootst is geïmplementeerd. <sup>22,6</sup>
* Ondersteuning van de `DATABASE` velden zijn toegevoegd. Met behulp van dit type veld kunt u bijvoorbeeld de resultaten van een database query tonen in a Microsoft Word tafel. <sup>27,7</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 22,5 Release Notes](/words/java/aspose-words-for-java-22-5-release-notes/).

Meer informatie over [Aspose.Words voor Java 22,6 Release Notes](/words/java/aspose-words-for-java-22-6-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.7 Release Notes](/words/java/aspose-words-for-java-22-7-release-notes/).

Meer informatie over [Aspose.Words voor Java 22,8 Release Notes](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 22,1; 22,2; 22,3; 22,4

Aspose.Words 22.1 verbetert de renderingsmogelijkheden, evenals het laden en opslaan van documenten.

Aspose.Words 22.2 introduceert een nieuw laadformaat en nieuwe opties voor het exporteren van documenten. Het bevat ook een belangrijke update voor tabellen en enkele wijzigingen voor het werken met velden.

Aspose.Words 22,3 vergroot de mogelijkheden om te werken met PDF- en TXT-formaten en verbetert het werk van een aantal bestaande algoritmen en motoren.

Aspose.Words 22.4 verbetert PDF mogelijkheden Nu kunt u een bestand opslaan in PDF/A-4 formaat en een aantal andere verbeteringen in PDF output. Tegelijkertijd, Aspose.Words 22.4 biedt extra mogelijkheden om te werken met DML grafieken, lees de Photoshop metadata, en importeer HTML blok-niveau elementen.

De API is verbeterd voor meer flexibele en handige ontwikkeling.

### Ondersteunde formaten

Het laden van een document in AZW3 formaat (KF8 is een andere naam voor het formaat) is toegevoegd. Nu kunt u een AZW3 document laden en converteren naar andere ondersteunde formaten.

### Renderen

#### Renderen naar PDF met PDF/UA-1 compliance

Rendering in PDF met PDF/UA-1 compliance is geïmplementeerd door het toevoegen van nieuwe waarden aan de [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Inkomens **PDF_UA_1**. Bij deze optie wordt uitgegaan van de naleving van speciale vereisten voor de toegankelijkheid van documenten.

#### MathML-formules renderen

De weergave van operators in MathML formules is verbeterd.

#### DML Grafiekverbeteringen

De volgende verbeteringen zijn aangebracht in de DML-grafieken:

- De DML kaart as schalen algoritme is verbeterd om hetzelfde als in MS Word
- De mogelijkheid om te manipuleren met DrawingML grafiek legende vermeldingen is verstrekt om onze grafiek te maken API meer en meer omvattend
- De mogelijkheid om de naam van een xls/xlsx bestand op te geven waaraan de TekeningML grafiek is gekoppeld is geïmplementeerd

#### Renderen naar PDF met PDF/A-4 compliance

Het renderen in PDF met PDF/A-4 compliance is toegevoegd door het toevoegen van nieuwe waarden aan de [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) PDF_A_4. Deze optie gaat uit van herziene conformantieniveaus: regelmatige PDF/A-4-conformiteit is gelijk aan conformatieniveau U van eerdere versies, en niveau A-conformiteit wordt verwijderd.

#### Het lezen van Photoshop metadata resolutie in JPEG

Het lezen van Photoshop metadata resolutie in JPEG-afbeeldingen is geïmplementeerd om een interessant probleem op te lossen met onjuiste schaal van afbeeldingen bij het renderen.

### Documenten laden en opslaan

#### Stijlgedrag controleren Bij het laden van een document

Een nieuwe optie [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) is geïntroduceerd om het gedrag van conflicterende stijlen bij documentimport te controleren.

#### Document dat voortgangsmeldingen opslaat

Een mogelijkheid om meldingen te krijgen over de voortgang van het opslaan van documenten is toegevoegd via de [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) eigendom in 22.1.

In 22.2 zijn het opslaan van voortgangsmeldingen uitgebreid voor HTML- en XAML-gebaseerde stroomformaten: HTML, MHTML, Epub, XamlFlow en XamlFlowPack.

In 22.3 is het opslaan van voortgangsmeldingen uitgebreid voor TXT-formaat.

#### Vormen omzetten naar SVG Bij exporteren

De mogelijkheid om vormen te converteren naar SVG-afbeeldingen bij het exporteren naar HTML, MHTML, of EPUB is verstrekt door het toevoegen van de [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) eigendom.

#### Exporteren van lijstnummering naar PDF Logische structuur

Lijstnummering export naar PDF logische structuur is geïmplementeerd.

#### Opslaan naar PDF 2.0 en verbeteringen in PDF-uitvoer

De mogelijkheid om een document als PDF 2.0 op te slaan door een nieuwe waarde toe te voegen aan de [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Er is een opsomming ingevoerd, evenals een aantal andere gevraagde verbeteringen van de PDF-output.

#### Nieuwe HTML-importmodus

Een nieuwe import mode voor HTML blok-niveau elementen is geïmplementeerd om na te bootsen Microsoft Word Gedrag.

### Andere

* Een mogelijkheid om aangepaste veldgegevens die wordt geassocieerd met het veld is toegevoegd.
* De laatste versie van Aspose.Words ook een belangrijke update die tabellen behandelt met onjuiste of ontbrekende kolombreedtegegevens in het brondocument.
* De tabel vergelijken algoritme vertrouwen op diepe analyse van Microsoft Word Het vergelijkingsmechanisme is verbeterd.
* De commentaar syntax in LINQ Reporting engine is verstrekt.

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 22.1 Release Notes](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-1-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.2 Release Notes](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-2-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.3 Release Notes](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-3-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.4 Release Notes](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 21,9, 21,10, 21,11, 21,12

Aspose.Words 21.9 breidt de formatteringscontrole op lijstniveau uit.

Aspose.Words 21.10 verbetert rendering opties, verbetert vinden en vervangen opties, en breidt uit Mail Merge en Structure Document Tag functionaliteit.

Aspose.Words 21.11 breidt laden en opslaan functionaliteit, verbetert vinden en vervangen optie en werken met PDF.

Aspose.Words 21.12 introduceert extra opties voor het werken met Latijnse tekst en lettertypen om het uiterlijk en de prestaties te verbeteren, en vergroot de mogelijkheid om te werken met inhoudscontrole en voetnoten

De API is verbeterd voor meer flexibele en handige ontwikkeling.

### Prestatieverbeteringen

Het laden van een eerder opgeslagen font search cache om het initialisatieproces van het lettertype cache te versnellen bij het renderen is geïmplementeerd. Nu zullen uw oplossingen nog sneller werken.

### Renderen

#### Werken met verloopvullingen en verloopstops

Er zijn nieuwe openbare methoden en eigenschappen toegevoegd om te werken met gradiëntvullingen en gradiëntstops om aan de helderste ideeën te voldoen bij het ontwikkelen van uw documenten.

#### Bijlagepaneel in uitvoer PDF-documenten

Een nieuwe optie [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) is geïmplementeerd om het bijlagepaneel weer te geven in uitvoer PDF-documenten.

#### Latijne tekst in het midden van een woord laten vallen

Steun voor de "Latijne tekst in het midden van een woord inpakken" functie is geïmplementeerd om onze Latijnse steun nog beter te maken bij het renderen.

### Zoeken en vergelijken

* Een nieuwe optie [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) om voetnoten te negeren tijdens de zoek- en vervangoperatie is toegevoegd.

* Een nieuwe optie [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) veldcodes negeren tijdens zoek- en vervangbewerking is toegevoegd.

### Omrekening

Een eenvoudige manier om afbeeldingen op te slaan als Base64 string in Markdown formaat is verstrekt via de [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) eigendom.

### Mail Merge en rapportage

De mogelijkheid om te krijgen [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) door [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), waardoor onze MailMerge motor meer tunable, is toegevoegd.

### Andere

- Een mogelijkheid om de [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) eigendom van de [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) object is toegevoegd.
- Een mogelijkheid om de snaar vertegenwoordiging van de [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) object voor een gespecificeerde index met behulp van de [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) De methode is toegevoegd.
- Er is een intuïtieve mogelijkheid om het uiterlijk van gestructureerde documenttags te veranderen, waardoor het inbedden van door de klant gedefinieerde semantiek en zijn gedrag in een document kan worden opgenomen.
- Een nieuwe klasse. [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) is toegevoegd om meer controle over CHM laden te krijgen.
- De mogelijkheid om OOXML van een inhoudscontrole te krijgen en op te slaan in string is geïntroduceerd. Om dit te doen, de **WordOpenXML** eigenschap is toegevoegd aan de [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) en [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) lessen.
- De erkenning van niet-standaard voetnoten in PDF-documenten bij invoer is toegevoegd.

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 21.9 Release Notes](/words/java/aspose-words-for-java-21-9-release-notes/).

Meer informatie over [Aspose.Words voor Java 21.10 Release Notes](/words/java/aspose-words-for-java-21-10-release-notes/).

Meer informatie over [Aspose.Words voor Java 21.11 Release Notes](/words/java/aspose-words-for-java-21-11-release-notes/).

Meer informatie over [Aspose.Words voor Java 21.12 Release Notes](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Zie ook

{{% alert color="primary" %}}

Deze pagina bevat het laatste nieuws van de afgelopen 2 jaar. Voor meer informatie over eerdere releases, zie de [Loslaten '](/words/java/release-notes/) bladzijden in de desbetreffende rubrieken.

{{% /alert %}}
