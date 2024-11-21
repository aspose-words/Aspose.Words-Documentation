---
title: Een document omzetten naar Markdown in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document omzetten naar Markdown
linktitle: Een document omzetten naar Markdown
type: docs
description: "Een document omzetten in een ondersteund laadformaat naar Markdown en omgekeerd C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /nl/net/convert-a-document-to-markdown/
timestamp: 2024-07-10-08-10-45
---

Markdown is een populair formaat gebruikt om tekst op te merken en de verdere conversie naar HTML, PDF, DOCX, of andere formaten. Veel ontwikkelaars kiezen dit formaat voor het schrijven van documentatie, het voorbereiden van artikelen voor publicatie op blogs, het beschrijven van projecten, enzovoort.

Markdown is zo populair omdat het gemakkelijk te werken met dit formaat, evenals het kan heel eenvoudig worden omgezet naar andere formaten. Daarom, Aspose.Words biedt de mogelijkheid om een document te converteren in [elk ondersteund laadformaat](https://reference.aspose.com/words/net/aspose.words/loadformat/) tot Markdown en vice versa Aspose.Words ondersteunt ook de meest populaire [formaten opslaan](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Nu de functionaliteit voor het werken met de Markdown format wordt actief ontwikkeld om u meer mogelijkheden voor handige en comfortabele werken met documenten te bieden.

## Een document omzetten

Een document omzetten naar <span notrans="<span notrans=" Markdown"=""></span>,"> je hoeft alleen maar een document in elk ondersteund formaat te laden of een nieuw programma aan te maken. Dan moet je het document opslaan naar Markdown formaat.

De volgende code voorbeeld laat zien hoe DOCX converteren naar Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

U kunt ook de fysieke map opgeven waarin u afbeeldingen wilt opslaan bij het exporteren van een document naar Markdown formaat. Standaard, Aspose.Words slaat afbeeldingen op in dezelfde map waar het documentbestand wordt opgeslagen, maar u kunt dit gedrag met behulp van de [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) eigendom.

Een map specificeren via **ImagesFolder** is ook handig als u een document opslaat in een stroom en Aspose.Words heeft geen map voor het opslaan van afbeeldingen.

Indien de **ImagesFolder** bestaat niet, het wordt automatisch aangemaakt.

Het volgende voorbeeld van code laat zien hoe u een map voor afbeeldingen opgeeft bij het opslaan van een document in een stream:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Opties opslaan bij omzetten naar Markdown

Aspose.Words biedt de mogelijkheid om de [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) klasse om te werken met geavanceerde opties bij het opslaan van een document naar Markdown formaat. De meeste eigenschappen zijn erf- of overbelasting eigenschappen die al bestaan in andere [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Namespace lessen. Daarnaast zijn een aantal eigenschappen die specifiek zijn voor Markdown Het formaat is ook toegevoegd. Zo is het [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) eigenschap om de afstemming van inhoud in tabellen te controleren, of [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) en [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) om te controleren hoe afbeeldingen worden opgeslagen bij het omzetten van een document naar Markdown formaat.

## Ondersteund Markdown Kenmerken

Aspose.Words ondersteunt momenteel het volgende Markdown functies, die meestal volgen de `CommonMark` specificatie in de Aspose.Words API en als passende stijlen of directe opmaak vertegenwoordigd zijn:

* Rubrieken zijn alinea's met rubriek 1 en 6 stijlen
* Blockquotes zijn alinea's met de stijlnaam "Citere"
* IndentedCode zijn paragrafen met "IndentedCode" in de stijlnaam
* Feced Code zijn paragrafen met "FencedCode" in de stijlnaam
* InlineCode worden uitgevoerd met "InlineCode" in de `Font` stijlnaam
* Horizontale regels zijn alinea's met de `HorizontalRule` vorm
* Vet accent
* Cursief accent
* StrikeThrough formatting
* Lijsten zijn genummerd of gebullette paragrafen
* Tabellen zijn vertegenwoordigd met de `Table` klasse
* Links zijn vertegenwoordigd als de `FieldHyperlink` klasse

Het volgende voorbeeld laat zien hoe je een document met een aantal stijlen kunt maken en opslaan naar Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Het resultaat van deze code is hieronder weergegeven.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Nuttige tips

Er zijn verschillende nuances en interessante gevallen, hebben geleerd waarmee je kunt werken met Markdown bestanden flexibeler en gemakkelijker. Er is bijvoorbeeld de mogelijkheid om te gebruiken:

* SetextHeading waarmee u multi-line rubrieken te maken in <span notrans="<span notrans=" Markdown"=""></span>,"> terwijl reguliere rubrieken in Markdown kan alleen één lijn zijn. SetextHeading is gebaseerd op een "Heading N" stijl, en het niveau kan slechts 1 of 2 zijn. Als N in "Heading N" groter is dan of gelijk aan 2, dan is de overeenkomstige SetextHeading gebaseerd op "Heading 2," anders op "Heading 1."
* Verschillende markers voor het eerste niveau van bulleted lists ("-," "+" of "*," de standaard marker is
