---
title: Werk met Markdown Funksies
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk met Markdown Funksies
linktitle: Werk met Markdown Funksies
description: "Hoe om Markdown funksies te implementeer met behulp van Python. Al die funksies word verteenwoordig as ooreenstemmende style of direkte formatering."
type: docs
weight: 420
url: /af/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Hierdie onderwerp bespreek hoe om Markdown funksies te implementeer met behulp van Aspose.Words. Markdown is'n eenvoudige manier om gewone teks te formateer wat maklik omgeskakel kan word na HTML. Aspose.Words ondersteun die volgende Markdown kenmerke:

- Opskrifte
- Blokkwotasies
- Horisontale reëls
- Vet klem
- Kursiwiteit klem

Die Markdown kenmerk implementering volg meestal die `CommonMark` spesifikasie in Aspose.Words API en al die kenmerke word verteenwoordig as ooreenstemmende style of direkte formatering. Wat beteken dat

- Vet en Kursief word voorgestel as [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) en [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/).
- Opskrifte is paragrawe met Heading 1 - Heading 6 style.
- Kwotasies is paragrawe met "Kwotasie" in die stylnaam.
- HorizontalRule is'n paragraaf met HorizontalRule vorm.

{{% alert color="primary" %}}

Daar is nuanses van die vertaling van Markdown na die Aspose.Words Dokument Voorwerp Model (DOM), beskryf in die artikel [Vertaal Markdown Na Dokument Object Model (DOM)](/words/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Dokument Met Klem

Hierdie afdeling demonstreer jou hoe om'n markdown dokument te produseer met klem soos hieronder gegee:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Die volgende kode uittreksel kan gebruik word om die bogenoemde markdown dokument te produseer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown Dokument met Opskrifte

Hierdie afdeling demonstreer jou hoe om'n markdown dokument met opskrifte soos hieronder gegee te produseer:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Die volgende kode uittreksel kan gebruik word om die bogenoemde markdown dokument te produseer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown Dokument met Blokaanhalings

Hierdie afdeling demonstreer jou hoe om'n markdown dokument met blok aanhalings soos hieronder gegee te produseer:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Die volgende kode uittreksel kan gebruik word om die bogenoemde markdown dokument te produseer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Dokument Met Horisontale Reël

Hierdie afdeling demonstreer jou hoe om'n markdown dokument met Horisontale Reël soos hieronder gegee te produseer:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Die volgende kode uittreksel kan gebruik word om die bogenoemde markdown dokument te produseer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Lees'n Markdown Dokument

Die volgende kode uittreksel wys jou hoe om'n markdown dokument te lees.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Spesifiseer Markdown Stoor Keuses

Aspose.Words API bied [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) klas om addisionele opsies te spesifiseer terwyl'n dokument in die Markdown formaat gestoor word.

Die volgende kode voorbeeld het getoon hoe om verskeie Markdown stoor opsies spesifiseer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Hoe Om Inhoud Binne Die Tabel In Lyn te bring terwyl jy in MarkdownUitvoer

Aspose.Words API verskaf [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) opsomming wat die uitlijning rigtings definieer om inhoud in tabelle in lyn te bring terwyl uitvoer in die Markdown dokument. Die volgende kode voorbeeld demonstreer hoe om inhoud binne die tabel in lyn te bring.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
