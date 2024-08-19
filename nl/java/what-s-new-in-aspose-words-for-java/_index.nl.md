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

## Aspose.Words voor Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 breidt de opties voor samenstellingen uit, verbetert de weergavemogelijkheden en breidt enkele andere opties uit.

Aspose.Words 24.6 verbetert de weergaveopties, verbetert de zoek- en vergelijkfunctionaliteit en breidt verschillende andere functies uit.

Aspose.Words 24.7 verandert de manier waarop u met ActiveX werkt, breidt de weergavemogelijkheden uit en exporteert naar Markdown- en XLSX-formaten.

Aspose.Words 24.8 verbetert de aanpassing van grafieken met nauwkeurige controle over aslabels, breidt lettertypebeheer uit, verbetert de verwerking van documentstructuren en voegt nieuwe mogelijkheden toe voor HTML/XAML-export, PDF-functionaliteit, documentconversie en digitale handtekeningen.

### Ondersteunde formaten

Vanaf versie 24.7 wordt export naar PDF/UA-2 ondersteund om de toegankelijkheid voor gebruikers met een beperking te garanderen.

### Renderen en afdrukken

#### Wijzigingen in Charts, Shapes en DrawingML <sup>24.5</sup>

- Rendering van DrawingML-effecten voor SVG-afbeeldingen, waarmee de eerdere functionaliteit die beperkt was tot afbeeldingen, wordt uitgebreid.
- Ondersteuning voor het maken van combinatiediagrammen en het aanpassen van eigenschappen zoals tussenruimte, overlap en bellenschaal binnen reeksgroepen is geïntroduceerd door de toevoeging van de [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.word/chartseriesgroup/) en [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) klassen en de [SeriesGroups](https://reference.aspose.com/ woorden/java/com.aspose.words/chart/#getSeriesGroups) eigenschap.
- Functionaliteit om het SoftEdge-effect van vormen te manipuleren is geïmplementeerd door de klasse [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/) toe te voegen.
- De mogelijkheid om de waarden van vormen aan te passen is geïmplementeerd door het toevoegen van de [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) en [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) openbare klassen en [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments) eigenschap.

#### Wijzigingen in diagrammen, vormen en tekeningen <sup>24.6</sup>

* Grafiekmogelijkheden zijn verbeterd. U kunt nu een grotere verscheidenheid aan diagrammen maken, waaronder *Boomkaarten*, *Zonnestralen*, *Histogrammen*, *Pareto*-diagrammen, *Box & Whisker*-diagrammen, *Watervallen* en *Trechters*. Hierdoor kunt u uw gegevens op een meer diverse en informatieve manier visualiseren.
* Kleurcontrole voor schaduwopmaak is verbeterd. U kunt nauwkeurigere controle krijgen over het uiterlijk van uw documenten door gebruik te maken van schaduwkleuren.
* Prestatieverbetering voor achtergrondweergave is verbeterd. Dankzij de native tegeltechnologie kunt u de weergave van achtergronden met kleine elementen aanzienlijk versnellen.
* Realistische verlopen voor vormen zijn toegevoegd. U kunt nu DML-vormen maken met niet-lineaire verlopen, waarbij de visuele stijl van Microsoft Word wordt nagebootst voor een meer gepolijste uitstraling.

#### Aanpassing van diagramgegevenslabels <sup>24.7</sup>

De mogelijkheid om diagramgegevenslabels zoals **Orientation** en **Rotation** aan te passen is toegevoegd.

#### Aangepaste nummerstijl voor lijstniveaus <sup>24.7</sup>

Er is een setter voor de openbare eigenschap [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) toegevoegd. U kunt nu een aangepaste nummerstijl voor lijstniveaus definiëren.

#### Veranderingen in het werken met ActiveX <sup>24.7</sup>

* De eigenschappen van ActiveX-objecten kunnen nu worden gewijzigd, waardoor u meer controle krijgt over hun gedrag.
* De mogelijkheid om de waarde van het ActiveX-besturingselement met keuzerondjes te wijzigen om dynamische interactie mogelijk te maken, is toegevoegd.
* De mogelijkheid om een ​​ActiveX-selectievakje in of uit te schakelen is toegevoegd.

#### Controle over de oriëntatie en rotatie van de vinklabels van de grafiekas <sup>24.8</sup>

Nauwkeurige controle over de oriëntatie en rotatie van de vinklabels van de grafiekas is toegevoegd voor een gemakkelijkere aanpassing van de grafiek – de klasse [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) is uitgebreid met nieuwe eigenschappen voor **Orientation** en **Rotation**.

#### De backslash vervangen door het Yen-teken <sup>24.8</sup>

De achterwaarts compatibele HTML- en XAML-export voor het vervangen van het backslash-teken door het Yen-teken is verbeterd. Om dit te bereiken is de eigenschap **ReplaceBackslashWithYenSign** toegevoegd aan de klassen [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) en [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### SDT-tags gebruiken als formulierveldnamen bij exporteren naar PDF <sup>24.8</sup>

PDF-export met ondersteuning voor het gebruik van SDT-tags als formulierveldnamen is verbeterd door een nieuwe eigenschap **UseSdtTagAsFormFieldName** toe te voegen aan de klasse [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Documenten converteren, laden en opslaan

#### Links exporteren naar Markdown-formaat <sup>24.7</sup>

De mogelijkheid om de export van links in Markdown-indeling te beheren is toegevoegd door de implementatie van de eigenschap [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Er is een nieuwe klasse **LowCode.Converter** geïntroduceerd, die is ontworpen om een ​​set methoden te bieden voor het converteren van verschillende documenttypen met één regel code.

### Zoek en vergelijk

#### Geavanceerde vergelijkingsopties <sup>24.6</sup>
De mogelijkheid om workflows voor gegevensanalyse te stroomlijnen met verbeterde vergelijkingsfunctionaliteit is toegevoegd. Dit omvat een nieuwe [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) optie en een opnieuw ontworpen interface voor geavanceerde vergelijkingen.

### Ander

* De functie om lege pagina's uit een document te verwijderen is geïmplementeerd door de methode [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) toe te voegen. <sup>24.5</sup>
* De mogelijkheid om te controleren op de aanwezigheid van VBA-macro's zonder een document te laden is mogelijk gemaakt door de toevoeging [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) eigendom. <sup>24.5</sup>
* Het behouden van bronnummering tijdens het invoegen van een document met behulp van de LINQ Reporting Engine wordt nu ondersteund. <sup>24.5</sup>
* Er is een nieuwe eigenschap [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) toegevoegd – dit biedt een nauwkeuriger tijdstempel voor opmerkingen, waardoor de organisatie en traceerbaarheid worden verbeterd. <sup>24.6</sup>
* De LINQ Reporting Engine is verbeterd. Er zijn selectieve verwijdering van lege alinea's en definitie van aangepaste berichten voor ontbrekende objectleden doorgevoerd, wat leidt tot schonere en informatievere rapporten. <sup>24.6</sup>
* Het datetime-formaat wordt nu automatisch gedetecteerd voor naadloze export naar XLSX-formaat. <sup>24.7</sup>
* De publieke eigenschap [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), waarmee u kunt verifiëren of een VBA-project beveiligd is, is toegevoegd. <sup>24.7</sup>
* Lettertype-informatie is uitgebreid met de eigenschap **EmbeddingLicensingRights** die is toegevoegd aan de klassen [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) en [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Er is een manier toegevoegd om sectiekopteksten en -voetteksten efficiënt te wissen en tegelijkertijd watermerken te behouden, zodat er nauwkeuriger met de documentstructuur kan worden gewerkt. Om sectiekopteksten en -voetteksten te wissen, gebruikt u de nieuwe openbare methode **ClearHeadersFooters**. <sup>24.8</sup>
* Digitaal ondertekenen van XPS-documenten met [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) is ingeschakeld – een nieuwe eigenschap **DigitalSignatureDetails** is voor dit doel toegevoegd. <sup>24.8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 24.5 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Meer informatie over [Aspose.Words voor Java 24.6 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Meer informatie over [Aspose.Words voor Java 24.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Meer informatie over [Aspose.Words voor Java 24.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 verbetert de ervaring rond het beheren van beroerte kleuren, verbetert OLE objecten en LINQ rapportage, en introduceert een nieuwe Bibliografie bronnen publiek API.

Aspose.Words 24.2 uitgebreide grafieken API, stijlbeheer, en LINQ opties. Deze versie van Aspose.Words ook de mogelijkheid ingevoerd om SvgSaveOptions te specificeren tijdens het renderen, flexibelere bediening laden Markdown bestanden, en werken met referentietekst voor voetnoten en endnotes.

Aspose.Words 24.3 introduceert een nieuwe TIFF Reader/Writer en Emulatie van binaire rasterbewerkingen voor WMF-metafiles. Aspose.Words 24.3 blijft ook de grafieken uitbreiden API.

Aspose.Words 24.4 verbetert het opslaan van formaten, sommige rendering opties, evenals verbetert het werk met digitale handtekeningen.

### Ondersteunde formaten <sup>24.4</sup>

De moderne **WebP** afbeeldingsformaat wordt nu ondersteund in Aspose.Words. U kunt nu lezen en invoegen WebP afbeeldingen in documenten, evenals afbeeldingen in opslaan WebP formaat.

### Renderen en afdrukken

#### Kleurregeling ophalen <sup>lid 1</sup>

De [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot het beheren van slagkleuren: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) en [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) en [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### TekeningML grafieken API Uitbreiding <sup>24.2 / 24.3 / 24.4</sup>

De **DrawingML Charts API** wordt verder uitgebreid.

#### Lettertypen insluiten Declared in @font-face regels <sup>24.4</sup>

Toevoegen van een mogelijkheid om lettertypen die in @font-face regels zijn aangegeven in te voegen in de resulterende document [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) eigendom.

#### Werk met Glow en Reflection Formatting <sup>24.4</sup>

De mogelijkheid om te werken met gloeien en reflectie formatteren voor een tekening object is geïmplementeerd.

### Documenten laden en opslaan

#### Specificeer SvgSaveOptions tijdens renderen <sup>24.2</sup>

Het vermogen om te specificeren [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) tijdens het renderen is toegevoegd met behulp van de [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) en [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) methoden.

#### Lege regels behouden bij laden Markdown bestanden <sup>24.2</sup>

De mogelijkheid om lege regels te behouden bij laden Markdown bestanden zijn toegevoegd.

#### Een nieuwe TIFF-lezer/schrijver <sup>24.3</sup>

Een nieuwe TIFF reader/writer voor Aspose.Words voor .NET Standard, .NET 6 en later is ontwikkeld. Aspose.Words voor .NET 24.3 toegevoegd ondersteuning voor het lezen van TIFF-afbeeldingen met JPEG en Old JPEG compressie types, en ook aanzienlijk verbeterd de kwaliteit van lezen en schrijven operaties.

### Andere

* De mogelijkheid om de tekst van de `TextBox` OLE controle is ingevoerd door toevoeging van een nieuwe [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) eigenschap aan de nieuwe [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Klasse. lid 1 <sup>lid 1</sup>
* The Bibliography Sources public API werd uitgevoerd door het toevoegen van een paar nieuwe [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) en [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) klassen en a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) telling, alsmede door toevoeging van een nieuwe [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) eigendom van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. <sup>lid 1</sup>
* An API de toegang tot typeleden beperken met behulp van sjabloonsyntaxis voor de LINQ Reporting Engine is verstrekt. <sup>lid 1</sup>
* Nieuwe openbare eigendommen [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), en [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) voor verbeterd stijlbeheer zijn toegevoegd aan de [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasse. <sup>24.2</sup>
* De functionaliteit voor het ophalen van de werkelijke referentiemarkeringstekst voor voetnoten en eindnoten is verbeterd met de [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) de [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) methode. <sup>24.2</sup>
* Compatibiliteit met `Word 2016` grafieken voor de `LINQ Reporting Engine` is ingeschakeld. <sup>24.2</sup>
* Emulatie van binaire rasterbewerkingen voor WMF-metafiles is geïmplementeerd. <sup>24.3</sup>
* De mogelijkheid om ondertekeningsopties voor documenten binnen **SaveOptions** is ingeschakeld door een nieuwe [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) klasse met nieuwe publieke leden, evenals het toevoegen van nieuwe eigenschappen aan de [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) en [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) lessen. <sup>24.4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 24.1 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Meer informatie over [Aspose.Words voor Java 24.2 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Meer informatie over [Aspose.Words voor Java 24.3 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Meer informatie over [Aspose.Words voor Java 24.4 Release Notes.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words voor Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 breidt rendering opties, metafile rendering emulatie, en markdown opties opslaan.

Aspose.Words 23.10 verbetert het renderen, breidt de opties voor het laden en opslaan van documenten uit en stelt gebruikers in staat om documenten op nieuwe manieren samen te voegen.

Aspose.Words 23.11 verbetert het werk met revisies, XLSX-formaat en lettertypen op grafiek legende met extra opties.

Aspose.Words 23.12. introduceert nieuwe eigenschappen en opsommingen voor het werken met PDF documenten, ondersteuning voor WebP beelden, en bijgewerkte Bouncy Castle bibliotheek.

### Renderen en afdrukken

#### Assentitels aanpassen in TekeningML Grafieken <sup>23.9</sup>

De mogelijkheid om astitels aan te passen in DrawingML grafieken is geïntroduceerd door de implementatie van een nieuwe publieke klasse [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) en [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) eigendom.

#### Het bepalen van de verticale positie van lettertypen binnen een alinea <sup>23.9</sup>

Het is nu mogelijk om de verticale positie van lettertypen binnen een alinea te definiëren met behulp van het nieuwe publiek [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) eigendom en de nieuwe [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Samenvatting.

#### Voorgrondkleurregeling <sup>23.10</sup>

De mogelijkheid om de voorgrondkleur op te halen zonder modifiers is toegevoegd aan de [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) en [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klassen via de **BaseForeColor** eigendom.

#### Uitbreiding van de functionaliteit van grafieken <sup>23.10</sup>

De functionaliteit van de [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), en [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) De klassen zijn uitgebreid met nieuwe methoden en eigenschappen.

#### Een afbeelding automatisch aanpassen en aanpassen in een vorm <sup>23.10</sup>

Door de nieuwe [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) methode.

#### Standaard lettertypeopmaak voor tekenen ML Grafiek Legende-vermeldingen <sup>23.11</sup>

De mogelijkheid om standaard lettertype opmaak voor legende vermeldingen van DrawingML grafieken is toegevoegd via de **Font** eigendom. Deze functie vergemakkelijkt een meer gestroomlijnde en consistente verschijning voor grafiek elementen, het verbeteren van de algehele document esthetiek.

#### Pagina-indeling opgeven bij het openen van PDF in Reader <sup>23.12</sup>

De mogelijkheid om de pagina-indeling te specificeren die gebruikt moet worden bij het openen van een document in een PDF-lezer is toegevoegd door de introductie van een nieuwe [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) eigendom van de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasse en de invoering van een nieuwe [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Samenvatting.

### Documenten laden en opslaan

#### Een mapnaam opgeven om afbeeldingsURI's in te bouwen Markdown <sup>23.9</sup>

De [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasse is uitgebreid met de [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) eigenschap, die het mogelijk maakt om de naam van de map te specificeren die gebruikt wordt om afbeeldingsURI's te construeren die in de Markdown document.

#### PDF verkleinen Uitvoergrootte <sup>23.10</sup>

Verschillende PDF rendering optimalisaties om de output grootte te verminderen bij het gebruik [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) instellingen zijn geïmplementeerd.

#### Hyperlinks herkennen bij het laden van TXT-documenten <sup>23.10</sup>

De functie om hyperlinks te herkennen bij het laden van TXT-documenten is geïmplementeerd door het toevoegen van een nieuwe [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) eigendom.

### Andere

- Metafile rendering emulatie te bepalen rasterization grootte is geïmplementeerd, specifiek voor WMF pen breedte en EMF cosmetische pen breedte. Om dit te bereiken, heeft de **ScaleWmfFontsToMetafileSize** eigendom werd vervangen door de [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) de [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) eigendom is toegevoegd. <sup>23.9</sup>
- Een vereenvoudigde methode voor het invoegen van een document in een ander document op de huidige cursor positie is ingevoerd met behulp van de [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) methode. <sup>23.10</sup>
- De mogelijkheid om stijleigenschappen te openen en te wijzigen is toegevoegd door de introductie van de nieuwe [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) eigendom. <sup>23.10</sup>
- Aan de methoden van de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasse. <sup>23.10</sup>
- Een manier om te controleren wanneer een bepaalde herziening moet worden aanvaard / verworpen of niet is uitgevoerd door gebruik te maken van de [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) en [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) methoden. Deze verbetering geeft gebruikers fijnere controle over het herzieningsproces. <sup>23.11</sup>
- De mogelijkheid om alle secties van een document op hetzelfde XLSX werkblad te schrijven is via de nieuwe [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) Type opsomming en het nieuwe [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) eigendom. <sup>23.11</sup>
- Steun voor WebP beeld is geïntroduceerd. Let op: deze functie is alleen beschikbaar voor .NetStandart en .NET6+ versies. <sup>23.12</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23.9 Release Notes](/words/java/aspose-words-for-java-23-9-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.10 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.11 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.12 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 vergroot het vermogen om te werken met grafiekreeksgegevens en de mogelijkheid om te werken met ODT-documenten, en verbetert headers/voeters en hun tekstverpakking.

Aspose.Words 23.6 breidt rendering opties, voegt een nieuwe export formaat, verbetert LINQ rapportage en LowCode Gereedschap.

Aspose.Words 23.7 vergroot de rapportagemogelijkheden, voegt een nieuw exportformaat toe en introduceert wijzigingen in het werken met tabellen en digitale handtekeningen.

Aspose.Words 23.8 vergroot de mogelijkheden van verschillende formaten, verbetert rendering, en voegt nieuwe opties voor het werken met velden

### Ondersteunde formaten

* Vanaf versie 23.6, is het mogelijk om een document op te slaan in XLSX formaat. Nu kunt u uw documenten converteren naar Excel-formaat. <sup>23.6</sup>

* Vanaf versie 23.7 is het mogelijk om een documentpagina of vorm in EPS-formaat op te slaan. <sup>23.7</sup>

* Nieuw formaat

  - De functionaliteit voor het automatisch genereren van Inhoudsopgave (TOC) voor MOBI-documenten is ingevoerd. <sup>23.8</sup>
  - De [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) constructor is uitgebreid met [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Vormen van verticale tekst voor EMF-metafiles is geïmplementeerd. <sup>23.8</sup>

### Renderen

#### Aanpassen en aanpassen Grafiekreeksgegevens <sup>23.5</sup>

De functie te krijgen en te wijzigen grafiek serie gegevens werd verstrekt door het toevoegen van:

- nieuwe klassen: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nieuwe enumtypes: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Ondersteuning voor geavanceerde typografie <sup>23.6</sup>

Ondersteuning voor geavanceerde typografie in WMF, EMF en EMF+ rendering is toegevoegd.

#### Gekleurde inhoud op de pagina <sup>23.6</sup>

Openbare goederen [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), geeft aan of de pagina gekleurd is of niet, is toegevoegd.

#### Formatteren voor grafiekgegevenslabels <sup>23.6</sup>

De mogelijkheid om vul-, slag- en afroepopmaak voor kaartgegevenslabels in te stellen is geïmplementeerd.

### Mail Merge en rapportage

#### Dynamische HTML-invoeging voor LINQ-rapporterende motor <sup>23.6</sup>

Een nieuwe manier van dynamische HTML inbrenging voor LINQ Reporting Engine is toegevoegd.

#### Mustache Tags ondersteuning <sup>23.7</sup>

Mustache tags worden nu ondersteund in de [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) en [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) methoden.

#### LINQ Reporting Engine Syntaxis updates <sup>23.7</sup>

De LINQ Reporting Engine syntaxis ondersteunt nu de `ElementAt` en ElementAtOrDefault extensie methoden.

#### De grootte van gerenderde afbeeldingen specificeren <sup>23.8</sup>

Een nieuw openbaar eigendom **ImageSize** voor het specificeren van de grootte van weergegeven afbeeldingen in pixel is geïntroduceerd.

#### Whitespaces voor JSON-tekenreekswaarden behouden <sup>23.8</sup>

Aan de LINQ Reporting Engine is een optie toegevoegd om witruimtes voor JSON stringwaarden te behouden.

### LowCode <sup>23.6</sup>

Nieuw LowCode Er zijn methoden toegevoegd om verschillende soorten documenten samen te voegen in één enkel uitvoerdocument.

### Andere

- Ondersteuning voor tekstverpakking in headers/voeters is geïmplementeerd. <sup>23.5</sup>
- De mogelijkheid om digitale handtekeningen uit ODT-documenten te verwijderen is toegevoegd door de [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) methode. <sup>23.5</sup>
- Openbare goederen [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) om de basis- en robijntekst van de fonetische gids te verkrijgen [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) is toegevoegd. <sup>23.5</sup>
- De mogelijkheid om een digitale handtekening waarde van een digitaal ondertekend document als byte array is toegevoegd door de invoering van een nieuwe [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) eigendom. <sup>23.7</sup>
- De [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) en [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) de klassen zijn uitgebreid met nieuwe publieke leden [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), en [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Ondersteuning voor CITATIE en BIBLIOGRAFIE velden is toegevoegd. <sup>23.8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23.5 Release Notes](/words/java/aspose-words-for-java-23-5-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.6 Release Notes](/words/java/aspose-words-for-java-23-6-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.7 Release Notes](/words/java/aspose-words-for-java-23-7-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.8 Release Notes](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 verbetert de prestaties van raster werking emulatie, evenals verbetert document export en rendering kwaliteit.

Aspose.Words 23.2 introduceert het opslaan van documenten in het MOBI-formaat, verbetert de weergave van grafieken en brengt opmerkelijke wijzigingen aan in de weergavegegevens van documenten.

Aspose.Words 23.3 verbetert de documenten importeren en opslaan met nieuwe eigenschappen, en verbetert ook de kwaliteit van het werk met achtergrond- en voorgrondkleur en radiale gradiënt.

Aspose.Words 23.4 verbetert de berekening van sommige parameters en de positie van de tabel en de omliggende tekst.

### Prestatieverbeteringen

#### Emulatie van rasteroperaties <sup>23.1</sup>

De prestaties en kwaliteit van emulatie van rasteroperaties met metafiles zijn aanzienlijk verbeterd.

### Ondersteunde formaten

#### Exporteren naar MOBI <sup>23.2</sup>

Te beginnen met versie 23.2, is het mogelijk om een document op te slaan in MOBI-formaat (ook wel PRC genoemd, AZW Amazon Kindle's eigen e-book bestandsformaat). Nu kunt u niet alleen MOBI-documenten laden, maar ook uw bestanden exporteren naar MOBI-formaat.

### Renderen

#### Werk met Shading Thema Kleuren <sup>23.1</sup>

De mogelijkheid om te werken met schaduw thema kleuren is geïmplementeerd.

#### Ondersteuning van R-kwadraatcoëfficiënt in DML-grafieken <sup>23.1</sup>

Ondersteuning van R-kwadraatcoëfficiënt in DML grafiek trendline labels wanneer rendering is toegevoegd.

#### Grafiekverbeteringen <sup>23.2</sup>

Sinds 23.2 is de grafiekweergave aanzienlijk verbeterd.

#### Achtergrond en voorgrondkleurcontrole <sup>23.3</sup>

De [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) klasse is uitgebreid met een set nieuwe publieke eigenschappen met betrekking tot achtergrond- en voorgrondkleuren: **ForeThemeColor** en **BackThemeColor**, **ForeTintAndShade** en **BackTintAndShade**.

#### Radiaal kleurverloop met de `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering van radiale hellingen met de `SkiaSharp` native shader voor .NET Standard is uitgevoerd.

#### Afstand tussen de Tafel en Omgeving Tekst <sup>23.4</sup>

De mogelijkheid om de afstand tussen de tabel en de omliggende tekst in te stellen is toegevoegd door het introduceren van nieuwe eigenschappen aan de [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) klasse: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), en [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Documenten laden en opslaan

#### Genereren `TOC` voor AZW3-documenten <sup>23.1</sup>

Het vermogen om te genereren `TOC` (inhoudsopgave) voor AZW3-documenten is toegevoegd door het gebruik van de [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) eigendom.

#### Items van lijst exporteren naar Markdown <sup>23.1</sup>

Een manier om de uitvoer van lijstitems naar Markdown formaat is verstrekt door toevoeging van de [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) eigendom van de [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasse.

#### Document dat voortgangsmeldingen opslaat <sup>23.3</sup>

Het opslaan van voortgangsmeldingen voor MOBI- en AZW3-formaten is geïmplementeerd.

#### Veroordeeldheid en aanpassing van de woordafstand <sup>23.3</sup>

Het vermogen om te specificeren of zin en woordafstand automatisch bij documentimport kan worden aangepast, is toegevoegd door de **AdjustSentenceAndWordSpacing** eigendom.

### Andere

- Het vermogen om de aanpassing van de karakterafstand van een document aan te geven is toegevoegd via de [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) uitvoering <sup>23.2</sup>
- De manier om instructies te geven Aspose.Words of tekstvakken, voetnoten en endnotes in woordtellingsstatistieken zijn opgenomen door toevoeging van de [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) eigenschap <sup>23.2</sup>
- Een nieuwe optie voor een documentstijl, die het mogelijk maakt te specificeren of de stijl automatisch wordt geherdefinieerd op basis van de juiste waarde, is ingevoerd via de [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) eigenschap <sup>23.2</sup>
- Het vermogen om te bepalen of [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) is een fonetische handleiding is toegevoegd met behulp van de **IsPhoneticGuide** eigenschap <sup>23.4</sup>
- Een eenvoudige manier om te werken met series en assen van combo grafieken is geïmplementeerd door de invoering van de **ChartAxisCollection** klasse en toevoeging van de **Chart.Axes** eigenschap <sup>23.4</sup>
- Nieuwe openbare eigenschappen verbonden aan de vorm relatieve positionering en grootte zijn toegevoegd aan de [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasse <sup>23.4</sup>
- Nauwkeurigheid en prestaties van kleur helderheid berekening voor automatische tekst kleur resolutie is verbeterd in overeenstemming met de nieuwste versies van Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 23.1 Release Notes](/words/java/aspose-words-for-java-23-1-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.2 Release Notes](/words/java/aspose-words-for-java-23-2-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.3 Release Notes](/words/java/aspose-words-for-java-23-3-release-notes/).

Meer informatie over [Aspose.Words voor Java 23.4 Release Notes](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 breidt de opties uit voor het laden en opslaan van documenten en verbeterde interactie met enkele andere opties.

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

#### Cache Header of Footer Shapes om PDF-grootte te verkleinen <sup>22.9</sup>

De mogelijkheid om header/voeter vormen cache om de grootte van de output PDF-bestand te verminderen is geïmplementeerd door het toevoegen van een nieuwe [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) eigendom.

#### Automatische nummerdetectie bij het laden van een document <sup>22.9</sup>

De mogelijkheid om de [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) eigendom na tekst laden is uitgevoerd door een uitgebreide van de [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Klasse.

#### Bijzondere vermelding Margetype <sup>22.12</sup>

De mogelijkheid om een bepaalde [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) type voor de gegeven sectie is geïmplementeerd.

### Zoeken en vergelijken <sup>22.10</sup>

De mogelijkheid om te negeren [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) bij het vinden en vervangen van opties is geïmplementeerd door een nieuwe [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) eigendom van de [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasse.

### Andere

- Een nieuwe functie om FieldEQ als OfficeMath te krijgen is toegevoegd. <sup>22.9</sup>
- Aanmaken van gestructureerde documenttags van Group type op rijniveau was toegestaan. <sup>22.9</sup>
- OLE objecten en controles worden nu behandeld als metafile beelden bij het omzetten van een document naar HTML. <sup>22.10</sup>
- Een nieuwe functie om te controleren of een bepaalde lijst is gemaakt van dezelfde template als de vergeleken lijst is toegevoegd door de invoering van een nieuwe [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) methode in de [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Klasse. <sup>22.10</sup>
- Het vermogen om nieuwe gestructureerde document tags van de [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) type is toegevoegd. <sup>22.11</sup>
- Er is voorzien in de mogelijkheid om de voortgang van het veld bij te werken. <sup>22.11</sup>
- Een nieuwe **EmbedAttachments** eigenschap waarmee gebruikers OLE-bijlagen vanuit een brondocument in het uitvoer PDF-document kunnen insluiten is geïntroduceerd. <sup>22.11</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor Java 22.9 Release Notes](/words/java/aspose-words-for-java-22-9-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.10 Release Notes](/words/java/aspose-words-for-java-22-10-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.11 Release Notes](/words/java/aspose-words-for-java-22-11-release-notes/).

Meer informatie over [Aspose.Words voor Java 22.12 Loslaten](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Zie ook

{{% alert color="primary" %}}

Deze pagina bevat het laatste nieuws van de afgelopen 2 jaar. Voor meer informatie over eerdere releases, zie de [Loslaten '](/words/java/release-notes/) bladzijden in de desbetreffende rubrieken.

{{% /alert %}}
