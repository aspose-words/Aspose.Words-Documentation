---
title: Opties bij omzetten naar PDF
second_title: Aspose.Words voor Python via .NET
articleTitle: Renderopties opgeven bij omzetten naar PDF
linktitle: Renderopties opgeven bij omzetten naar PDF
description: "Een document omzetten naar PDF met geavanceerde opties Python. Gebruik PdfSaveOptions om het resultaat van het opslaan van een document naar PDF-formaat te wijzigen."
type: docs
weight: 20
url: /nl/python-net/specify-rendering-options-when-converting-to-pdf/
---

Het PDF-formaat is een fixed-page formaat dat erg populair is bij gebruikers en breed wordt ondersteund door verschillende toepassingen, omdat een PDF-document er hetzelfde uitziet op elk apparaat. Daarom is het omzetten naar PDF een belangrijk kenmerk van Aspose.Words.

PDF is een complex formaat. Verschillende fasen van de berekeningen zijn vereist in het proces van het omzetten van een document naar PDF, met inbegrip van de layout berekening. Aangezien deze stadia complexe berekeningen omvatten, zijn ze tijdrovend. Ook het PDF-formaat is nogal complex op zich. Het heeft een specifieke bestandsstructuur, grafische model en lettertype inbedding. Bovendien beschikt het over een aantal complexe output functionaliteit, zoals document structuur tags, encryptie, digitale handtekeningen, en bewerkbare formulieren.

Aspose.Words lay-out motor imiteert de manier waarop de Microsoft WordDe pagina lay-out engine werkt. Daarom, Aspose.Words maakt PDF uitvoerdocumenten zo dicht mogelijk bij wat je kunt zien in Microsoft Word. Soms is het noodzakelijk om extra opties te specificeren, die het resultaat kunnen beïnvloeden van het opslaan van een document in het PDF-formaat. Deze opties kunnen worden gespecificeerd door het gebruik van de [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klasse, met de eigenschappen die bepalen hoe de PDF-uitvoer wordt weergegeven.

Enkele voorbeelden van gebruik [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) worden hieronder vermeld.

{{% alert color="primary" %}}

Momenteel kunt u ook opslaan naar PDF/A-1 en PDF/A-2 formaten. Merk op dat met het PDF/A-formaat, een uitvoerbestand groter is dan een normale PDF-bestandsgrootte.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) en [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) zijn gemarkeerd als achterhaald.

Voor meer informatie over PDF/A, zie het volgende artikel, "Learn Features of Conversion to PDF/A."

{{% /alert %}}

## PDF aanmaken Document met invulbare formulieren

Het is ook mogelijk om vulbare formulieren uit een Microsoft Word document naar uitvoer PDF, dat vulbare formulieren heeft in plaats van een platte tekst. Gebruik de [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) eigenschap om een document op te slaan als PDF met vulbare formulieren.

Merk op dat in tegenstelling tot <span notrans="<span notrans=" Microsoft Word"=""></span>,"> het PDF-formaat heeft een beperkt aantal opties voor bewerkbare formulieren, zoals tekstvak, combobox en selectievakje. Microsoft Word heeft meer soorten formulieren, bijvoorbeeld kalender datum picker. Over het algemeen is het niet mogelijk om volledig na te bootsen Microsoft Word gedrag in PDF. Daarom, in sommige complexe gevallen, PDF-uitvoer kan verschillen van wat je ziet in Microsoft Word.

Het onderstaande codevoorbeeld laat zien hoe je een document als PDF kunt opslaan met vulbare formulieren met gespecificeerde Jpeg compressie en kwaliteit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Documentstructuur en aangepaste eigenschappen exporteren

De [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) eigenschap kunt u documentstructuur exporteren naar PDF-uitvoer.

PDF logische structuur faciliteiten bieden een mechanisme voor het opnemen van informatie, met betrekking tot de document inhoud structuur, in een PDF-bestand. Aspose.Words bewaart informatie over de structuur van een Microsoft Word document, zoals paragrafen, lijsten, tabellen, voetnoten/eindenoten, enz.

Het volgende voorbeeld laat zien hoe een document in PDF-formaat kan worden opgeslagen, waarbij de documentstructuur behouden blijft:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words kunt u ook documenteer aangepaste eigenschappen naar PDF, die wordt aangetoond door het volgende voorbeeld:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Overzichten exporteren van bladwijzers en kopjes in uitvoer PDF

Als u bladwijzers wilt exporteren als contouren in uitvoer PDF, kunt u de [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) eigendom. Deze eigenschap specificeert het standaardniveau in het document overzicht, waarbij Microsoft Word bladwijzers worden weergegeven. Als het document bladwijzers bevat in de koptekst/voettekst van het document, kunt u de [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) eigendom aan [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) of [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) om te specificeren hoe ze worden geëxporteerd in output PDF. De bladwijzers in headers/voeters worden niet geëxporteerd wanneer de waarde van [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) is [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Het onderstaande codevoorbeeld laat zien hoe je bladwijzers kunt exporteren vanaf de eerste header/voeter van een sectie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

De uitvoer PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Wanneer [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) is ingesteld op [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) en het document heeft even en oneven headers/voeters of een andere eerste pagina kop/voeter, bladwijzers worden geëxporteerd voor de eerste unieke headers/voeters in een sectie.

U kunt ook exporteren rubrieken in de uitvoer PDF, met behulp van de [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) eigendom. Deze eigenschap geeft aan hoeveel niveaus van rubrieken zijn opgenomen in het document overzicht.

Het onderstaande codevoorbeeld laat zien hoe je rubrieken met drie niveaus kunt exporteren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

De uitvoer PDF van dit voorbeeld wordt hieronder weergegeven:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Een bladwijzer of koersnavigatie kan verschillende verschijningen hebben in verschillende PDF-viewers. Bovendien zijn in sommige toepassingen bladwijzers en koersnavigatie niet beschikbaar in UI.

{{% /alert %}}

## Afbeeldingen omlaag om de documentgrootte te verkleinen

Aspose.Words biedt een mogelijkheid om beelden te downsample om de output PDF grootte te verminderen, met behulp van de [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) eigendom. Downsampling is standaard ingeschakeld in de [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) eigendom.

Merk op dat het ook mogelijk is om een specifieke resolutie in de [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) eigendom, of een afwikkelingsdrempel in de [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) eigendom. In het tweede geval, als de beeldresolutie lager is dan de drempelwaarde, dan is downsampling niet van toepassing.

Het onderstaande voorbeeld geeft aan hoe u de resolutie van afbeeldingen kunt wijzigen in een uitvoer PDF-document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

De resolutie wordt berekend volgens de werkelijke afbeeldingsgrootte op de pagina.

## Lettertypen invoegen in Adobe PDF-formaat

Aspose.Words ook kunt u controleren hoe lettertypen zijn ingebed in de resulterende PDF-documenten. Lettertypen moeten worden ingebed in een Adobe PDF-document om ervoor te zorgen dat het document correct kan worden weergegeven op elke machine (zie meer details over lettertypeweergave in de sectie [Waar gebruiken Typelettertypen](/words/nl/python-net/using-truetype-fonts/)). Standaard, Aspose.Words Integreert een deelverzameling van lettertypen die in het document worden gebruikt in de gegenereerde PDF. In dit geval glyphs (tekens) gebruikt in het document worden opgeslagen in PDF.

### Wanneer volledige lettertypen moeten worden gebruikt en wanneer u moet subset

Er is een manier om een optie voor Aspose.Words volledige lettertypen insluiten. Verdere details, samen met enkele voor- en nadelen van elke setting worden beschreven in onderstaande tabel.

| Lettertypen-modus insluiten |  Voordelen | Nadelen |
|  :-  |  :-  |  :-  |
|  `Full`  | Nuttig wanneer u de resulterende PDF later wilt bewerken door de tekst toe te voegen of te wijzigen. Alle lettertypen zijn opgenomen, dus alle glyphS zijn aanwezig. | Omdat sommige lettertypen groot zijn (verschillende megabytes), kan inbedding zonder subsetting resulteren in grote uitvoerbestanden. |
|  `Subset`  | Subsetting is handig als u de uitvoerbestandsgrootte kleiner wilt houden. | <p>De gebruiker kan de tekst niet volledig toevoegen of bewerken met behulp van het deellettertype in het uitvoer PDF-document. Dit komt omdat niet alles glyphs van het lettertype zijn aanwezig.</p>

<p>Als meerdere PDF's worden opgeslagen met deellettertypen en samengevoegd, dan kan het gecombineerde PDF-document een lettertype hebben dat veel onnodige subsets bevat.</p>
 |

### Volledige lettertypen in PDF inbedden

De [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) eigenschap kunt u specificeren hoe Aspose.Words Integreert lettertypen in een uitvoer PDF-document.

- Om volledige lettertypen in het uitvoer PDF-document in te sluiten, ingesteld [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) tot *True*
- Om lettertypen in te delen bij opslaan naar PDF, ingesteld [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) tot *False*

Het volgende voorbeeld laat zien hoe volledige lettertypen in het uitvoer PDF-document ingesloten kunnen worden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Het volgende voorbeeld laat zien hoe u Aspose.Words naar subsetlettertypen in de uitvoer PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloon bestand voor deze voorbeelden downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Hoe te controleren Inbedding Core Lettertypen en Windows Standaardlettertypen

Kernlettertypen en Windows De standaardlettertypen zijn de "standaard" sets van lettertypen, die meestal aanwezig zijn op de doelmachine of verstrekt door de documentlezer, daarom hoeven ze niet te worden ingebed in de output PDF. Door deze lettertypen niet in te voegen, kunt u de grootte van weergegeven PDF-documenten verkleinen en toch de portabiliteit behouden.

Aspose.Words biedt opties om te kiezen hoe lettertypen worden geëxporteerd naar PDF. U kunt kiezen om de kern- en standaardlettertypen in de uitvoer PDF in te sluiten of om ze over te slaan en standaard kernlettertypen of systeemlettertypen op de doelmachine te gebruiken. Met behulp van een van deze opties normaal resulteert in een aanzienlijke bestandsgrootte vermindering voor PDF-documenten gegenereerd door Aspose.Words.

- Aangezien deze opties elkaar uitsluiten, moet je er maar één tegelijk kiezen.
- Bij het opslaan met PDF/A-1 compliance moeten alle gebruikte lettertypen worden ingebed in het PDF-document. Bij het opslaan met deze naleving, de [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) eigenschap moet ingesteld worden op *False* en de [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) eigenschap moet ingesteld worden op [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Kernletters insluiten

De optie om Core-lettertypen in te sluiten kan worden ingeschakeld of uitgeschakeld door gebruik te maken van de [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) eigendom. Wanneer het is ingesteld op true, de volgende populairste lettertypen (Basis 14 lettertypen) zijn niet ingebed in het uitvoer PDF document:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Deze lettertypen worden vervangen door de core Type 1 lettertypen, die door een lezer worden verstrekt wanneer de PDF wordt geopend.

Het onderstaande voorbeeld laat zien hoe u dit moet instellen Aspose.Words om inbedding van kernlettertypen te voorkomen en laat de lezer ze vervangen door PDF Type 1 lettertypen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand voor dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Omdat PDF-viewers core fonts leveren op elk ondersteund platform, is deze optie ook handig wanneer een grotere documentportabiliteit vereist is. De kernlettertypen kunnen er echter anders uitzien dan de systeemlettertypen.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) coderen tekst. Het schrijven van een niet-ANSI tekst naar PDF zal altijd vereisen dat de bijbehorende lettertypen worden ingebed.

{{% /alert %}}

### Inbedding systeemlettertypen

Deze optie kan worden ingeschakeld of uitgeschakeld met behulp van de [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Wanneer deze eigenschap ingesteld is [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), de Arial en Times New Roman true typelettertypen zijn niet ingebed in een PDF-document. In dit geval vertrouwt de client viewer op de lettertypen die zijn geïnstalleerd op het besturingssysteem van de client. Wanneer de [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) eigenschap is ingesteld op [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words geen lettertypen insluiten.

Het voorbeeld hieronder laat zien hoe u kunt instellen Aspose.Words om Arial en Times Nieuwe Romeinse lettertypen niet in te voegen in een PDF-document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Deze modus is het meest nuttig wanneer u uw documenten wilt bekijken op hetzelfde platform, met behoud van de exacte verschijning van lettertypen in de uitvoer PDF.

{{% alert color="primary" %}}

Deze instelling werkt alleen voor ANSI (Windows-1252) coderen tekst. Een niet-ANSI-tekst naar PDF schrijven vereist dat het bijbehorende lettertype wordt ingebed.

{{% /alert %}}
