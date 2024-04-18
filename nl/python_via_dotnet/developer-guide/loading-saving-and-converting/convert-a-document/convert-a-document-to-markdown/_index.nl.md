---
title: Een document omzetten naar Markdown
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document omzetten naar Markdown
linktitle: Een document omzetten naar Markdown
type: docs
description: "Een document omzetten in een ondersteund laadformaat naar Markdown en omgekeerd Python."
keywords: how to convert a document to markdown python
weight: 40
url: /nl/python-net/convert-a-document-to-markdown/
---

Markdown is een populair formaat gebruikt om tekst op te merken en de verdere conversie naar HTML, PDF, DOCX, of andere formaten. Veel ontwikkelaars kiezen dit formaat voor het schrijven van documentatie, het voorbereiden van artikelen voor publicatie op blogs, het beschrijven van projecten, enzovoort.

Markdown is zo populair omdat het gemakkelijk te werken met dit formaat, evenals het kan heel eenvoudig worden omgezet naar andere formaten. Daarom, Aspose.Words biedt de mogelijkheid om een document te converteren in [elk ondersteund laadformaat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) tot Markdown en vice versa Aspose.Words ondersteunt ook de meest populaire [formaten opslaan](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Nu de functionaliteit voor het werken met de Markdown format wordt actief ontwikkeld om u meer mogelijkheden voor handige en comfortabele werken met documenten te bieden.

## Een document omzetten

Een document omzetten naar <span notrans="<span notrans=" Markdown"=""></span>,"> je hoeft alleen maar een document in elk ondersteund formaat te laden of een nieuw programma aan te maken. Dan moet je het document opslaan naar Markdown formaat.

De volgende code voorbeeld laat zien hoe DOCX converteren naar Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

U kunt ook de fysieke map opgeven waarin u afbeeldingen wilt opslaan bij het exporteren van een document naar Markdown formaat. Standaard, Aspose.Words slaat afbeeldingen op in dezelfde map waar het documentbestand wordt opgeslagen, maar u kunt dit gedrag met behulp van de [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) eigendom.

Een map specificeren via [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) is ook handig als u een document opslaat in een stroom en Aspose.Words heeft geen map voor het opslaan van afbeeldingen.

Indien de [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) bestaat niet, het wordt automatisch aangemaakt.

Het volgende voorbeeld van code laat zien hoe u een map voor afbeeldingen opgeeft bij het opslaan van een document in een stream:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Opties opslaan bij omzetten naar Markdown

Aspose.Words biedt de mogelijkheid om de [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) klasse om te werken met geavanceerde opties bij het opslaan van een document naar Markdown formaat. De meeste eigenschappen zijn erf- of overbelasting eigenschappen die al bestaan in andere [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) lessen. Daarnaast zijn een aantal eigenschappen die specifiek zijn voor Markdown Het formaat is ook toegevoegd. Zo is het [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) eigenschap om de afstemming van inhoud in tabellen te controleren, of [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) om te controleren waar afbeeldingen worden opgeslagen bij het omzetten van een document naar Markdown formaat.

## Ondersteund Markdown Kenmerken

Aspose.Words ondersteunt momenteel het volgende Markdown functies, die meestal volgen de `CommonMark` specificatie in de Aspose.Words API en als passende stijlen of directe opmaak vertegenwoordigd zijn:

* Rubrieken zijn alinea's met rubriek 1 en 6 stijlen
* Blockquotes zijn paragrafen met "Citere" in de stijlnaam
* IndentedCode zijn paragrafen met "IndentedCode" in de stijlnaam
* Feced Code zijn paragrafen met "FencedCode" in de stijlnaam
* InlineCode worden uitgevoerd met "InlineCode" in de `Font` stijlnaam
* Horizontale regels zijn alinea's met de `HorizontalRule` vorm
* Vet accent
* Cursief accent
* StrikeThrough formatting
* Lijsten zijn genummerd of gebullette paragrafen
* Tabellen zijn vertegenwoordigd met de [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) klasse
* Links zijn vertegenwoordigd als de [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) klasse

Het volgende voorbeeld laat zien hoe je een document met een aantal stijlen kunt maken en opslaan naar Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Het resultaat van deze code is hieronder weergegeven.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Nuttige tips

Er zijn verschillende nuances en interessante gevallen, hebben geleerd waarmee je kunt werken met Markdown bestanden flexibeler en gemakkelijker. Er is bijvoorbeeld de mogelijkheid om te gebruiken:

* SetextHeading waarmee u multi-line rubrieken te maken in <span notrans="<span notrans=" Markdown"=""></span>,"> terwijl reguliere rubrieken in Markdown kan alleen één lijn zijn. SetextHeading is gebaseerd op een "Heading N" stijl, en het niveau kan slechts 1 of 2 zijn. Als N in "Heading N" groter is dan of gelijk aan 2, dan is de overeenkomstige SetextHeading gebaseerd op "Heading 2," anders op "Heading 1."
* Verschillende markers voor het eerste niveau van bulleted lists ("-," "+" of "*," de standaard marker is
