---
title: Opsies Wanneer Om Te Skakel na PDF
second_title: Aspose.Words vir Python via .NET
articleTitle: Spesifiseer Vertoonopsies Wanneer U na PDFOmskakel
linktitle: Spesifiseer Vertoonopsies Wanneer U na PDFOmskakel
description: "Skakel'n dokument om na PDF met gevorderde opsies met Python. Gebruik PdfSaveOptions om die resultaat van die stoor van'n dokument te verander na PDF formaat."
type: docs
weight: 20
url: /af/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Die PDF-formaat is'n vaste bladsy-formaat wat baie gewild is onder gebruikers en wyd ondersteun word deur verskeie toepassings, omdat'n PDF - dokument op enige toestel dieselfde lyk. Om daardie rede is omskakeling na PDF 'n belangrike kenmerk van Aspose.Words.

PDF is'n komplekse formaat. Verskeie stadiums van berekeninge is nodig in die proses van omskakeling van'n dokument na PDF, insluitend die uitleg berekening. Aangesien hierdie stadiums ingewikkelde berekeninge insluit, is dit tydrowend. Die PDF - formaat is ook op sigself nogal kompleks. Dit het'n spesifieke lêerstruktuur, grafiese model en lettertipe inbed. Daarbenewens het dit'n paar komplekse uitset funksies, soos dokument struktuur tags, enkripsie, digitale handtekeninge, en bewerkbare vorms.

Aspose.Words uitleg enjin naboots die manier waarop die Microsoft Word se bladsy uitleg enjin werk. Daarom, Aspose.Words maak PDF uitset dokumente lyk so naby as moontlik aan wat jy kan sien in Microsoft Word. Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument in die PDF - formaat kan beïnvloed. Hierdie opsies kan gespesifiseer word deur gebruik te maak van die [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klas, wat die eienskappe bevat wat bepaal hoe die PDF uitset vertoon sal word.

Sommige voorbeelde van die gebruik van [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) word hieronder verskaf.

{{% alert color="primary" %}}

Tans kan jy ook stoor na PDF/A-1 en PDF/A-2 formate. Let daarop dat met die PDF/A formaat, 'n uitset lêer grootte is groter as'n gewone PDF lêer grootte.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) en [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) word as verouderd gemerk.

Vir meer inligting oor PDF/A, sien die volgende artikel, "Leer Kenmerke van Omskakeling na PDF/A".

{{% /alert %}}

## Skep'n PDF Dokument met Invulbare Vorms

Dit is ook moontlik om invulbare vorms uit'n Microsoft Word dokument in uitset PDF uit te voer, wat invulbare vorms in plaas van'n gewone teks het. Gebruik die [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) eienskap om'n dokument as PDF met invulbare vorms te stoor.

Let daarop dat in teenstelling met Microsoft Word, die PDF formaat het'n beperkte aantal opsies vir bewerkbare vorms, soos textbox, combobox, en checkbox. Microsoft Word het meer tipes vorms, byvoorbeeld, kalender datum picker. Oor die algemeen is dit nie moontlik om Microsoft Word gedrag in PDF ten volle na te boots nie. Daarom, in sommige komplekse gevalle, kan PDF uitset verskil van wat jy sien in Microsoft Word.

Die kode voorbeeld hieronder toon hoe om'n dokument te stoor as PDF met invulbare vorms met gespesifiseerde Jpeg kompressie en kwaliteit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Uitvoer Van Dokumentstruktuur en Pasgemaakte Eienskappe

Die [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) eienskap stel jou in staat om dokumentstruktuur na PDF uitset uit te voer.

PDF logiese struktuur fasiliteite bied'n meganisme vir die insluiting van inligting, met betrekking tot die dokument inhoud struktuur, in'n PDF lêer. Aspose.Words bewaar inligting oor die struktuur uit'n Microsoft Word dokument, soos paragrawe, lyste, tabelle, voetnotas/eindnotas, ens.

Die volgende voorbeeld toon hoe om'n dokument te stoor na PDF formaat, die behoud van die dokument struktuur:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words laat jou ook toe om dokument persoonlike eienskappe uit te voer na PDF, wat deur die volgende voorbeeld getoon word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Uitvoer Van Buitelyne van Boekmerke en Opskrifte in Uitset PDF

As jy boekmerke as buitelyne in uitset PDF wil uitvoer, kan jy die [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) eienskap gebruik. Hierdie eienskap spesifiseer die verstekvlak in die dokumentskets, waar Microsoft Word boekmerke vertoon word. As die dokument boekmerke in die kop/voetskrif van die dokument bevat, kan jy die [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) eienskap op [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) of [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) stel om te spesifiseer hoe hulle in uitset PDF uitgevoer word. Die boekmerke in koptekste/voetskrifte word nie uitgevoer wanneer die waarde van [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none) is nie.

Die kode voorbeeld hieronder toon hoe om boekmerke uit die eerste kop/voetskrif van'n afdeling uit te voer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Die uitset PDF van hierdie voorbeeld word hieronder getoon:

![specify-rendering-options-when-converting-to-pdf_1](specify-rendering-options-when-converting-to-pdf-1.png)

Wanneer [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) op [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) gestel is en die dokument het selfs en onewe kop/voet of'n ander eerste bladsy kop/voet, word boekmerke uitgevoer vir die eerste unieke kop/voet in'n afdeling.

Jy kan ook uitvoer opskrifte in die uitset PDF, met behulp van die [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) eiendom. Hierdie eienskap spesifiseer hoeveel vlakke van opskrifte in die dokument skets ingesluit is.

Die kode voorbeeld hieronder toon hoe om opskrifte met drie vlakke uit te voer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Die uitset PDF van hierdie voorbeeld word hieronder uitgebeeld:

![specify-rendering-options-when-converting-to-pdf_2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

'n boekmerk of kopnavigasie kan verskillende voorkoms in verskillende PDF kykers hê. Daarbenewens is boekmerke en kopnavigasie in sommige toepassings nie beskikbaar in UI nie.

{{% /alert %}}

## Afmonsterneming Van Beelde Om Dokumentgrootte Te Verminder

Aspose.Words bied'n vermoë om beelde af te neem om die uitset PDF grootte te verminder, met behulp van die [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) eienskap. Downsampling is geaktiveer by verstek in die [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) eienskap.

Let daarop dat dit ook moontlik is om'n spesifieke resolusie in die [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) eienskap, of'n resolusie drempel in die [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) eienskap te stel. In die tweede geval, as die beeldresolusie minder is as die drempelwaarde, sal afmonsterneming nie van toepassing wees nie.

Die kode voorbeeld hieronder toon hoe om die resolusie van beelde in'n uitset PDF dokument te verander:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Resolusie word bereken volgens die werklike beeldgrootte op die bladsy.

## Voeg Lettertipes In Adobe PDF Formaat in

Aspose.Words stel jou ook in staat om te beheer hoe lettertipes in die gevolglike PDF dokumente ingebed is. Lettertipes moet in enige Adobe PDF dokument ingebed word om te verseker dat die dokument korrek op enige masjien weergegee kan word (sien meer besonderhede oor lettertipe weergawe in die afdeling [Gebruik TrueType Lettertipes](/words/python-net/using-truetype-fonts/)). By verstek, Aspose.Words insluit'n subset van lettertipes wat in die dokument gebruik word in die gegenereerde PDF. In hierdie geval word slegs die glywe (karakters) wat in die dokument gebruik word, in PDF gestoor.

### Wanneer Om Volledige Lettertipes Te Gebruik en Wanneer Om Subset Te Gebruik

Daar is'n manier om'n opsie vir Aspose.Words te spesifiseer om volledige lettertipes in te bed. Verdere besonderhede, tesame met'n paar voordele en nadele van elke instelling, word in die tabel hieronder beskryf.

| Sluit Skriftipes Af | Voordele | Nadele |
| :- | :- | :- |
| `Full` | Nuttig wanneer jy die resulterende PDF later wil wysig deur die teks by te voeg of te wysig. Alle lettertipes is ingesluit, dus is alle glywe teenwoordig. | Aangesien sommige lettertipes groot is (verskeie megagrepe), kan die inbedding daarvan sonder subset groot uitsetlêers tot gevolg hê. |
| `Subset` | Subset is nuttig as jy die uitset lêer grootte kleiner wil hou. | <p>Die gebruiker kan nie teks volledig byvoeg of wysig met behulp van die subset lettertipe in die uitset PDF dokument nie. Dit is omdat nie alle glywe van die lettertipe teenwoordig is nie.</p><p>As verskeie PDFs met subset lettertipes gestoor word en saamgevoeg word, dan kan die gekombineerde PDF dokument'n lettertipe hê wat baie onnodige substelle bevat.</p> |

### Inbedding Van Volledige Lettertipes in PDF

Die [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) eienskap stel jou in staat om te spesifiseer hoe Aspose.Words lettertipes in'n uitset PDF dokument insluit.

- Om volledige lettertipes in die uitset PDF dokument in te sluit, stel [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) op *True*
- Subset lettertipes wanneer jy stoor na PDF, stel [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) na *False*

Die volgende voorbeeld toon hoe om volle lettertipes in die uitset PDF dokument te insluit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Die volgende voorbeeld demonstreer hoe om Aspose.Words te stel om lettertipes in die uitset PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

U kan die sjabloonlêer vir hierdie voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Hoe Om Die Inbedding Van Kern Lettertipes En Windows Standaard Lettertipes Te Beheer

Kern lettertipes en Windows Standaard lettertipes is die "standaard" stelle lettertipes, wat gewoonlik teenwoordig is op die teiken masjien of verskaf deur die dokument leser, daarom hoef hulle nie in die uitset PDF ingebed te word nie. Deur nie hierdie lettertipes in te bed nie, kan jy die grootte van die weergegee PDF dokumente verminder en tog draagbaarheid handhaaf.

Aspose.Words bied opsies om te kies hoe lettertipes uitgevoer word na PDF. Jy kan kies om kern-en standaard lettertipes in die uitset PDF in te bed of om dit oor te slaan en standaard kern PDF lettertipes of stelsel lettertipes op die teikenmasjien te gebruik. Die gebruik van een van hierdie opsies lei gewoonlik tot beduidende lêergroottevermindering vir PDF dokumente wat deur Aspose.Words gegenereer word.

- Aangesien hierdie opsies onderling uitsluitend is, moet u slegs een op'n slag kies.
- Wanneer gestoor word met PDF/A-1 nakoming, moet alle gebruikte lettertipes ingesluit word met die PDF dokument. Wanneer dit met hierdie nakoming gestoor word, moet die [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) eienskap op *False* gestel word en die [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) eienskap moet op [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all) gestel word.

### Inbed Kern Lettertipes

Die opsie om Kern lettertipes te insluit kan geaktiveer of gedeaktiveer word deur die [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) eienskap te gebruik. Wanneer dit op waar gestel is, is die volgende gewildste "True Type" lettertipes (Basis 14 lettertipes) nie in die uitset PDF dokument ingebed nie:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Hierdie lettertipes word vervang met die ooreenstemmende kerntipe 1 lettertipes, wat deur'n leser verskaf word wanneer die PDF oopgemaak word.

Die onderstaande voorbeeld toon hoe om Aspose.Words te stel om te verhoed dat kern lettertipes ingebed word en laat die leser hulle vervang met PDF Tipe 1 lettertipes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer vir hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Aangesien PDF kykers kern lettertipes op enige ondersteun platform verskaf, is hierdie opsie ook nuttig wanneer groter dokument oordraagbaarheid vereis word. Kern lettertipes kan egter anders lyk as stelsel lettertipes.

{{% alert color="primary" %}}

Hierdie instelling werk slegs vir ANSI (Windows-1252) enkodering van teks. Om'n nie-ANSI teks na PDF te skryf, sal altyd vereis dat die ooreenstemmende lettertipes ingebed word.

{{% /alert %}}

### Inbedding Stelsel Lettertipes

Hierdie opsie kan geaktiveer of gedeaktiveer word deur die [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) te gebruik. Wanneer hierdie eienskap is ingestel op [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), die "Arial" en "Times new Roman" ware tipe lettertipes is nie ingebed in'n PDF dokument. In hierdie geval, die kliënt kyker staatmaak op die lettertipes wat geïnstalleer is op die kliënt se bedryfstelsel. Wanneer die [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) eienskap is ingestel op [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words nie enige lettertipes insluit.

Die onderstaande voorbeeld toon hoe om Aspose.Words te stel om Arial en Times New Roman lettertipes in'n PDF dokument oor te slaan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Hierdie modus is die nuttigste as u u dokumente op dieselfde platform wil sien, en behou die presiese voorkoms van lettertipes in die uitset PDF.

{{% alert color="primary" %}}

Hierdie instelling werk slegs vir ANSI (Windows-1252) enkodering van teks. Om'n nie-ANSI teks te skryf na PDF vereis dat die ooreenstemmende lettertipe ingebed moet word.

{{% /alert %}}
