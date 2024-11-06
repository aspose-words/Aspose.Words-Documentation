---
title: Lucrul cu Markdown caracteristici
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu Markdown caracteristici
linktitle: Lucrul cu Markdown caracteristici
description: "Cum se implementează Markdown caracteristici folosind Python. Toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatare directă."
type: docs
weight: 420
url: /ro/python-net/working-with-markdown-features/
---

Acest subiect discută despre modul de implementare a Markdown Caracteristici folosind Aspose.Words. Markdown este o modalitate simplă de a formata text simplu care poate fi ușor convertit în HTML. Aspose.Words acceptă următoarele Markdown Caracteristici:

- Titluri
- Blockquotes
- Reguli orizontale
- Accent îndrăzneț
- Accent cursiv

Implementarea caracteristicilor Markdown urmează în mare parte specificația `CommonMark` în Aspose.Words API și toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatare directă. Ceea ce înseamnă că

- Bold și Italic sunt reprezentate ca [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) și [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/).
- Titlurile sunt paragrafe cu Heading 1 - Heading 6 stiluri.
- Citatele sunt paragrafe cu "citat" în numele stilului.
- HorizontalRule este un paragraf cu forma HorizontalRule.

{{% alert color="primary" %}}

Există nuanțe de traducere Markdown la modelul de obiect Document Aspose.Words (DOM), descris în articol [Traduceți Markdown în Document Object Model (DOM)](/words/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document cu accente

Această secțiune vă demonstrează cum să produceți un document markdown cu accente, așa cum este prezentat mai jos:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown Document cu titluri

Această secțiune vă demonstrează cum să produceți un document markdown cu titluri, așa cum este prezentat mai jos:

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

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown Document cu ghilimele bloc

Această secțiune vă demonstrează cum să produceți un document markdown cu ghilimele bloc, așa cum este prezentat mai jos:

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

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Document cu regulă orizontală

Această secțiune vă demonstrează cum să produceți un document markdown Cu regulă orizontală, așa cum este prezentat mai jos:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Citirea unui Document Markdown

Următorul fragment de cod vă arată cum să citiți un document markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Specificați Markdown Opțiuni De Salvare

Aspose.Words API oferă clasa [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) pentru a specifica opțiuni suplimentare în timp ce salvați un document în formatul Markdown.

Următorul exemplu de cod a demonstrat cum să specificați diferite opțiuni de salvare Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Cum să aliniați conținutul în interiorul tabelului în timp ce exportați în Markdown

Aspose.Words API oferă [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) enumerare care definește direcțiile de aliniere pentru a alinia conținutul în tabele în timp ce exportă în documentul Markdown. Următorul exemplu de cod demonstrează modul de aliniere a conținutului în interiorul tabelului.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
