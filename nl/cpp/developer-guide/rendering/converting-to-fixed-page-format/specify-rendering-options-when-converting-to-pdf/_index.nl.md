---
title: Geef weergaveopties op bij het converteren naar PDF
second_title: Aspose.Words voor C++
articleTitle: Geef weergaveopties op bij het converteren naar PDF
linktitle: Geef weergaveopties op bij het converteren naar PDF
description: "Converteer een document naar PDF met geavanceerde opties met behulp van C++. Gebruik PdfSaveOptions om het resultaat van het opslaan van een document in PDF - indeling te wijzigen."
type: docs
weight: 30
url: /nl/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

De PDF-indeling is een vaste paginaindeling die erg populair is bij gebruikers en op grote schaal wordt ondersteund door verschillende toepassingen omdat een PDF - document er op elk apparaat hetzelfde uitziet. Om die reden is het omzetten naar PDF een belangrijk kenmerk van Aspose.Words.

PDF is een complexe indeling. Er zijn verschillende fasen van berekeningen nodig bij het converteren van een document naar PDF, inclusief de lay-outberekening. Aangezien deze fasen complexe berekeningen omvatten, zijn ze tijdrovend. Ook is de PDF - indeling op zichzelf nogal complex. Het heeft een specifieke bestandsstructuur, grafisch model en lettertype-inbedding. Bovendien beschikt het over een aantal complexe uitvoerfunctionaliteiten, zoals documentstructuurtags, codering, digitale handtekeningen en bewerkbare formulieren.

Aspose.Words layout engine imiteert de manier waarop de pagina-layout engine van Microsoft Word werkt. Daarom zorgt Aspose.Words ervoor dat PDF uitvoerdocumenten zo dicht mogelijk lijken op wat u in Microsoft Word kunt zien. Soms is het nodig om extra opties op te geven, wat van invloed kan zijn op het resultaat van het opslaan van een document in de PDF - indeling. Deze opties kunnen worden opgegeven door gebruik te maken van de [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members) - klasse, die de eigenschappen bevat die bepalen hoe de PDF - uitvoer wordt weergegeven.

Hieronder vindt u enkele voorbeelden van het gebruik van **PdfSaveOptions**.

{{% alert color="primary" %}}

Op dit moment kunt u besparen op PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, en PDF/UA-1 formaten. Gebruik de [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) opsomming om het PDF nalevingsniveau van de normen in te stellen. Merk op dat met de PDF/A - indeling een uitvoerbestand groter is dan een gewone PDF - Bestandsgrootte.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) en [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) zijn gemarkeerd als verouderd.

Voor meer informatie over PDF/A, zie het volgende artikel, "leer functies van conversie naar PDF/A".

{{% /alert %}}

## Een PDF Document maken met invulbare formulieren

Het is ook mogelijk om invulbare formulieren uit een Microsoft Word document te exporteren naar output PDF, dat invulbare formulieren heeft in plaats van gewone tekst. Gebruik de eigenschap [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) om een document op te slaan als PDF met invulbare formulieren.

Merk op dat in tegenstelling tot Microsoft Word de indeling PDF een beperkt aantal opties heeft voor bewerkbare formulieren, zoals tekstvak, combobox en checkbox. Microsoft Word heeft meer soorten formulieren, bijvoorbeeld kalenderdatumkiezer. Over het algemeen is het niet mogelijk om Microsoft Word gedrag volledig na te bootsen in PDF. Daarom kan in sommige complexe gevallen de output van PDF afwijken van wat u in Microsoft Word ziet.

Het onderstaande codevoorbeeld laat zien hoe u een document opslaat als PDF met invulbare formulieren met opgegeven Jpeg-compressie en-kwaliteit:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Documentstructuur en aangepaste eigenschappen exporteren

Met de eigenschap [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) kunt u documentstructuur exporteren naar PDF output.

PDF logische structuurfaciliteiten bieden een mechanisme voor het opnemen van informatie met betrekking tot de structuur van de documentinhoud in een PDF bestand. Aspose.Words bewaart informatie over de structuur van een Microsoft Word document, zoals alinea ' s, lijsten, tabellen, voetnoten/eindnoten, enz.

Het volgende voorbeeld laat zien hoe u een document opslaat in de indeling PDF, waarbij de documentstructuur behouden blijft:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Met Aspose.Words kunt u ook aangepaste eigenschappen van documenten exporteren naar PDF, wat wordt aangetoond door het volgende voorbeeld:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Contouren exporteren van bladwijzers en koppen in Output PDF

Als u bladwijzers wilt exporteren als contouren in uitvoer PDF, kunt u de Eigenschap [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) gebruiken. Deze eigenschap specificeert het standaardniveau in de documentoverzicht, waarop Microsoft Word bladwijzers worden weergegeven. Als het document bladwijzers bevat in de kop - /voettekst van het document, kunt u de eigenschap [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) instellen op [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) of [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) om aan te geven hoe ze worden geëxporteerd in uitvoer PDF. De bladwijzers in kop-en voetteksten worden niet geëxporteerd als de waarde van **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) is.

Het onderstaande codevoorbeeld laat zien hoe bladwijzers uit de eerste kop - /voettekst van een sectie kunnen worden geëxporteerd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

De output PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Wanneer **HeaderFooterBookmarksExportMode** is ingesteld op eerste en het document even en oneven kop-/voetteksten of een andere kop - /voettekst van de eerste pagina heeft, worden bladwijzers geëxporteerd voor de eerste unieke kop - /voetteksten in een sectie.

U kunt ook koppen exporteren in de uitvoer PDF, met behulp van de eigenschap [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Deze eigenschap geeft aan hoeveel niveaus van koppen zijn opgenomen in het overzicht van het document.

Het onderstaande codevoorbeeld laat zien hoe koppen met drie niveaus kunnen worden geëxporteerd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

De output PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Een bladwijzer of kopnavigatie kan verschillende verschijningen hebben in verschillende PDF - kijkers. Bovendien zijn in sommige toepassingen bladwijzers en kopnavigatie niet beschikbaar in UI.

{{% /alert %}}

## Afbeeldingen Downsampling om de documentgrootte te verkleinen

Aspose.Words biedt de mogelijkheid om afbeeldingen te downsamplen om de output PDF grootte te verminderen, met behulp van de Eigenschap [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Downsampling is standaard ingeschakeld in de eigenschap [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Merk op dat het ook mogelijk is om een specifieke resolutie in te stellen in de Eigenschap [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/), of een resolutiedrempel in de eigenschap [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). In het tweede geval, als de beeldresolutie lager is dan de drempelwaarde, is downsampling niet van toepassing.

In het onderstaande codevoorbeeld wordt weergegeven hoe u de resolutie van afbeeldingen in een uitvoer PDF - document kunt wijzigen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

De resolutie wordt berekend op basis van de werkelijke afbeeldingsgrootte op de pagina.

## Lettertypen insluiten in Adobe PDF - indeling

Aspose.Words stelt u ook in staat om te bepalen hoe lettertypen worden ingebed in de resulterende PDF documenten. Lettertypen moeten worden ingebed in elk Adobe PDF - document om ervoor te zorgen dat het document op elke machine correct kan worden weergegeven (zie meer details over het weergeven van lettertypen in de sectie [TrueType Lettertypen Gebruiken](/words/cpp/using-truetype-fonts/)). Standaard wordt in Aspose.Words een subset van lettertypen die in het document worden gebruikt, ingesloten in de gegenereerde PDF. In dit geval worden alleen de glyfen (tekens) die in het document worden gebruikt, opgeslagen in PDF.

### Wanneer volledige lettertypen gebruiken en wanneer Subset

Er is een manier om een optie op te geven voor Aspose.Words om volledige lettertypen in te sluiten. Verdere details, samen met enkele voor-en nadelen van elke instelling, worden beschreven in de onderstaande tabel.

| Modus Lettertypen Insluiten | Voordeel | Nadelen |
| :- | :- | :- |
| `Full` | Handig wanneer u de resulterende PDF later wilt bewerken door de tekst toe te voegen of te wijzigen. Alle lettertypen zijn inbegrepen, dus alle glyfen zijn aanwezig. | Aangezien sommige lettertypen groot zijn (enkele megabytes), kan het inbedden ervan zonder subset resulteren in grote uitvoerbestanden. |
| `Subset` | Subsetting is handig als u de grootte van het uitvoerbestand kleiner wilt houden. | <p>De gebruiker kan de tekst niet volledig Toevoegen of bewerken met behulp van het subsetlettertype in het Uitvoer PDF - document. Dit komt omdat niet alle glyfen van het lettertype aanwezig zijn.</p><p>Als meerdere PDFs worden opgeslagen met subsetlettertypen en samengevoegd, kan het gecombineerde PDF - document een lettertype bevatten dat veel onnodige subset bevat.</p> |

### Volledige lettertypen insluiten in PDF

Met de eigenschap [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) kunt u opgeven hoe Aspose.Words lettertypen insluit in een uitvoerdocument van PDF.

- Als u volledige lettertypen wilt insluiten in het Uitvoer PDF - document, stelt u **EmbedFullFonts** in op true
- Naar subset lettertypen wanneer u opslaat naar PDF, stelt u **EmbedFullFonts** in op false

Het volgende voorbeeld laat zien hoe u volledige lettertypen in het uitvoer PDF - document kunt insluiten:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Het volgende voorbeeld laat zien hoe u Aspose.Words instelt op subsetlettertypen in de uitvoer PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor deze voorbeelden downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Het insluiten van Kernlettertypen en Windows standaardlettertypen beheren

Kernlettertypen en Windows standaardlettertypen zijn de "standaard" sets van lettertypen, die meestal aanwezig zijn op de doelmachine of worden geleverd door de documentlezer, daarom hoeven ze niet te worden ingebed in de output PDF. Door deze lettertypen niet in te sluiten, kunt u de grootte van gerenderde PDF - documenten verkleinen en toch de draagbaarheid behouden.

Aspose.Words biedt opties om te kiezen hoe lettertypen naar PDF worden geëxporteerd. U kunt ervoor kiezen om core-en standaardlettertypen in de uitvoer PDF in te sluiten of om ze over te slaan en in plaats daarvan standard core PDF - lettertypen of systeemlettertypen op de doelmachine te gebruiken. Het gebruik van een van deze opties resulteert normaal gesproken in een aanzienlijke vermindering van de bestandsgrootte voor PDF documenten gegenereerd door Aspose.Words.

- Aangezien deze opties elkaar uitsluiten, moet u er slechts één tegelijk kiezen.
- Bij het opslaan met PDF/A-1 compliance moeten alle gebruikte lettertypen worden ingesloten met het PDF document. Bij het opslaan met deze naleving moet de eigenschap [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) worden ingesteld op false en de eigenschap [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) op [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Kernlettertypen Insluiten

De optie om kernlettertypen in te sluiten kan worden ingeschakeld of uitgeschakeld met behulp van de eigenschap `UseCoreFonts`. Wanneer het is ingesteld op true, zijn de volgende meest populaire" True Type " lettertypen (basis 14 lettertypen) niet ingebed in het uitvoer PDF document:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Deze lettertypen worden vervangen door de overeenkomstige kernlettertypen van type 1, die door een lezer worden geleverd wanneer de PDF wordt geopend.

Het onderstaande voorbeeld laat zien hoe u Aspose.Words instelt om het insluiten van kernlettertypen te voorkomen en de lezer deze te laten vervangen door PDF type 1-lettertypen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Aangezien PDF viewers kernlettertypen bieden op elk ondersteund platform, is deze optie ook handig wanneer een grotere documentportabiliteit vereist is. Kernlettertypen kunnen er echter anders uitzien dan systeemlettertypen.

{{% alert color="primary" %}}

Deze instelling werkt alleen voorANSI (Windows-1252) coderingstekst. Het schrijven van een niet - ANSI tekst naar PDF vereist altijd dat de overeenkomstige lettertypen worden ingebed.

{{% /alert %}}

### Embedding System Fonts

Deze optie kan worden ingeschakeld of uitgeschakeld met behulp van de eigenschap [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Wanneer deze eigenschap is ingesteld op [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), worden de true Type lettertypen "Arial" en "Times New Roman" niet ingebed in een PDF document. In dit geval is de clientviewer afhankelijk van de lettertypen die op het besturingssysteem van de client zijn geïnstalleerd. Wanneer de eigenschap **FontEmbeddingMode** is ingesteld op [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Sluit Aspose.Words geen lettertypen in.

Het onderstaande voorbeeld laat zien hoe u Aspose.Words instelt om het insluiten van Arial-en Times New Roman-lettertypen in een PDF - document over te slaan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Deze modus is het meest handig wanneer u uw documenten op hetzelfde platform wilt bekijken, waarbij de exacte weergave van lettertypen in de uitvoer PDF wordt behouden.

{{% alert color="primary" %}}

Deze instelling werkt alleen voorANSI (Windows-1252) coderingstekst. Voor het schrijven van een niet - ANSI tekst naar PDF moet het overeenkomstige lettertype worden ingebed.

{{% /alert %}}
