---
title: Een document omzetten naar Markdown in Java
second_title: Aspose.Words voor Java
articleTitle: Een document omzetten naar Markdown
linktitle: Een document omzetten naar Markdown
type: docs
description: "Een document omzetten in een ondersteund laadformaat naar Markdown en omgekeerd Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /nl/java/convert-a-document-to-markdown/
---

Markdown is een populair formaat gebruikt om tekst op te merken en het is verder converteren naar HTML, PDF, DOCX, of andere formaten. Veel ontwikkelaars kiezen dit formaat voor het schrijven van documentatie, het voorbereiden van artikelen voor publicatie op blogs, het beschrijven van projecten, enzovoort.

Markdown is zo populair omdat het gemakkelijk te werken met dit formaat, evenals het kan heel eenvoudig worden omgezet naar andere formaten. Daarom, Aspose.Words biedt de mogelijkheid om een document te converteren in [Elk ondersteund laadformaat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) tot Markdown en vice versa Aspose.Words ondersteunt ook de meest populaire [formaten opslaan](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Nu de functionaliteit voor het werken met de Markdown formaat wordt actief ontwikkeld om u te voorzien van meer mogelijkheden voor handige en comfortabele werken met documenten.

## Een document omzetten naar Markdown

Een document omzetten naar <span notrans="<span notrans=" Markdown"=""></span>,"> je hoeft alleen maar een document te laden in een ondersteund formaat of een nieuwe programmatisch aan te maken. Dan moet je het document opslaan naar Markdown formaat.

Het volgende voorbeeld van code laat zien hoe je DOCX kunt converteren naar Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Opties opslaan bij omzetten naar Markdown

Aspose.Words biedt de mogelijkheid om de [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasse om te werken met geavanceerde opties bij het opslaan van een document naar Markdown formaat. Naast andere erf- of overbelastingseigenschappen zijn een aantal eigenschappen specifiek voor Markdown Het formaat is ook toegevoegd. Zo is er bijvoorbeeld de [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) eigenschap om de afstemming van inhoud in tabellen te controleren, of [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) en [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) om te controleren hoe afbeeldingen worden opgeslagen bij het omzetten van een document naar Markdown formaat.

## Ondersteund Markdown Kenmerken

Aspose.Words ondersteunt momenteel het volgende Markdown functies, die meestal volgen de `CommonMark` specificatie in de Aspose.Words API en zijn vertegenwoordigd als passende stijlen of directe opmaak:

* Rubrieken zijn alinea's met rubriek 1
* Blockquotes zijn alinea's met de stijlnaam
* IndentedCode zijn paragrafen met "IndentedCode" in de stijlnaam
* Feced Code zijn alinea's met "FencedCode" in de stijlnaam
* InlineCode worden uitgevoerd met "InlineCode" in de `Font` stijlnaam
* Horizontale regels zijn paragrafen met de `HorizontalRule` vorm
* Vet accent
* Cursief accent
* StrikeThrough formatting
* Lijsten zijn genummerd of gebullette paragrafen
* Tabellen zijn vertegenwoordigd met de `Table` klasse
* Links zijn vertegenwoordigd als de `FieldHyperlink` klasse

Het volgende voorbeeld laat zien hoe een document met een aantal stijlen te maken en opslaan naar Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Het resultaat van deze code is hieronder weergegeven.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Nuttige tips

Er zijn verschillende nuances en interessante gevallen, hebben geleerd waarmee u kunt werken met Markdown bestanden flexibeler en gemakkelijker. Er is bijvoorbeeld de mogelijkheid om te gebruiken:

* SetextHeading waarmee u multi-line rubrieken te maken in <span notrans="<span notrans=" Markdown"=""></span>,"> terwijl de reguliere rubrieken in Markdown kan alleen enkele lijn zijn. SetextHeading is gebaseerd op een "Heading N" stijl, en het niveau kan slechts 1 of 2 zijn. Als N in "Heading N" groter is dan of gelijk is aan 2, dan is de overeenkomstige SetextHeading gebaseerd op "Heading 2," anders op "Heading 1."
* Verschillende markers voor het eerste niveau van bulleted lists ("-," "+" of "*," de standaard marker is
