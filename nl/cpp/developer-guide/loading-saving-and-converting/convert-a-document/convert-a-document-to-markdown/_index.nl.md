---
title: Een Document converteren naar Markdown in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document converteren naar Markdown
linktitle: Een Document converteren naar Markdown
type: docs
description: "Converteer een document in elke ondersteunde laadindeling naar Markdown en vice versa met C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /nl/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown is een populaire indeling die wordt gebruikt om tekst op te merken en verder te converteren naar HTML, PDF, DOCX, of andere formaten. Veel ontwikkelaars kiezen voor dit formaat voor het schrijven van documentatie, het voorbereiden van artikelen voor publicatie op blogs, het beschrijven van projecten, enzovoort.

Markdown is zo populair omdat het gemakkelijk is om met dit formaat te werken, en het kan heel eenvoudig worden geconverteerd naar andere formaten. Om deze reden biedt Aspose.Words de mogelijkheid om een document in [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) naar Markdown te converteren en vice versa – Aspose.Words ondersteunt ook de meest populaire [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Nu wordt de functionaliteit voor het werken met de Markdown - indeling actief ontwikkeld om u meer mogelijkheden te bieden voor handig en comfortabel werken met documenten.

## Een Document converteren

Om een document naar Markdown te converteren, hoeft u alleen maar een document in een ondersteunde indeling te laden of een nieuwe programmatisch aan te maken. Vervolgens moet u het document opslaan in de indeling Markdown.

Het volgende codevoorbeeld laat zien hoe DOCX te converteren naar Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

U kunt ook de fysieke map opgeven waarin u afbeeldingen wilt opslaan wanneer u een document naar Markdown - indeling exporteert. Standaard slaat Aspose.Words afbeeldingen op in dezelfde map waar het documentbestand is opgeslagen, maar u kunt dit gedrag overschrijven met de eigenschap [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Een map opgeven via **ImagesFolder** is ook handig als u een document opslaat in een stream en Aspose.Words geen map heeft voor het opslaan van afbeeldingen.

Als de opgegeven **ImagesFolder** niet bestaat, wordt deze automatisch gemaakt.

Het volgende codevoorbeeld laat zien hoe u een map voor afbeeldingen kunt opgeven bij het opslaan van een document in een stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Bewaaropties opgeven bij het converteren naar Markdown

Aspose.Words biedt de mogelijkheid om de [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) - klasse te gebruiken om met geavanceerde opties te werken bij het opslaan van een document in Markdown - indeling. De meeste eigenschappen erven of overbelasten eigenschappen die al bestaan binnen andere [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Naamruimteklassen. Daarnaast zijn er ook een aantal eigenschappen toegevoegd die specifiek zijn voor Markdown formaat. Bijvoorbeeld de eigenschap [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) om de uitlijning van inhoud in tabellen te bepalen, of [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) en [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) om te bepalen hoe afbeeldingen worden opgeslagen bij het converteren van een document naar de indeling Markdown.

## Ondersteunde Markdown Functies

Aspose.Words ondersteunt momenteel de volgende Markdown - functies, die meestal de `CommonMark` - specificatie in de Aspose.Words API volgen en worden weergegeven als geschikte stijlen of directe opmaak:

* Koppen zijn alinea ' s met Heading 1 – Heading 6 stijlen
* Blockquotes zijn paragrafen met "Quote" in de stijlnaam
* IndentedCode zijn alinea ' s met "IndentedCode" in de stijlnaam
* FencedCode zijn alinea ' s met "FencedCode" in de stijlnaam
* InlineCode zijn runs met "InlineCode" in de `Font` stijlnaam
* Horizontale regels zijn alinea ' s met de vorm `HorizontalRule`
* Gedurfde nadruk
* Cursieve nadruk
* StrikeThrough opmaak
* Lijsten zijn genummerde of opsommingstekens
* Tabellen worden weergegeven met de klasse `Table`
* Koppelingen worden weergegeven als de klasse `FieldHyperlink`

Het volgende voorbeeld laat zien hoe u een document met een aantal stijlen kunt maken en opslaan in Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Het resultaat van dit codevoorbeeld is hieronder weergegeven.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Nuttige Tips

Er zijn verschillende nuances en interessante gevallen, nadat je hebt geleerd dat je flexibeler en gemakkelijker met Markdown - bestanden kunt werken. Er is bijvoorbeeld de mogelijkheid om:

* SetextHeading waarmee u koppen met meerdere regels kunt maken in Markdown, terwijl gewone koppen in Markdown slechts één regel kunnen zijn. SetextHeading is gebaseerd op een "Heading N" stijl, en het niveau kan slechts 1 of 2 zijn. Als N in" kop N "groter is dan of gelijk is aan 2, dan is de overeenkomstige SetextHeading gebaseerd op" Heading 2", anders op"Heading 1".
* Verschillende markeringen voor het eerste niveau van lijsten met opsommingstekens ("-", "+" of "*", is de standaardmarkering "-".) en verschillende soorten nummering voor geordende lijsten ("." of ")", de standaardmarkering is ".").
