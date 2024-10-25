---
title: Skakel'n Dokument om na Markdown in C++
second_title: Aspose.Words vir C++
articleTitle: Skakel'n Dokument om na Markdown
linktitle: Skakel'n Dokument om na Markdown
type: docs
description: "Skakel'n dokument in enige ondersteun vrag formaat na Markdown en omgekeerd met behulp van C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /af/cpp/convert-a-document-to-markdown/
---

Markdown is'n gewilde formaat wat gebruik word om teks op te merk en dit verder om te skakel na HTML, PDF, DOCX, of ander formate. Baie ontwikkelaars kies hierdie formaat vir die skryf van dokumentasie, die voorbereiding van artikels vir publikasie op blogs, die beskrywing van projekte, ensovoorts.

Markdown is so gewild omdat dit maklik is om met hierdie formaat te werk, en dit kan eenvoudig na ander formate omgeskakel word. Om hierdie rede bied Aspose.Words die vermoë om'n dokument in [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) om te skakel na Markdown en omgekeerd – Aspose.Words ondersteun ook die gewildste [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Nou word die funksionaliteit vir die werk met die Markdown - formaat aktief ontwikkel om u meer geleenthede te bied vir gerieflike en gemaklike werk met dokumente.

## Skakel'n Dokument om

Om'n dokument na Markdown om te skakel, moet jy net'n dokument in enige ondersteunde formaat laai of'n nuwe een programmaties skep. Dan moet jy die dokument in Markdown - formaat stoor.

Die volgende kode voorbeeld toon hoe om te omskep DOCX om Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

U kan ook die fisiese gids spesifiseer waarin u beelde wil stoor wanneer u'n dokument na Markdown - formaat uitvoer. By verstek stoor Aspose.Words beelde in dieselfde gids waar die dokumentlêer gestoor is, maar jy kan hierdie gedrag oorskryf deur die [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) eienskap te gebruik.

Die spesifisering van'n gids via **ImagesFolder** is ook nuttig as jy'n dokument in'n stroom stoor en Aspose.Words nie'n gids het om beelde te stoor nie.

As die gespesifiseerde **ImagesFolder** nie bestaan nie, sal dit outomaties geskep word.

Die volgende kode voorbeeld toon hoe om'n gids vir beelde spesifiseer wanneer die stoor van'n dokument na'n stroom:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Spesifiseer Stoorkeuses wanneer U Na MarkdownOmskakel

Aspose.Words bied die vermoë om die [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) klas te gebruik om met gevorderde opsies te werk wanneer'n dokument in Markdown formaat gestoor word. Die meeste eienskappe erf of oorlaai eienskappe wat reeds bestaan binne ander [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Naamruimte klasse. Benewens hulle is'n aantal eienskappe wat spesifiek is vir Markdown formaat ook bygevoeg. Byvoorbeeld, die [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) eienskap om die uitlijning van inhoud in tabelle te beheer, of [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) en [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) om te beheer hoe beelde gestoor word wanneer'n dokument omgeskakel word na Markdown formaat.

## Ondersteunde Markdown Funksies

Aspose.Words ondersteun tans die volgende Markdown funksies, wat meestal volg die `CommonMark` spesifikasie in die Aspose.Words API en word verteenwoordig as toepaslike style of direkte formatering:

* Opskrifte is paragrawe Met Opskrif 1 - Opskrif 6 style
* Blockquotes is paragrawe met" Quote " in die styl naam
* IndentedCode is paragrawe met "IndentedCode " in die styl naam
* FencedCode is paragrawe met "FencedCode " in die styl naam
* InlineCode loop met "InlineCode " in die `Font` styl naam
* Horisontale reëls is paragrawe met die `HorizontalRule` vorm
* Vet klem
* Kursiwiteit klem
* StrikeThrough formatering
* Lyste is genommerde of gepunt paragrawe
* Tabelle word verteenwoordig met die `Table` klas
* Skakels word verteenwoordig as die `FieldHyperlink` klas

Die volgende voorbeeld toon hoe om'n dokument met'n paar style te skep en stoor dit na Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Die resultaat van hierdie kode voorbeeld word hieronder getoon.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Nuttige Wenke

Daar is verskeie nuanses en interessante gevalle, nadat jy geleer het wat jy met Markdown lêers meer buigsaam en gerieflik kan werk. Daar is byvoorbeeld die vermoë om:

* SetextHeading wat jou toelaat om multi-lyn opskrifte in Markdown te skep, terwyl gereelde opskrifte in Markdown slegs enkel-lyn kan wees. SetextHeading is gebaseer op'n" Kop N " styl, en sy vlak kan slegs 1 of 2 wees. As N in" Kop N "groter is as of gelyk is aan 2, dan is die ooreenstemmende SetextHeading gebaseer op" Kop 2", anders op"Kop 1".
* Verskillende merkers vir die eerste vlak van die lys met kolletjies ("-", "+" of "*", die standaard merker is "-".) en verskillende tipes nommering vir geordende lyste ("." of ")", die standaard merker is ".").
