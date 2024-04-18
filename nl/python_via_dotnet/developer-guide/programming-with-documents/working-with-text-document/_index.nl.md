---
title: Werken met tekstdocument
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met tekstdocument
linktitle: Werken met tekstdocument
description: "Werk met een tekstdocument en wijzig de objecten met behulp van Python."
type: docs
weight: 430
url: /nl/python-net/working-with-text-document/
---

In dit artikel zullen we weten welke opties nuttig kunnen zijn voor het werken met een tekstdocument via Aspose.Words. Let op: dit is niet een volledige lijst van beschikbare opties, maar slechts een voorbeeld van werken met sommige van hen.

## Bidirectionele toevoegen Merken

U kunt [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) eigenschap om aan te geven of bidirectionele markeringen moeten worden toegevoegd voordat elke BiDi wordt uitgevoerd bij het exporteren in platte tekstformaat. Aspose.Words plaatst Unicode Karakter 'RIGHT-TO-LEFT MARK' (U+200F) voor elke bidirectionele [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) in de tekst. Deze optie komt overeen met "Bidirectionele markeringen toevoegen" optie in MS Word File Conversie dialoog wanneer u exporteren naar een platte tekst formaat. Merk op dat het verschijnt in dialoog alleen als een van de Arabische of Hebreeuwse bewerken talen worden toegevoegd in MS Word.

Het volgende voorbeeld van code laat zien hoe te gebruiken [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) eigendom. De standaardwaarde van deze eigenschap is `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Lijstitems herkennen tijdens laden van TXT

Aspose.Words kan lijstitem van een tekstbestand importeren als lijstnummers of platte tekst in het documentobjectmodel. De [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) eigenschap geeft aan hoe genummerde lijst items worden herkend wanneer een document wordt geïmporteerd uit platte tekst formaat:

* Als deze optie ingesteld is `True`, whitespaces worden ook gebruikt als lijstnummergrenzen: lijstherkenningsalgoritme voor Arabische stijlnummers (1., 1.1.2.) gebruikt zowel witruimtes als stip (".") symbolen.
* Als deze optie ingesteld is `False`, lijsten van herkenningsalgoritmen detecteert lijst paragrafen, wanneer lijstnummers eindigen met ofwel punt, rechter beugel of kogelsymbolen (zoals "•," "*," "-" of "o").

Het volgende voorbeeld van code laat zien hoe deze eigenschap te gebruiken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Tijdens het laden van TXT lood- en trailruimtes hanteren

Tijdens het laden van TXT-bestand kunt u de manier van omgaan met toonaangevende en trailing spaties controleren. De openingsruimten kunnen worden gesnoeid, bewaard of omgezet in inspringruimtes en kunnen worden gesnoeid of bewaard.

Het volgende voorbeeld van code laat zien hoe te trimmen toonaangevende en trailing spaties tijdens het importeren van TXT-bestand:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Document detecteren Tekstrichting

Aspose.Words levert [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) eigenschap in [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) klasse om de tekstrichting (RTL / LTR) in het document te detecteren. Deze eigenschap stelt of ontvangt tekstbeschrijvingen in [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) Lijst. De standaardwaarde is links naar rechts.

Het volgende voorbeeld van code laat zien hoe tekstrichting van het document te detecteren tijdens het importeren van TXT-bestand:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Header en Voettekst exporteren in uitvoerTXT

Als u header en footer wilt exporteren in uitvoer TXT-document, kunt u [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) eigendom. Deze eigenschap specificeert de manier waarop headers en voetteksten worden geëxporteerd naar het platte tekstformaat.

Het volgende voorbeeld van code laat zien hoe je headers en footers naar platte tekst formaat exporteren:

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

## Lijst-inspringing exporteren in uitvoer-TXT

Aspose.Words ingevoerd [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) klasse die aangeeft hoe lijstniveaus worden ingespringd tijdens het exporteren naar een platte tekstformaat. Tijdens het werken met [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), de [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) eigenschap wordt gegeven om het teken te specificeren dat moet worden gebruikt voor het inspringen van lijstniveaus en het tellen van het aantal tekens dat moet worden gebruikt als inspringing per één lijstniveau. De standaardwaarde voor karaktereigenschap is '\0' wat aangeeft dat er geen inspringing is. Voor count property is de standaard waarde 0 wat betekent dat er geen inspringing is.

### Gebruik van tabteken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met tabtekens:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Spatieteken gebruiken

Het volgende voorbeeld van code laat zien hoe u lijstniveaus kunt exporteren met behulp van spatietekens:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

