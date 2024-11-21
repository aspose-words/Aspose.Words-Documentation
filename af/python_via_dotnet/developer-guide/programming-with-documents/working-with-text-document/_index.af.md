---
title: Werk Met Teksdokument
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Teksdokument
linktitle: Werk Met Teksdokument
description: "Werk met'n teksdokument en verander sy voorwerpe met Python."
type: docs
weight: 430
url: /af/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In hierdie artikel sal ons leer watter opsies nuttig kan wees vir die werk met'n teksdokument via Aspose.Words. Let asseblief daarop dat dit nie'n volledige lys van beskikbare opsies is nie, maar slegs'n voorbeeld van werk met sommige van hulle.

## Voeg Tweerigtingmerke By

U kan [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) eienskap gebruik om te spesifiseer of u tweerigtingmerke voor elke BiDi-loop moet byvoeg wanneer u in gewone teksformaat uitvoer. Aspose.Words voeg Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200f) voor elke tweerigting [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) in die teks. Hierdie opsie stem ooreen met die opsie" voeg tweerigtingmerke By " in MS word-Lêeromskakelingsdialoog wanneer u na'n Gewone Teksformaat uitvoer. Let daarop dat dit slegs in dialoog verskyn as enige van die arabiese of hebreeuse redigeringstale in MS Woord bygevoeg word.

Die volgende kode voorbeeld toon hoe om [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) eiendom te gebruik. Die standaard waarde van hierdie eiendom is `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Herken Lys Items Tydens Laai TXT

Aspose.Words kan lys item van'n teks lêer invoer as lys nommers of gewone teks in sy dokument voorwerp model. Die [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) eienskap kan spesifiseer hoe genommerde lys items herken word wanneer'n dokument ingevoer word uit gewone teks formaat:

* As hierdie opsie op `True` gestel is, word witruimtes ook gebruik as lysnommer-afbakeners: lysherkenningsalgoritme vir arabiese stylnommering (1., 1.1.2.) gebruik beide witruimtes en punt (".") simbole.
* As hierdie opsie is ingestel op `False`, lys erkenning algoritme ontdek lys paragrawe, wanneer lys nommers eindig met een van die punte, regter hakies of koeël simbole (soos "•", "*", "-" of "o").

Die volgende kode voorbeeld toon hoe om hierdie eiendom te gebruik:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Hanteer Voorste en Agterste spasies Tydens Laai TXT

U kan die manier van hantering van voorste en agterste spasies tydens die laai van TXT - lêer beheer. Die voorste ruimtes kan gesny, bewaar of omgeskakel word na inkeping en agterste ruimtes kan gesny of bewaar word.

Die volgende kode voorbeeld toon hoe om voorste en agterste spasies te sny terwyl die invoer van TXT lêer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Ontdek Dokument Teks Rigting

Aspose.Words bied [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) eienskap in [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) klas om die teks rigting (RTL / LTR) in die dokument te bespeur. Hierdie eienskap stel of kry dokument teks aanwysings wat in [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) opsomming. Die verstekwaarde is van links na regs.

Die volgende kode voorbeeld toon hoe om teks rigting van die dokument te bespeur terwyl die invoer van TXT lêer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Voer Uit Kop En Voetskrif in Uitset TXT

As jy koptekst en voetskrif in uitset TXT dokument wil uitvoer, kan jy [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) eienskap gebruik. Hierdie eienskap spesifiseer die manier waarop koptekste en voetskrifte na die gewone teks formaat uitgevoer word.

Die volgende kode voorbeeld toon hoe om koptekste en voetskrifte uit te voer na gewone teks formaat:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Uitvoer Lys Inkeping in Afvoer TXT

Aspose.Words ingestel [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) klas wat toelaat dat spesifiseer hoe lys vlakke is ingekap terwyl uitvoer na'n gewone teks formaat. Terwyl jy met [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) werk, word die [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) eienskap verskaf om die karakter te spesifiseer wat gebruik moet word vir die indentering van lysvlakke en tel wat spesifiseer hoeveel karakters as indentering per een lysvlak gebruik moet word. Die standaard waarde vir karakter eienskap is '\0' wat aandui dat daar geen inkeping. Vir tel eiendom, die verstek waarde is 0 wat beteken geen inkeping.

### Gebruik Oortjie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van tab karakters:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Gebruik Spasie Karakter

Die volgende kode voorbeeld toon hoe om lys vlakke uitvoer met behulp van spasie karakters:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

