---
title: Renderopties opgeven bij omzetten naar PDF
second_title: Aspose.Words voor Java
articleTitle: Renderopties opgeven bij omzetten naar PDF
linktitle: Renderopties opgeven bij omzetten naar PDF
description: "Een document omzetten naar PDF met geavanceerde opties. Gebruik PdfSaveOptions om het resultaat van het opslaan van een document naar PDF-formaat te wijzigen met behulp van Java."
type: docs
weight: 20
url: /nl/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Het PDF-formaat is een fixed-page-formaat dat zeer populair is bij gebruikers en breed wordt ondersteund door verschillende toepassingen omdat een PDF-document er hetzelfde uitziet op elk apparaat. Om die reden is het omzetten naar PDF een belangrijk kenmerk van Aspose.Words.

PDF is een complex formaat. Verschillende fasen van berekeningen zijn vereist in het proces van het omzetten van een document naar PDF, met inbegrip van de lay-out berekening. Aangezien deze stadia complexe berekeningen omvatten, zijn ze tijdrovend. Ook het PDF-formaat is nogal complex op zich. Het heeft een specifieke bestandsstructuur, grafische model en lettertype inbedding. Bovendien beschikt het over een aantal complexe output functionaliteit, zoals document structuur tags, encryptie, digitale handtekeningen, en bewerkbare formulieren.

Aspose.Words lay-out motor imiteert de manier waarop de Microsoft WordDe pagina lay-out engine werkt. Daarom, Aspose.Words maakt PDF uitvoerdocumenten zo dicht mogelijk bij wat je kunt zien in Microsoft Word. Soms is het noodzakelijk om extra opties te specificeren, die het resultaat kunnen beïnvloeden van het opslaan van een document in het PDF-formaat. Deze opties kunnen worden gespecificeerd door het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasse, met de eigenschappen die bepalen hoe de PDF-uitvoer wordt weergegeven.

Enkele voorbeelden van gebruik **PdfSaveOptions** worden hieronder verstrekt.

{{% alert color="primary" %}}

Momenteel kunt u opslaan naar PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u en PDF/UA-1 formaten. Gebruik de [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Lijst om het nalevingsniveau van de PDF-normen vast te stellen. Merk op dat met het PDF/A formaat, een uitvoerbestand groter is dan een normale PDF-bestandsgrootte.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) en [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) zijn gemarkeerd als achterhaald.

Voor meer informatie over PDF/A, zie het volgende artikel, "Leer functies van conversie naar PDF/A."

{{% /alert %}}

## PDF aanmaken Document met invulbare formulieren

Het is ook mogelijk om vulbare formulieren uit een Microsoft Word document in uitvoer PDF, die vulbare formulieren heeft in plaats van een platte tekst. Gebruik de [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) eigenschap om een document op te slaan als PDF met vulbare formulieren.

Merk op dat in tegenstelling tot Microsoft Word,"> het PDF-formaat heeft een beperkt aantal opties voor bewerkbare formulieren, zoals tekstvak, combinatievak en selectievakje. Microsoft Word heeft meer soorten formulieren, bijvoorbeeld kalender datum picker. Over het algemeen is het niet mogelijk om volledig na te bootsen Microsoft Word gedrag in PDF. Daarom, in sommige complexe gevallen, PDF output kan verschillen van wat je ziet in Microsoft Word.

Het onderstaande codevoorbeeld laat zien hoe u een document als PDF kunt opslaan met vulbare formulieren met gespecificeerde Jpeg compressie en kwaliteit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Documentstructuur en aangepaste eigenschappen exporteren

De [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) eigenschap kunt u documentstructuur exporteren naar PDF-uitvoer.

PDF logische structuur faciliteiten bieden een mechanisme voor het integreren van informatie, met betrekking tot de document inhoud structuur, in een PDF-bestand. Aspose.Words bewaart informatie over de structuur van een Microsoft Word document, zoals paragrafen, lijsten, tabellen, voetnoten/eindenoten, enz.

Het volgende voorbeeld toont hoe een document in PDF-formaat kan worden opgeslagen, waarbij de documentstructuur behouden blijft:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words kunt u ook documenteer aangepaste eigenschappen naar PDF, wat wordt aangetoond door het volgende voorbeeld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Outlines exporteren van bladwijzers en kopjes in uitvoer PDF

Als u bladwijzers wilt exporteren als contouren in uitvoer PDF, kunt u de [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) eigendom. Deze eigenschap specificeert het standaardniveau in het document overzicht, waarop Microsoft Word bladwijzers worden weergegeven. Als het document bladwijzers bevat in de kop/voet van het document, kunt u de [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) eigendom aan [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) of [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) om te specificeren hoe ze worden geëxporteerd in output PDF. De bladwijzers in headers/voeters worden niet geëxporteerd wanneer de waarde van **HeaderFooterBookmarksExportMode** is [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Het onderstaande codevoorbeeld laat zien hoe je bladwijzers kunt exporteren vanaf de eerste header/voeter van een sectie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

De uitvoer PDF van dit voorbeeld is hieronder weergegeven:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Wanneer **HeaderFooterBookmarksExportMode** is ingesteld op [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) en het document heeft even en oneven headers/voeters of een andere eerste pagina kop/voeter, bladwijzers worden geëxporteerd voor de eerste unieke headers/voeters in een sectie.

U kunt ook exporteren rubrieken in de output PDF, met behulp van de [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) eigendom. Deze eigenschap geeft aan hoeveel niveaus van rubrieken zijn opgenomen in het document overzicht.

Het onderstaande codevoorbeeld laat zien hoe je rubrieken met drie niveaus kunt exporteren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

De uitvoer PDF van dit voorbeeld wordt hieronder weergegeven:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Een bladwijzer of koersnavigatie kan verschillende verschijningen hebben in verschillende PDF-kijkers. Bovendien zijn in sommige toepassingen bladwijzers en koersnavigatie niet beschikbaar in UI.

{{% /alert %}}

## Afbeeldingen verkleinen om de documentgrootte te verkleinen

Aspose.Words biedt een mogelijkheid om beelden te downsample om de output PDF grootte te verminderen, met behulp van de [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) eigendom. Downsampling is standaard ingeschakeld in de [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) eigendom.

Er zij op gewezen dat het ook mogelijk is een specifieke resolutie in de [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) eigendom, of een afwikkelingsdrempel in de [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) eigendom. In het tweede geval, als de beeldresolutie lager is dan de drempelwaarde, dan is downsampling niet van toepassing.

Het onderstaande codevoorbeeld toont hoe u de resolutie van afbeeldingen kunt wijzigen in een uitvoer PDF-document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

De resolutie wordt berekend volgens de werkelijke afbeeldingsgrootte op de pagina.

## Lettertypen invoegen in Adobe PDF-formaat

Aspose.Words kunt u ook controleren hoe lettertypen zijn ingebed in de resulterende PDF-documenten. Lettertypen moeten worden ingebed in een Adobe PDF-document om ervoor te zorgen dat het document correct kan worden weergegeven op elke machine (zie meer details over lettertypeweergave in de sectie [Waar gebruiken Typelettertypen](/words/nl/java/using-truetype-fonts/)). Standaard, Aspose.Words Integreert een subset van lettertypen die in het document worden gebruikt in de gegenereerde PDF. In dit geval glyphs (tekens) gebruikt in het document worden opgeslagen in PDF.

### Wanneer volledige lettertypen te gebruiken en wanneer te subset

Er is een manier om een optie voor Aspose.Words volledige lettertypen insluiten. Verdere details, samen met enkele voor- en nadelen van elke setting worden beschreven in onderstaande tabel.

| Lettertypenmodus insluiten |  Voordelen | Nadelen |
|  :-  |  :-  |  :-  |
|  `Full`  | Nuttig wanneer u de resulterende PDF later wilt bewerken door de tekst toe te voegen of te wijzigen. Alle lettertypen zijn opgenomen, dus alle glyphEr zijn s aanwezig. | Omdat sommige lettertypen groot zijn (verschillende megabytes), kan inbedding zonder subsetting resulteren in grote uitvoerbestanden. |
|  `Subset`  | Subsetting is handig als u de uitvoerbestandsgrootte kleiner wilt houden. | <p>De gebruiker kan de tekst niet volledig toevoegen of bewerken met behulp van het deellettertype in het uitvoer PDF-document. Dit komt omdat niet alles glyphs van het lettertype zijn aanwezig.</p>

<p>Als meerdere PDF's worden opgeslagen met deellettertypen en samengevoegd, dan kan het gecombineerde PDF-document een lettertype bevatten dat veel onnodige subsets bevat.</p>
 |

### Volledige lettertypen in PDF inbedden

De [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) eigenschap kunt u specificeren hoe Aspose.Words Integreert lettertypen in een uitvoer PDF-document.

- Om volledige lettertypen in het uitvoer PDF-document in te sluiten, ingesteld **EmbedFullFonts** tot true
- Om lettertypen in te delen bij opslaan naar PDF, ingesteld **EmbedFullFonts** tot false

Het volgende voorbeeld laat zien hoe volledige lettertypen in het uitvoer PDF-document ingesloten kunnen worden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Het volgende voorbeeld laat zien hoe u kunt instellen Aspose.Words naar subsetlettertypen in de uitvoer PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor deze voorbeelden downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Hoe te controleren Inbedding Core Lettertypen en Windows Standaardlettertypen

Kernlettertypen en Windows Standaard fonts zijn de "standaard" sets van lettertypen, die meestal aanwezig zijn op de doelmachine of verstrekt door de documentlezer, daarom hoeven ze niet te worden ingebed in de output PDF. Door deze lettertypen niet in te bouwen, kunt u de grootte van weergegeven PDF-documenten verkleinen en toch de portabiliteit behouden.

Aspose.Words biedt opties om te kiezen hoe lettertypen worden geëxporteerd naar PDF. U kunt kiezen of u core en standaard lettertypen insluit in de output PDF of overslaan inbedding hen en gebruik standaard core PDF-lettertypen of systeemlettertypen op de doelmachine in plaats daarvan. Met behulp van een van deze opties normaal resulteert in een aanzienlijke bestandsgrootte vermindering voor PDF-documenten gegenereerd door Aspose.Words.

- Aangezien deze opties elkaar uitsluiten, moet u slechts één voor één kiezen.
- Bij het opslaan met PDF/A-1 naleving, moeten alle gebruikte lettertypen worden ingebed in het PDF-document. Bij het opslaan met deze naleving, de [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) eigenschap moet ingesteld worden op false en de [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) eigenschap moet ingesteld worden op [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Inbedding van kernletters

De optie om Core-lettertypen in te sluiten kan worden ingeschakeld of uitgeschakeld door gebruik te maken van de [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) eigendom. Wanneer het ingesteld is op true, de volgende meest populaire lettertypen (Basis 14 lettertypen) zijn niet ingebed in het uitvoer PDF document:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Deze lettertypen worden vervangen door de core Type 1 lettertypen, die door een lezer worden verstrekt wanneer de PDF wordt geopend.

Het onderstaande voorbeeld laat zien hoe u dit kunt instellen Aspose.Words om inbedding van kernlettertypen te voorkomen en laat de lezer ze vervangen door PDF Type 1 lettertypen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Aangezien PDF-viewers kernlettertypen op elk ondersteund platform leveren, is deze optie ook handig wanneer een grotere documentportabiliteit vereist is. De kernlettertypen kunnen er echter anders uitzien dan de systeemlettertypen.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) codeer tekst. Een niet-ANSI-tekst naar PDF schrijven vereist altijd dat de bijbehorende lettertypen worden ingebed.

{{% /alert %}}

### Systeemlettertypen insluiten

Deze optie kan worden ingeschakeld of uitgeschakeld door gebruik te maken van de [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) eigendom. Wanneer deze eigenschap ingesteld is [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), de Arial en Times New Roman true typelettertypen zijn niet ingebed in een PDF-document. In dit geval vertrouwt de klantviewer op de lettertypen die op het client-besturingssysteem zijn geïnstalleerd. Wanneer de **FontEmbeddingMode** eigenschap is ingesteld op [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words geen lettertypen insluiten.

Het voorbeeld hieronder laat zien hoe u kunt instellen Aspose.Words om Arial en Times Nieuwe Romeinse lettertypen niet in te voegen in een PDF-document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Deze modus is het meest nuttig wanneer u uw documenten op hetzelfde platform wilt bekijken, waarbij de exacte weergave van lettertypen in de uitvoer PDF behouden blijft.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) codeer tekst. Een niet-ANSI-tekst naar PDF schrijven vereist dat het bijbehorende lettertype wordt ingebed.

{{% /alert %}}
