---
title: Skakel'n Dokument om na Markdown
second_title: Aspose.Words vir Python via .NET
articleTitle: Skakel'n Dokument om na Markdown
linktitle: Skakel'n Dokument om na Markdown
type: docs
description: "Skakel'n dokument in enige ondersteun vrag formaat na Markdown en omgekeerd met behulp van Python."
keywords: how to convert a document to markdown python
weight: 40
url: /af/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown is'n gewilde formaat wat gebruik word om teks op te merk en dit verder om te skakel na HTML, PDF, DOCX, of ander formate. Baie ontwikkelaars kies hierdie formaat vir die skryf van dokumentasie, die voorbereiding van artikels vir publikasie op blogs, die beskrywing van projekte, ensovoorts.

Markdown is so gewild omdat dit maklik is om met hierdie formaat te werk, en dit kan eenvoudig na ander formate omgeskakel word. Om hierdie rede bied Aspose.Words die vermoë om'n dokument in [any supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) om te skakel na Markdown en omgekeerd – Aspose.Words ondersteun ook die gewildste [save formats](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Nou word die funksionaliteit vir die werk met die Markdown - formaat aktief ontwikkel om u meer geleenthede te bied vir gerieflike en gemaklike werk met dokumente.

## Skakel'n Dokument om

Om'n dokument na Markdown om te skakel, moet jy net'n dokument in enige ondersteunde formaat laai of'n nuwe een programmaties skep. Dan moet jy die dokument in Markdown - formaat stoor.

Die volgende kode voorbeeld toon hoe om te omskep DOCX om Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

U kan ook die fisiese gids spesifiseer waarin u beelde wil stoor wanneer u'n dokument na Markdown - formaat uitvoer. By verstek stoor Aspose.Words beelde in dieselfde gids waar die dokumentlêer gestoor is, maar jy kan hierdie gedrag oorskryf deur die [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) eienskap te gebruik.

Die spesifisering van'n gids via [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) is ook nuttig as jy'n dokument in'n stroom stoor en Aspose.Words nie'n gids het om beelde te stoor nie.

As die gespesifiseerde [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) nie bestaan nie, sal dit outomaties geskep word.

Die volgende kode voorbeeld toon hoe om'n gids vir beelde spesifiseer wanneer die stoor van'n dokument na'n stroom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Spesifiseer Stoorkeuses wanneer U Na MarkdownOmskakel

Aspose.Words bied die vermoë om die [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) klas te gebruik om met gevorderde opsies te werk wanneer'n dokument in Markdown formaat gestoor word. Die meeste eienskappe erf of oorlaai eienskappe wat reeds bestaan binne ander [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) klasse. Benewens hulle is'n aantal eienskappe wat spesifiek is vir Markdown formaat ook bygevoeg. Byvoorbeeld, die [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) eienskap om die uitlijning van inhoud in tabelle te beheer, of [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) om te beheer waar beelde gestoor word wanneer'n dokument omgeskakel word na Markdown formaat.

## Ondersteunde Markdown Funksies

Aspose.Words ondersteun tans die volgende Markdown funksies, wat meestal volg die `CommonMark` spesifikasie in die Aspose.Words API en word verteenwoordig as toepaslike style of direkte formatering:

* Opskrifte is paragrawe met Heading 1 - Heading 6 style
* Blockquotes is paragrawe met" Quote " in die styl naam
* IndentedCode is paragrawe met "IndentedCode " in die styl naam
* FencedCode is paragrawe met "FencedCode " in die styl naam
* InlineCode loop met "InlineCode " in die `Font` styl naam
* Horisontale reëls is paragrawe met die `HorizontalRule` vorm
* Vet klem
* Kursiwiteit klem
* StrikeThrough formatering
* Lyste is genommerde of gepunt paragrawe
* Tabelle word verteenwoordig met die [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) klas
* Skakels word verteenwoordig as die [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) klas

Die volgende voorbeeld toon hoe om'n dokument met'n paar style te skep en stoor dit na Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Die resultaat van hierdie kode voorbeeld word hieronder getoon.

![markdown-example-aspose-words-net](markdown-example.png)

## Nuttige Wenke

Daar is verskeie nuanses en interessante gevalle, nadat jy geleer het wat jy met Markdown lêers meer buigsaam en gerieflik kan werk. Daar is byvoorbeeld die vermoë om:

* SetextHeading wat jou toelaat om multi-lyn opskrifte in Markdown te skep, terwyl gereelde opskrifte in Markdown slegs enkel-lyn kan wees. SetextHeading is gebaseer op'n" Kop N " styl, en sy vlak kan slegs 1 of 2 wees. As N in" Kop N "groter is as of gelyk is aan 2, dan is die ooreenstemmende SetextHeading gebaseer op" Heading 2", anders op"Heading 1".
* Verskillende merkers vir die eerste vlak van die lys met kolletjies ("-", "+" of "*", die standaard merker is "-".) en verskillende tipes nommering vir geordende lyste ("." of ")", die standaard merker is ".").
