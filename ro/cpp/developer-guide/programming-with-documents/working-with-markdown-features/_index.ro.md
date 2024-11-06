---
title: Lucrul cu Markdown caracteristici în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu Markdown caracteristici
linktitle: Lucrul cu Markdown caracteristici
description: "Cum se implementează Markdown caracteristici folosind C++. Toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatare directă."
type: docs
weight: 420
url: /ro/cpp/working-with-markdown-features/
---

Acest subiect discută despre modul de implementare a Markdown Caracteristici folosind Aspose.Words. Markdown este o modalitate simplă de a formata text simplu care poate fi ușor convertit în HTML. Aspose.Words acceptă următoarele Markdown Caracteristici:

- Titluri
- Blockquotes
- Reguli orizontale
- Accent îndrăzneț
- Accent cursiv

Implementarea caracteristicilor Markdown urmează în mare parte specificația `CommonMark` în Aspose.Words API și toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatare directă. Ceea ce înseamnă că

- Bold și Italic sunt reprezentate ca `Font.Bold` și `Font.Italic`.
- Titlurile sunt paragrafe cu Heading 1 - Heading 6 stiluri.
- Citatele sunt paragrafe cu "citat" în numele stilului.
- HorizontalRule este un paragraf cu forma HorizontalRule.

{{% alert color="primary" %}}

Există nuanțe de traducere Markdown la modelul de obiect Document Aspose.Words (DOM), descris în articol [Traduceți Markdown în Document Object Model (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document cu accente

Această secțiune vă demonstrează cum să produceți un document markdown cu accente, așa cum este prezentat mai jos:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Document cu regulă orizontală

Această secțiune vă demonstrează cum să produceți un document markdown Cu regulă orizontală, așa cum este prezentat mai jos:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Următorul fragment de cod poate fi folosit pentru a produce documentul markdown dat mai sus.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Citirea unui Document Markdown

Următorul fragment de cod vă arată cum să citiți un document markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Specificați Markdown Opțiuni De Salvare

Aspose.Words API oferă clasa [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) pentru a specifica opțiuni suplimentare în timp ce salvați un document în formatul Markdown.

Următorul exemplu de cod a demonstrat cum să specificați diferite opțiuni de salvare Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Cum să aliniați conținutul în interiorul tabelului în timp ce exportați în Markdown

Aspose.Words API oferă TableContentAlignment enumerare care definește direcțiile de aliniere pentru a alinia conținutul în tabele în timp ce exportă în documentul Markdown. Următorul exemplu de cod demonstrează modul de aliniere a conținutului în interiorul tabelului.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
