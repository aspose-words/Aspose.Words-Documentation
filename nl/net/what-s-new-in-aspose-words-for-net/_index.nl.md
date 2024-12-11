---
title: Nieuw
second_title: Aspose.Words voor .NET
articleTitle: Wat is er nieuw in Aspose.Words voor .NET
linktitle: Wat is er nieuw in Aspose.Words voor .NET
type: docs
description: "Aspose.Words voor .NET breidt uit en verbetert dagelijks. Op deze pagina, kunt u leren over de enorme en meest interessante kenmerken van het product."
weight: 10
url: /nl/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-12-11-13-48-02
---

Deze pagina beschrijft de meest interessante nieuwe Aspose.Words features geïntroduceerd in recente releases.

## Aspose.Words voor .NET 24.9, 24.10, 24.11, 24.12

Aspose.Words 24.9 introduceert groepsvorminvoeging en StructuredDocumentTag-invoeging via DocumentBuilder, verbetert radiale grafiekweergave met gradaties, verbetert digitale handtekeningen met XAdES-EPES-ondersteuning, voegt Markdown-onderstrepingsherkenning toe en biedt toegang tot voetnoot-/eindnootscheidingstekens.

Aspose.Words 24.10 introduceert verbeterde ActiveX-besturingselementondersteuning met CommandButton-creatie, nieuwe vormzichtbaarheidsbesturing, de mogelijkheid om vormen te groeperen, verbeterde Markdown-export voor tabellen, grafiekopmaak voor cirkel- en donutdiagrammen, betere Big5-coderingsverwerking en ondersteuning voor verouderde Taiwanese lettertypen.

Aspose.Words 24.11 introduceert AI-aangedreven document samenvatting, verbeterde rendering opties, verbeterde toegang tot document eigenschappen en ActiveX control Ondertiteling.

Aspose.Words 24.8 introduceert aanpasbare plaatsing van gegevenslabels, door Google AI aangestuurde tekstvertaling, verbeterde opties voor het opschonen van Mail Merge en nieuwe LowCode-verwerkingsklassen.

### AI-aangedreven functies

#### Documentsamenvatting met OpenAI en Google <sup>24.11</sup>

Ondersteuning voor documentsamenvatting met behulp van **OpenAI** en **Google** generatieve taalmodellen is geïntegreerd door de [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) naamruimte toe te voegen aan zijn openbare leden.

#### Tekstvertaling met behulp van Google's generatieve taalmodellen <sup>24.12</sup>

De mogelijkheid om tekst te vertalen met behulp van Google's generatieve taalmodellen is geïmplementeerd in Aspose.Words door de methode [Translate](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/translate/) en de [Language](https://reference.aspose.com/words/net/aspose.words.ai/language/) en de opsomming toe te voegen aan de [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/)-naamruimte.

### Low Code <sup>24.12</sup>

Nieuwe LowCode-klassen zoals [Comparer](https://reference.aspose.com/words/net/aspose.words.lowcode/comparer/), [MailMerger](https://reference.aspose.com/words/net/aspose.words.lowcode/mailmerger/), [Replacer](https://reference.aspose.com/words/net/aspose.words.lowcode/replacer/), [Splitter](https://reference.aspose.com/words/net/aspose.words.lowcode/splitter/) etc. zijn geïntroduceerd en bieden een reeks methoden die de perfecte balans vormen tussen eenvoud en flexibiliteit voor documentverwerking.

### Renderen en afdrukken

#### Gradaties op radiale grafieken <sup>24.9/sup>

Rendering van gradaties op radiale grafieken is geïmplementeerd.

#### CommandButton ActiveX-besturingselementen <sup>24.10</sup>

De mogelijkheid om CommandButton ActiveX-besturingselementen te maken is geïntroduceerd door een nieuwe openbare methode [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) en een nieuwe openbare klasse [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/) toe te voegen.

#### Vormzichtbaarheid beheren <sup>24.10</sup>

Er is een nieuwe openbare eigenschap [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) toegevoegd om de zichtbaarheid van vormen te beheren.

#### Wijzigingen in cirkel- en ringdiagrammen <sup>24.10</sup>

Er zijn verschillende nieuwe openbare eigenschappen toegevoegd om cirkel- en ringdiagrammen te formatteren.

#### De weergave van PDF Keuzeveldranden bepalen <sup>24.11</sup>

Er is een nieuwe optie geïmplementeerd om de weergave van PDF keuzeveldranden voor formuliervelden te beheren door een nieuwe openbare optie [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/) toe te voegen.

#### Formaatcodes voor Grafiekgegevens ophalen en instellen <sup>24.11</sup>

De mogelijkheid om formaatcodes voor grafiekgegevens te verkrijgen en in te stellen is toegevoegd door de eigenschap [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) in de klassen [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) en [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/) te implementeren.

#### Histogramdiagrammen weergeven met bakken en Labels <sup>24.11</sup>

De weergave van histogrammen is verbeterd door een bepaald aantal bakken en labels toe te staan.

#### Pas de plaatsing van gegevenslabels aan <sup>24.12</sup>

De mogelijkheid om de plaatsing van gegevenslabels aan te passen is toegevoegd door nieuwe eigenschappen te introduceren in de klassen [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) en [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/).

### Documenten converteren, laden en opslaan

#### Onderstrepingsopmaak bij het laden van Markdown-bestanden <sup>24.9/sup>

De optie om onderstrepingsopmaak te herkennen bij het laden van Markdown-documenten is opgenomen door een nieuwe openbare eigenschap toe te voegen [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Tabellen exporteren als HTML bij opslaan in Markdown <sup>24.10</sup>

Een optie om tabellen te exporteren als HTML bij het opslaan van documenten in Markdown-formaat is geïmplementeerd door een nieuwe openbare eigenschap [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) en een opsomming [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/) toe te voegen.

#### PDF exporteren met bijgewerkte logische structuur <sup>24.11</sup>

De export van PDF is verbeterd door eigenschappen van tabeltitels op te nemen als titels van logische structuurelementen van PDF.

### Mail Merge en rapportage

#### Lege tabellen verwijderen tijdens Mail Merge <sup>24.12</sup>

Er is een nieuwe optie **RemoveEmptyTables** toegevoegd aan de [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/)-enumeratie om de Mail Merge-uitvoer te verfijnen.

### Digitale handtekeningen

#### Documenten ondertekenen met XAdES-EPES <sup>24.9/sup>

De mogelijkheid om documenten te ondertekenen met XAdES-EPES level XML-DSig handtekeningen is geïntroduceerd door het toevoegen van een nieuwe publieke eigenschap [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) en een nieuwe publieke opsomming [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Anders

* Een nieuwe publieke methode [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) is toegevoegd aan groepsvormen. <sup>24.9/sup>
* Er is een nieuwe openbare methode [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) toegevoegd om **StructuredDocumentTags** in een document in te voegen. <sup>24.9/sup>
* Openbare toegang tot voetnoot-/eindnootscheidingstekens is geboden door een paar openbare klassen en eigenschappen toe te voegen. <sup>24.9/sup>
* De mogelijkheid om afzonderlijke vormen te groeperen, vormen samen te groeperen en vormen rechtstreeks te groeperen en vormen te groeperen is geïntroduceerd door de methode [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1) toe te voegen. <sup>24.10</sup>
* Big5-coderingsverwerking voor TrueType cmap-tabellen is verbeterd. <sup>24.10</sup>
* Ondersteuning voor verouderde Taiwanese lettertypen is verbeterd. <sup>24.10</sup>
* Voor toegang tot uitgebreide Documenteigenschappen zijn alleen-lezen eigenschappen toegevoegd aan de klasse [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Bijschriften instellen voor ActiveX-besturingselementen is ingeschakeld door een nieuwe openbare setter toe te voegen aan de eigenschap [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 24.9 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.10 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Lees meer over [Aspose.Words voor .NET 24.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

Lees meer over [Aspose.Words voor .NET 24.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 breidt de opties voor samenstellingen uit, verbetert de weergavemogelijkheden en breidt enkele andere opties uit.

Aspose.Words 24.6 verbetert de weergaveopties, verbetert de zoek- en vergelijkfunctionaliteit en breidt verschillende andere functies uit.

Aspose.Words 24.7 verandert de manier waarop u met ActiveX werkt, breidt de weergavemogelijkheden uit en exporteert naar Markdown- en XLSX-formaten.

Aspose.Words 24.8 verbetert de aanpassing van grafieken met nauwkeurige controle over aslabels, breidt lettertypebeheer uit, verbetert de verwerking van documentstructuren en voegt nieuwe mogelijkheden toe voor HTML/XAML-export, PDF-functionaliteit, documentconversie en digitale handtekeningen.

### Ondersteunde formaten

Vanaf versie 24.7 wordt export naar PDF/UA-2 ondersteund om de toegankelijkheid voor gebruikers met een beperking te garanderen.

### Platformen <sup>24.5</sup>

.NET 7.0/8.0-assemblages zijn opgenomen in het Aspose.Words NuGet-pakket.

### Renderen en afdrukken

#### Wijzigingen in Charts, Shapes en DrawingML <sup>24.5</sup>

* Rendering van DrawingML-effecten voor SVG-afbeeldingen, waarmee de eerdere functionaliteit die beperkt was tot afbeeldingen, wordt uitgebreid.
* Ondersteuning voor het maken van combinatiediagrammen en het aanpassen van eigenschappen zoals tussenruimte, overlap en bellenschaal binnen reeksgroepen is geïntroduceerd door de [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) en [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) klassen en de [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) eigenschap.
* Functionaliteit om het SoftEdge-effect van vormen te manipuleren is geïmplementeerd door de klasse [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) toe te voegen.
* De mogelijkheid om de waarden van vormen aan te passen is geïmplementeerd door het toevoegen van de [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) en [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) openbare klassen en [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) eigendom.

#### Wijzigingen in diagrammen, vormen en tekeningen <sup>24.6</sup>

* Grafiekmogelijkheden zijn verbeterd. U kunt nu een grotere verscheidenheid aan diagrammen maken, waaronder *Boomkaarten*, *Zonnestralen*, *Histogrammen*, *Pareto*-diagrammen, *Box & Whisker*-diagrammen, *Watervallen* en *Trechters*. Hierdoor kunt u uw gegevens op een meer diverse en informatieve manier visualiseren.
* Kleurcontrole voor schaduwopmaak is verbeterd. U kunt nauwkeurigere controle krijgen over het uiterlijk van uw documenten door gebruik te maken van schaduwkleuren.
* Prestatieverbetering voor achtergrondweergave is verbeterd. Dankzij de native tegeltechnologie kunt u de weergave van achtergronden met kleine elementen aanzienlijk versnellen.
* Realistische verlopen voor vormen zijn toegevoegd. U kunt nu DML-vormen maken met niet-lineaire verlopen, waarbij de visuele stijl van Microsoft Word wordt nagebootst voor een meer gepolijste uitstraling.

#### Aanpassing van diagramgegevenslabels <sup>24.7</sup>

De mogelijkheid om diagramgegevenslabels zoals **Orientation** en **Rotation** aan te passen is toegevoegd.

#### Aangepaste nummerstijl voor lijstniveaus <sup>24.7</sup>

Er is een setter voor de openbare eigenschap [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) toegevoegd. U kunt nu een aangepaste nummerstijl voor lijstniveaus definiëren.

#### Veranderingen in het werken met ActiveX <sup>24.7</sup>

* De eigenschappen van ActiveX-objecten kunnen nu worden gewijzigd, waardoor u meer controle krijgt over hun gedrag.
* De mogelijkheid om de waarde van het ActiveX-besturingselement met keuzerondjes te wijzigen om dynamische interactie mogelijk te maken, is toegevoegd.
* De mogelijkheid om een ​​ActiveX-selectievakje in of uit te schakelen is toegevoegd.

#### Controle over de oriëntatie en rotatie van de vinklabels van de grafiekas <sup>24.8</sup>

Nauwkeurige controle over de oriëntatie en rotatie van de vinklabels van de grafiekas is toegevoegd voor een handigere aanpassing van de grafiek: de klasse [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) is uitgebreid met nieuwe eigenschappen [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) en [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Backslash vervangen door Yen-teken <sup>24.8</sup>

De achterwaarts compatibele HTML- en XAML-export voor het vervangen van het backslash-teken door het Yen-teken is verbeterd. Om dit te bereiken, is de eigenschap **ReplaceBackslashWithYenSign** toegevoegd aan de klassen [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) en [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### SDT-tags gebruiken als formulierveldnamen bij exporteren naar PDF <sup>24.8</sup>

PDF-export met ondersteuning voor het gebruik van SDT-tags als formulierveldnamen is verbeterd door een nieuwe eigenschap [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) toe te voegen aan de klasse [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Documenten converteren, laden en opslaan

#### Links exporteren naar Markdown-formaat <sup>24.7</sup>

De mogelijkheid om de export van links in Markdown-indeling te beheren is toegevoegd door de implementatie van de eigenschap [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Er is een nieuwe klasse [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) geïntroduceerd, die is ontworpen om een ​​set methoden te bieden voor het converteren van verschillende documenttypen met één regel code.

### Zoek en vergelijk

#### Geavanceerde vergelijkingsopties <sup>24.6</sup>
De mogelijkheid om workflows voor gegevensanalyse te stroomlijnen met verbeterde vergelijkingsfunctionaliteit is toegevoegd. Dit omvat een nieuwe [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) optie en een opnieuw ontworpen interface voor geavanceerde vergelijkingen.

### Ander

* De functie om lege pagina's uit een document te verwijderen is geïmplementeerd door de methode [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/) toe te voegen. <sup>24.5</sup>
* De mogelijkheid om te controleren op de aanwezigheid van VBA-macro's zonder een document te laden is mogelijk gemaakt door de eigenschap [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) toe te voegen. <sup>24.5</sup>
* Het behouden van bronnummering tijdens het invoegen van een document met behulp van de LINQ Reporting Engine wordt nu ondersteund. <sup>24.5</sup>
* Er is een nieuwe eigenschap [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) toegevoegd – dit biedt een nauwkeuriger tijdstempel voor opmerkingen, waardoor de organisatie en traceerbaarheid worden verbeterd. <sup>24.6</sup>
* De LINQ Reporting Engine is verbeterd. Er zijn selectieve verwijdering van lege alinea's en definitie van aangepaste berichten voor ontbrekende objectleden doorgevoerd, wat leidt tot schonere en informatievere rapporten. <sup>24.6</sup>
* Het datetime-formaat wordt nu automatisch gedetecteerd voor naadloze export naar XLSX-formaat. <sup>24.7</sup>
* De publieke eigenschap [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), waarmee u kunt verifiëren of een VBA-project beveiligd is, is toegevoegd. <sup>24.7</sup>
* De lettertype-informatie is uitgebreid met de eigenschap **EmbeddingLicensingRights** die is toegevoegd aan de klassen [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) en [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Er is een manier toegevoegd om sectiekopteksten en -voetteksten efficiënt te wissen en tegelijkertijd watermerken te behouden, zodat er nauwkeuriger met de documentstructuur kan worden gewerkt. Gebruik de nieuwe openbare methode [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) om sectiekopteksten en -voetteksten te wissen. <sup>24.8</sup>
* Digitale ondertekening van XPS-documenten met [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) is ingeschakeld. Hiervoor is een nieuwe eigenschap [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) toegevoegd. <sup>24.8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 24.5 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.6 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.7 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.8 Release-opmerkingen](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 24.1; 24.2, 24.3, 24.4

Aspose.Words 24.1 verbetert de ervaring rond het beheer van beroerte kleuren, verbetert OLE objecten en LINQ rapportage, en introduceert een nieuwe `Bibliography Sources` publiek API.

Aspose.Words 24.2 uitgebreide grafieken API, stijlbeheer, en LINQ-opties. Deze versie van Aspose.Words ook de mogelijkheid ingevoerd om SvgSaveOptions te specificeren tijdens het renderen, flexibelere bediening laden Markdown bestanden, en werken met referentietekst voor voetnoten en eindnoten.

Aspose.Words 24.3 introduceert een nieuwe TIFF Reader/Writer en Emulatie van binaire rasterbewerkingen voor WMF-metafiles. Aspose.Words 24.3 blijft ook de grafieken uitbreiden API.

Aspose.Words 24.4 verbetert het opslaan van formaten, sommige rendering opties, evenals verbetert het werk met digitale handtekeningen.

### Ondersteunde formaten <sup>24.4</sup>

De moderne **WebP** afbeeldingsformaat wordt nu ondersteund in Aspose.Words voor .NET Framework 4.6.2 en hoger. U kunt nu lezen en invoegen WebP afbeeldingen in documenten, evenals afbeeldingen in opslaan WebP formaat.

Let op: WebP is momenteel alleen beschikbaar in .NET Standard en .NET Framework v4.6.2 en hoger.

### Renderen en afdrukken

#### Kleurcontrole van de streep <sup>lid 1</sup>

De [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot het beheren van slagkleuren: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### TekeningML grafieken API Uitbreiding <sup>24.2 / 24.3 / 24.4</sup>

De **DrawingML Charts API** wordt verder uitgebreid.

#### Lettertypen insluiten Declared in @font-face regels <sup>24.4</sup>

Toevoegen van een mogelijkheid om lettertypen die in @font-face regels zijn aangegeven in te voegen in de resulterende document [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) eigendom.

#### Werk met Glow en Reflection Formatting <sup>24.4</sup>

De mogelijkheid om te werken met gloeien en reflectie formatteren voor een tekening object is geïmplementeerd.

### Documenten laden en opslaan

#### SvgSaveOptions opgeven tijdens renderen <sup>24.2</sup>

De mogelijkheid om te specificeren [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) tijdens het renderen is toegevoegd met behulp van de [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) en [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) methoden.

#### Lege regels behouden bij laden Markdown bestanden <sup>24.2</sup>

De mogelijkheid om lege regels te behouden bij laden Markdown bestanden zijn toegevoegd.

#### Een nieuwe TIFF-lezer/schrijver <sup>24.3</sup>

Een nieuwe TIFF reader/writer voor Aspose.Words voor .NET Standard, .NET 6 en later is ontwikkeld. Aspose.Words voor .NET 24.3 toegevoegd ondersteuning voor het lezen van TIFF beelden met JPEG en Old JPEG compressie types, en ook aanzienlijk verbeterd de kwaliteit van lezen en schrijven operaties.

### Andere

* De mogelijkheid om de tekst van de `TextBox` OLE controle is ingevoerd door toevoeging van een nieuwe [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) eigenschap aan de nieuwe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) Klasse. <sup>lid 1</sup>
* The Bibliography Sources public API werd geïmplementeerd door het toevoegen van een nieuwe namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) met zijn nieuwe klassen en opsommingen, en door het toevoegen van een nieuwe [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) eigendom van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) Klasse. <sup>lid 1</sup>
* An API om de toegang tot type leden te beperken met behulp van sjabloon syntax voor de `LINQ Reporting Engine` is verstrekt. <sup>lid 1</sup>
* Nieuwe openbare eigendommen [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), en [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) voor verbeterd stijlbeheer zijn toegevoegd aan de [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasse. <sup>24.2</sup>
* De functionaliteit voor het ophalen van de werkelijke referentiemarkeringstekst voor voetnoten en eindnoten is verbeterd met de [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) de [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) methode. <sup>24.2</sup>
* Compatibiliteit met `Word 2016` grafieken voor de `LINQ Reporting Engine` is ingeschakeld. <sup>24.2</sup>
* Emulatie van binaire rasterbewerkingen voor WMF-metafiles is geïmplementeerd. <sup>24.3</sup>
* De mogelijkheid om ondertekeningsopties voor documenten binnen **SaveOptions** is ingeschakeld door een nieuwe [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) klasse met nieuwe publieke leden, evenals het toevoegen van nieuwe eigenschappen aan de [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) en [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) lessen. <sup>24.4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 24.1 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.3 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Meer informatie over [Aspose.Words voor .NET 24.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 breidt rendering opties, metafile rendering emulatie, en markdown opties opslaan.

Aspose.Words 23.10 verbetert het renderen, breidt de opties voor het laden en opslaan van documenten uit en stelt gebruikers in staat om documenten op nieuwe manieren samen te voegen.

Aspose.Words 23.11 verbetert het werk met revisies, XLSX-formaat en lettertypen op grafiek legende met extra opties.

Aspose.Words 23.12 introduceert nieuwe eigenschappen en opsommingen voor het werken met PDF en OOXML documenten, evenals ondersteuning voor WebP afbeeldingen.

### Renderen en afdrukken

#### Bijlentitels aanpassen in TekeningML Grafieken <sup>23.9</sup>

De mogelijkheid om astitels aan te passen in DrawingML grafieken is geïntroduceerd door de implementatie van een nieuwe publieke klasse [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) en [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) eigendom.

#### Het bepalen van de verticale positie van lettertypen binnen een alinea <sup>23.9</sup>

Het is nu mogelijk om de verticale positie van lettertypen binnen een paragraaf te definiëren met behulp van het nieuwe publiek [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) eigendom en de nieuwe [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) Lijst.

#### Voorgrondkleurregeling <sup>23.10</sup>

De mogelijkheid om de voorgrondkleur op te halen zonder modifiers is toegevoegd aan de [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) en [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) klassen via de **BaseForeColor** eigendom.

#### Uitbreiding van de functionaliteit van grafieken <sup>23.10</sup>

De functionaliteit van de [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), en [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) De klassen zijn uitgebreid met nieuwe methoden en eigenschappen.

#### Een afbeelding automatisch aanpassen en aanpassen in een vorm <sup>23.10</sup>

Door de nieuwe [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) methode.

#### Standaard lettertypeopmaak voor tekenen ML Grafiek Legende-vermeldingen <sup>23.11</sup>

De mogelijkheid om standaard lettertype opmaak voor legende vermeldingen van DrawingML grafieken is toegevoegd via de [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) eigendom. Deze functie vergemakkelijkt een meer gestroomlijnde en consistente verschijning voor grafiek elementen, het verbeteren van de algehele document esthetiek.

#### Pagina-indeling opgeven bij het openen van PDF in Reader <sup>23.12</sup>

De mogelijkheid om de pagina-indeling te specificeren die gebruikt moet worden bij het openen van een document in een PDF-lezer is toegevoegd door de introductie van een nieuwe [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) eigendom van de [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klasse en de invoering van een nieuwe [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) Lijst.

### Documenten laden en opslaan

#### Een mapnaam specificeren om afbeeldingsURI's in te bouwen Markdown <sup>23.9</sup>

De [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) klasse is uitgebreid met de [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) eigenschap, die het mogelijk maakt om de naam van de map die wordt gebruikt voor het construeren van afbeeldingsURI's geschreven in de Markdown document.

#### PDF verkleinen Uitvoergrootte <sup>23.10</sup>

Verschillende PDF rendering optimalisaties om output grootte te verminderen bij het gebruik [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) instellingen zijn geïmplementeerd.

#### Hyperlinks herkennen bij het laden van TXT-documenten <sup>23.10</sup>

De functie om hyperlinks te herkennen bij het laden van TXT documenten is geïmplementeerd door het toevoegen van een nieuwe [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) eigendom.

### Andere

* Metafile rendering emulatie te bepalen rasterization grootte is geïmplementeerd, specifiek voor WMF pen breedte en EMF cosmetische pen breedte. Om dit te bereiken heeft de **ScaleWmfFontsToMetafileSize** eigendom werd vervangen door de [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) de [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) eigendom is toegevoegd. <sup>23.9</sup>
* Een vereenvoudigde methode voor het invoegen van een document in een ander document op de huidige cursor positie is ingevoerd met behulp van de [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) methode. <sup>23.10</sup>
* De mogelijkheid om stijleigenschappen te openen en te wijzigen is toegevoegd door de introductie van de nieuwe [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) eigendom. <sup>23.10</sup>
* Aan de methoden van de [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) Klasse. <sup>23.10</sup>
* Een manier om te controleren wanneer een bepaalde herziening moet worden aanvaard / afgewezen of niet is uitgevoerd door gebruik te maken van de [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) en [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) methoden. Deze verbetering geeft gebruikers fijnere controle over het herzieningsproces. <sup>23.11</sup>
* De mogelijkheid om alle secties van een document op hetzelfde XLSX werkblad te schrijven is via de nieuwe [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) Type opsomming en het nieuwe [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) eigendom. <sup>23.11</sup>
* Een manier om te controleren hoe ZIP64 formaat extensies worden gebruikt voor OOXML documenten is geïmplementeerd via de nieuwe Zip64Mode eigendom van de `OoxmlSaveOptions` klasse en de nieuwe Zip64Mode opsomming. <sup>23.12</sup>
* Ondersteuning voor WebP beeld is geïntroduceerd. Let op: deze functie is alleen beschikbaar voor .NetStandart en .NET6+ versies. <sup>23.12</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23.9 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 vergroot het vermogen om te werken met grafiekreeksgegevens en de mogelijkheid om te werken met ODT-documenten, en verbetert headers/voeters en hun tekstverpakking.

Aspose.Words 23.6 breidt rendering opties, voegt een nieuwe export formaat, verbetert LINQ rapportage en LowCode gereedschap.

Aspose.Words 23.7 vergroot de rapportagemogelijkheden, voegt een nieuw exportformaat toe en introduceert wijzigingen in het werken met tabellen en digitale handtekeningen.

Aspose.Words 23.8 vergroot de mogelijkheden van verschillende formaten, verbetert rendering, en voegt nieuwe opties voor het werken met velden

### Ondersteunde formaten

* Te beginnen met versie 23.6, is het mogelijk om een document op te slaan in XLSX formaat. Nu kunt u uw documenten converteren naar Excel-formaat. <sup>23.6</sup>
* Vanaf versie 23.7 is het mogelijk om een documentpagina of vorm in EPS-formaat op te slaan. <sup>23.7</sup>

### Nieuwe opmaakfuncties

* De functionaliteit voor het automatisch genereren van Inhoudsopgave (TOC) voor MOBI-documenten is ingevoerd. <sup>23.8</sup>
* De [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) constructor is uitgebreid met [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Vorming van verticale tekst voor EMF-metafiles is geïmplementeerd. <sup>23.8</sup>

### Renderen en afdrukken

#### Aanpassen en aanpassen Grafiekreeksgegevens <sup>23.5</sup>

De functie te krijgen en te wijzigen grafiek serie gegevens werd verstrekt door het toevoegen van:

* nieuwe klassen: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nieuwe enum types: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Ondersteuning voor geavanceerde typografie <sup>23.6</sup>

Ondersteuning voor geavanceerde typografie in WMF, EMF en EMF+ rendering is toegevoegd.

#### Gekleurde inhoud op de pagina <sup>23.6</sup>

Openbare goederen [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), geeft aan of de pagina is gekleurd of niet, is toegevoegd.

#### Formatteren voor grafiekgegevenslabels <sup>23.6</sup>

De mogelijkheid om vul-, slag- en afroepopmaak voor kaartgegevenslabels in te stellen is geïmplementeerd.

### Mail Merge en rapportage

#### Dynamische HTML-invoeging voor LINQ rapportage-engine <sup>23.6</sup>

Een nieuwe manier van dynamische HTML-invoeging voor LINQ Reporting Engine is toegevoegd.

#### Mustache Tags ondersteuning <sup>23.7</sup>

Mustache tags worden nu ondersteund in de [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) en [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) methoden.

#### LINQ Reporting Engine Template Syntaxis Updates <sup>23.7</sup>

De LINQ Reporting Engine syntaxis ondersteunt nu de `ElementAt` en ElementAtOrDefault extensie methoden.

#### De grootte van gerenderde afbeeldingen specificeren <sup>23.8</sup>

Een nieuw openbaar eigendom [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) voor het specificeren van de grootte van weergegeven afbeeldingen in pixel is geïntroduceerd.

#### Whitespaces voor JSON-tekenreekswaarden behouden <sup>23.8</sup>

Er is een optie toegevoegd aan de LINQ Reporting Engine om witruimtes voor JSON string waarden te behouden.

### LowCode <sup>23.6</sup>

Nieuw LowCode Er zijn methoden toegevoegd om verschillende soorten documenten samen te voegen in één enkel uitvoerdocument.

### Andere

* Ondersteuning voor tekstverpakking in headers/voeters is geïmplementeerd. <sup>23.5</sup>
* De mogelijkheid om digitale handtekeningen uit ODT-documenten te verwijderen is toegevoegd door de [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) methode. <sup>23.5</sup>
* Openbare goederen [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) om de basis- en robijntekst van de fonetische gids te verkrijgen [Run](https://reference.aspose.com/words/net/aspose.words/run/) is toegevoegd. <sup>23.5</sup>
* De mogelijkheid om een digitale handtekening waarde op te halen uit een digitaal ondertekend document als byte array is toegevoegd door de invoering van een nieuwe [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) eigendom. <sup>23.7</sup>
* De [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) de klassen zijn uitgebreid met nieuwe publieke leden [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), en [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Ondersteuning voor CITATION en BIBLIOGRAFIE velden is toegevoegd. <sup>23.8</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23.5 Release Notes](/words/net/aspose-words-for-net-23-5-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.6 Release Notes](/words/net/aspose-words-for-net-23-6-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.8 Release Notes](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words voor .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 verbetert de prestaties van raster werking emulatie, evenals verbetert document export en rendering kwaliteit.

Aspose.Words 23.2 introduceert het opslaan van documenten in het MOBI-formaat, verbetert de weergave van grafieken en brengt opmerkelijke wijzigingen aan in de weergavegegevens van documenten.

Aspose.Words 23.3 verbetert de documenten importeren en opslaan met nieuwe eigenschappen, en verbetert ook de kwaliteit van het werk met achtergrond- en voorgrondkleur en radiale gradiënt.

Aspose.Words 23.4 verbetert de berekening van sommige parameters en de positie van de tabel en de omliggende tekst.

### Prestatieverbeteringen

#### Emulatie van rasteroperaties <sup>23.1</sup>

De prestaties en kwaliteit van emulatie van rasterbewerkingen met metafiles zijn aanzienlijk verbeterd.

### Ondersteunde formaten

#### Exporteren naar MOBI <sup>23.2</sup>

Beginnend met versie 23.2, is het mogelijk om een document op te slaan in MOBI-formaat (ook wel PRC genoemd, AZW Amazon Kindle's eigen e-book bestandsformaat). Nu kunt u niet alleen MOBI-documenten laden, maar ook uw bestanden exporteren naar MOBI-formaat.

### Renderen

#### Werk met Shading Thema Kleuren <sup>23.1</sup>

De mogelijkheid om te werken met schaduw thema kleuren is geïmplementeerd.

#### Ondersteuning van R-kwadraatcoëfficiënt in DML-grafieken <sup>23.1</sup>

Ondersteuning van R-kwadraatcoëfficiënt in DML grafiek trendline labels wanneer rendering is toegevoegd.

#### Grafiekverbeteringen <sup>23.2</sup>

Sinds 23.2 is de grafiekweergave aanzienlijk verbeterd.

#### Achtergrond en voorgrondkleurcontrole <sup>23.3</sup>

De [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) klasse is uitgebreid met een reeks nieuwe publieke eigenschappen met betrekking tot achtergrond- en voorgrondkleuren: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) en [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) en [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Radiaal kleurverloop met de `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering van radiale hellingen met de `SkiaSharp` native shader voor .NET Standard is uitgevoerd.

#### Afstand tussen de Tafel en Omgeving Tekst <sup>23.4</sup>

De mogelijkheid om de afstand tussen de tabel en de omliggende tekst in te stellen is toegevoegd door het introduceren van nieuwe eigenschappen aan de [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) klasse: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), en [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Documenten laden en opslaan

#### Genereren `TOC` voor AZW3-documenten <sup>23.1</sup>

Het vermogen om te genereren `TOC` (inhoudsopgave) voor AZW3-documenten is toegevoegd door het gebruik van de [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) eigendom.

#### Items van lijst exporteren naar Markdown <sup>23.1</sup>

Een manier om de uitvoer van lijst-items naar Markdown formaat is verstrekt door toevoeging van de [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) eigendom van de [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) Klasse.

#### Document dat voortgangsmeldingen opslaat <sup>23.3</sup>

Het opslaan van voortgangsmeldingen voor MOBI- en AZW3-formaten is geïmplementeerd.

#### Veroordeeldheid en aanpassing van de woordafstand <sup>23.3</sup>

De mogelijkheid om te specificeren of zin en woordafstand automatisch kunnen worden aangepast bij documentimport is toegevoegd door de [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) eigendom.

### Andere

* Het vermogen om de aanpassing van de karakterafstand van een document te specificeren is toegevoegd door middel van de [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) uitvoering <sup>23.2</sup>
* Instructie Aspose.Words of tekstvakken, voetnoten en endnotes in woordtellingsstatistieken zijn opgenomen door toevoeging van de [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) eigenschap <sup>23.2</sup>
* Een nieuwe optie voor een document stijl, die het mogelijk maakt om te specificeren of de stijl automatisch wordt geherdefinieerd op basis van de juiste waarde, is ingevoerd via de [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) eigenschap <sup>23.2</sup>
* Het vermogen om te bepalen of [Run](https://reference.aspose.com/words/net/aspose.words/run/) is een fonetische handleiding is toegevoegd met behulp van de [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) eigenschap <sup>23.4</sup>
* Een eenvoudige manier om te werken met series en assen van combo grafieken is geïmplementeerd door de invoering van de [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) klasse en toevoeging van de [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) eigenschap <sup>23.4</sup>
* Nieuwe openbare eigenschappen verbonden aan de vorm relatieve positionering en grootte zijn toegevoegd aan de [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klasse <sup>23.4</sup>
* Nauwkeurigheid en prestaties van kleur helderheid berekening voor automatische tekst kleur resolutie is verbeterd in overeenstemming met de nieuwste versies van Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Meer informatie over [Aspose.Words voor .NET 23.1 Release Notes](/words/net/aspose-words-for-net-23-1-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.3 Release Notes](/words/net/aspose-words-for-net-23-3-release-notes/).

Meer informatie over [Aspose.Words voor .NET 23.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Zie ook

{{% alert color="primary" %}}

Deze pagina bevat het laatste nieuws van de afgelopen 2 jaar. Voor meer informatie over eerdere releases, zie de [Loslaten '](/words/net/release-notes/) pagina's in de desbetreffende secties.

{{% /alert %}}
