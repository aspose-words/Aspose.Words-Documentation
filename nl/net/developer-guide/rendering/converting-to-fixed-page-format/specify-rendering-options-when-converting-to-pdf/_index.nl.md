---
title: Opties bij omzetten naar PDF
second_title: Aspose.Words voor .NET
articleTitle: Renderopties opgeven bij omzetten naar PDF
linktitle: Renderopties opgeven bij omzetten naar PDF
description: "Een document omzetten naar PDF met geavanceerde opties C#. DOCX-formulieren omzetten naar PDF C#. Gebruik PdfSaveOptions om het resultaat van het opslaan van een document naar PDF te wijzigen."
type: docs
weight: 20
url: /nl/net/specify-rendering-options-when-converting-to-pdf/
---

Het PDF-formaat is een fixed-page formaat dat erg populair is bij gebruikers en breed wordt ondersteund door verschillende toepassingen, omdat een PDF-document er hetzelfde uitziet op elk apparaat. Daarom is het omzetten naar PDF een belangrijk kenmerk van Aspose.Words.

PDF is een complex formaat. Verschillende fasen van de berekeningen zijn vereist in het proces van het omzetten van een document naar PDF, met inbegrip van de layout berekening. Aangezien deze stadia complexe berekeningen omvatten, zijn ze tijdrovend. Ook het PDF-formaat is nogal complex op zich. Het heeft een specifieke bestandsstructuur, grafische model en lettertype inbedding. Bovendien beschikt het over een aantal complexe output functionaliteit, zoals document structuur tags, encryptie, digitale handtekeningen, en bewerkbare formulieren.

Aspose.Words lay-out motor imiteert de manier waarop de Microsoft WordDe pagina lay-out engine werkt. Daarom, Aspose.Words maakt PDF uitvoerdocumenten zo dicht mogelijk bij wat je kunt zien in Microsoft Word. Soms is het noodzakelijk om extra opties te specificeren, die het resultaat kunnen beïnvloeden van het opslaan van een document in het PDF-formaat. Deze opties kunnen worden gespecificeerd door het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) klasse, met de eigenschappen die bepalen hoe de PDF-uitvoer wordt weergegeven.

Enkele voorbeelden van gebruik **PdfSaveOptions** worden hieronder vermeld.

{{% alert color="primary" %}}

Momenteel kunt u opslaan naar PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u en PDF/UA-1 formaten. Gebruik de [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) opsomming om het nalevingsniveau van de PDF-normen vast te stellen. Merk op dat met het PDF/A-formaat, een uitvoerbestand groter is dan een normale PDF-bestandsgrootte.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) en [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) zijn gemarkeerd als achterhaald.

Voor meer informatie over PDF/A, zie het volgende artikel, "Learn Features of Conversion to PDF/A."

{{% /alert %}}

## PDF aanmaken Document met invulbare formulieren

Het is ook mogelijk om vulbare formulieren uit een Microsoft Word document naar uitvoer PDF, dat vulbare formulieren heeft in plaats van een platte tekst. Gebruik de [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) eigenschap om een document op te slaan als PDF met vulbare formulieren.

Merk op dat in tegenstelling tot <span notrans="<span notrans=" Microsoft Word"=""></span>,"> het PDF-formaat heeft een beperkt aantal opties voor bewerkbare formulieren, zoals tekstvak, combobox en selectievakje. Microsoft Word heeft meer soorten formulieren, bijvoorbeeld kalender datum picker. Over het algemeen is het niet mogelijk om volledig na te bootsen Microsoft Word gedrag in PDF. Daarom, in sommige complexe gevallen, PDF-uitvoer kan verschillen van wat je ziet in Microsoft Word.

Het onderstaande codevoorbeeld laat zien hoe je een document als PDF kunt opslaan met vulbare formulieren met gespecificeerde Jpeg compressie en kwaliteit:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Documentstructuur en aangepaste eigenschappen exporteren

Met de eigenschap [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) kunt u documentstructuur exporteren naar PDF-uitvoer.

PDF logische structuur faciliteiten bieden een mechanisme voor het opnemen van informatie, met betrekking tot de document inhoud structuur, in een PDF-bestand. Aspose.Words bewaart informatie over de structuur van een Microsoft Word document, zoals paragrafen, lijsten, tabellen, voetnoten/eindenoten, enz.

Het volgende voorbeeld laat zien hoe een document in PDF-formaat kan worden opgeslagen, waarbij de documentstructuur behouden blijft:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words kunt u ook documenteer aangepaste eigenschappen naar PDF, die wordt aangetoond door het volgende voorbeeld:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Overzichten exporteren van bladwijzers en kopjes in uitvoer PDF

Als u bladwijzers wilt exporteren als contouren in uitvoer PDF, kunt u de [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) eigendom. Deze eigenschap specificeert het standaardniveau in het document overzicht, waarbij Microsoft Word bladwijzers worden weergegeven. Als het document bladwijzers bevat in de koptekst/voettekst van het document, kunt u de [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) eigendom aan [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) of [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) om te specificeren hoe ze worden geëxporteerd in output PDF. De bladwijzers in headers/voeters worden niet geëxporteerd wanneer de waarde van **HeaderFooterBookmarksExportMode** is [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Het onderstaande codevoorbeeld laat zien hoe je bladwijzers kunt exporteren vanaf de eerste header/voeter van een sectie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

De uitvoer PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Wanneer **HeaderFooterBookmarksExportMode** is ingesteld op [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) en het document heeft even en oneven headers/voeters of een andere eerste pagina kop/voeter, bladwijzers worden geëxporteerd voor de eerste unieke headers/voeters in een sectie.

U kunt ook exporteren rubrieken in de uitvoer PDF, met behulp van de [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) eigendom. Deze eigenschap geeft aan hoeveel niveaus van rubrieken zijn opgenomen in het document overzicht.

Het onderstaande codevoorbeeld laat zien hoe je rubrieken met drie niveaus kunt exporteren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

De uitvoer PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Een bladwijzer of koersnavigatie kan verschillende verschijningen hebben in verschillende PDF-viewers. Bovendien zijn in sommige toepassingen bladwijzers en koersnavigatie niet beschikbaar in UI.

{{% /alert %}}

## Afbeeldingen omlaag om de documentgrootte te verkleinen

Aspose.Words biedt een mogelijkheid om beelden te downsample om de output PDF grootte te verminderen, met behulp van de [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) eigendom. Downsampling is standaard ingeschakeld in de [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) eigendom.

Merk op dat het ook mogelijk is om een specifieke resolutie in de [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) eigendom, of een afwikkelingsdrempel in de [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) eigendom. In het tweede geval, als de beeldresolutie lager is dan de drempelwaarde, dan is downsampling niet van toepassing.

Het onderstaande voorbeeld geeft aan hoe u de resolutie van afbeeldingen kunt wijzigen in een uitvoer PDF-document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

De resolutie wordt berekend volgens de werkelijke afbeeldingsgrootte op de pagina.

## Lettertypen invoegen in Adobe PDF-formaat

Aspose.Words ook kunt u controleren hoe lettertypen zijn ingebed in de resulterende PDF-documenten. Lettertypen moeten worden ingebed in een Adobe PDF-document om ervoor te zorgen dat het document correct kan worden weergegeven op elke machine (zie meer details over lettertypeweergave in de sectie [Waar gebruiken Typelettertypen](/words/nl/net/using-truetype-fonts/)). Standaard, Aspose.Words Integreert een deelverzameling van lettertypen die in het document worden gebruikt in de gegenereerde PDF. In dit geval glyphs (tekens) gebruikt in het document worden opgeslagen in PDF.

### Wanneer volledige lettertypen moeten worden gebruikt en wanneer u moet subset

Er is een manier om een optie voor Aspose.Words volledige lettertypen insluiten. Verdere details, samen met enkele voor- en nadelen van elke setting worden beschreven in onderstaande tabel.

| Lettertypen-modus insluiten |  Voordelen | Nadelen |
|  :-  |  :-  |  :-  |
|  `Full`  | Nuttig wanneer u de resulterende PDF later wilt bewerken door de tekst toe te voegen of te wijzigen. Alle lettertypen zijn opgenomen, dus alle glyphS zijn aanwezig. | Omdat sommige lettertypen groot zijn (verschillende megabytes), kan inbedding zonder subsetting resulteren in grote uitvoerbestanden. |
|  `Subset`  | Subsetting is handig als u de uitvoerbestandsgrootte kleiner wilt houden. | <p>De gebruiker kan de tekst niet volledig toevoegen of bewerken met behulp van het deellettertype in het uitvoer PDF-document. Dit komt omdat niet alles glyphs van het lettertype zijn aanwezig.</p>

<p>Als meerdere PDF's worden opgeslagen met deellettertypen en samengevoegd, dan kan het gecombineerde PDF-document een lettertype hebben dat veel onnodige subsets bevat.</p>
 |

### Volledige lettertypen in PDF inbedden

De [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) eigenschap kunt u specificeren hoe Aspose.Words Integreert lettertypen in een uitvoer PDF-document.

- Om volledige lettertypen in het uitvoer PDF-document in te sluiten, ingesteld **EmbedFullFonts** tot true
- Om lettertypen in te delen bij opslaan naar PDF, ingesteld **EmbedFullFonts** tot false

Het volgende voorbeeld laat zien hoe volledige lettertypen in het uitvoer PDF-document ingesloten kunnen worden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Het volgende voorbeeld laat zien hoe u Aspose.Words naar subsetlettertypen in de uitvoer PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloon bestand voor deze voorbeelden downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Hoe te controleren Inbedding Core Lettertypen en Windows Standaardlettertypen

Kernlettertypen en Windows De standaardlettertypen zijn de "standaard" sets van lettertypen, die meestal aanwezig zijn op de doelmachine of verstrekt door de documentlezer, daarom hoeven ze niet te worden ingebed in de output PDF. Door deze lettertypen niet in te voegen, kunt u de grootte van weergegeven PDF-documenten verkleinen en toch de portabiliteit behouden.

Aspose.Words biedt opties om te kiezen hoe lettertypen worden geëxporteerd naar PDF. U kunt kiezen om de kern- en standaardlettertypen in de uitvoer PDF in te sluiten of om ze over te slaan en standaard kernlettertypen of systeemlettertypen op de doelmachine te gebruiken. Met behulp van een van deze opties normaal resulteert in een aanzienlijke bestandsgrootte vermindering voor PDF-documenten gegenereerd door Aspose.Words.

- Aangezien deze opties elkaar uitsluiten, moet je er maar één tegelijk kiezen.
- Bij het opslaan met PDF/A-1 compliance moeten alle gebruikte lettertypen worden ingebed in het PDF-document. Bij het opslaan met deze naleving, de [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) eigenschap moet ingesteld worden op false en de [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) eigenschap moet ingesteld worden op [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Kernletters insluiten

De optie om Core-lettertypen in te sluiten kan worden ingeschakeld of uitgeschakeld door gebruik te maken van de [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) eigendom. Wanneer het is ingesteld op true, de volgende populairste lettertypen (Basis 14 lettertypen) zijn niet ingebed in het uitvoer PDF document:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Deze lettertypen worden vervangen door de core Type 1 lettertypen, die door een lezer worden verstrekt wanneer de PDF wordt geopend.

Het onderstaande voorbeeld laat zien hoe u dit moet instellen Aspose.Words om inbedding van kernlettertypen te voorkomen en laat de lezer ze vervangen door PDF Type 1 lettertypen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Omdat PDF-viewers core fonts leveren op elk ondersteund platform, is deze optie ook handig wanneer een grotere documentportabiliteit vereist is. De kernlettertypen kunnen er echter anders uitzien dan de systeemlettertypen.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) coderen tekst. Het schrijven van een niet-ANSI tekst naar PDF zal altijd vereisen dat de bijbehorende lettertypen worden ingebed.

{{% /alert %}}

### Inbedding systeemlettertypen

Deze optie kan worden ingeschakeld of uitgeschakeld met behulp van de [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) eigendom. Wanneer deze eigenschap ingesteld is [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), de Arial en Times New Roman true typelettertypen zijn niet ingebed in een PDF-document. In dit geval vertrouwt de client viewer op de lettertypen die zijn geïnstalleerd op het besturingssysteem van de client. Wanneer de **FontEmbeddingMode** eigenschap is ingesteld op [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words geen lettertypen insluiten.

Het voorbeeld hieronder laat zien hoe u kunt instellen Aspose.Words om Arial en Times Nieuwe Romeinse lettertypen niet in te voegen in een PDF-document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Deze modus is het meest nuttig wanneer u uw documenten wilt bekijken op hetzelfde platform, met behoud van de exacte verschijning van lettertypen in de uitvoer PDF.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) coderen tekst. Een niet-ANSI-tekst naar PDF schrijven vereist dat het bijbehorende lettertype wordt ingebed.

{{% /alert %}}
