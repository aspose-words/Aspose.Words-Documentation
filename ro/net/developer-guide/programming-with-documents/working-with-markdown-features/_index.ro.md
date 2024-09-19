---
title: Lucrul cu Markdown Caracteristici în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu caracteristici Markdown
linktitle: Lucrul cu caracteristici Markdown
description: "Cum să implementezi caracteristici Markdown folosind C#. Toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatare directă."
type: docs
weight: 420
url: /ro/net/working-with-markdown-features/
---

Acest subiect discută despre cum să implementezi Markdown caracteristici folosind Aspose.Words. Markdown este un mod simplu de a formata text simplu care poate fi convertit ușor în HTML. Aspose.Words suportă următoarele Markdown caracteristici:

- Titluri
- Blochează citatele
- Regulile orizontale
- Accentuat îngroșat
- Emfaza cursivă

Caracteristica Markdown implementare urmareste aproape specificația `CommonMark` în Aspose.Words API și toate caracteristicile sunt reprezentate ca stiluri corespunzătoare sau formatarea directă. Ceea ce înseamnă că

- Bold și italic sunt reprezentate ca `Font.Bold` și `Font.Italic`
- Titlurile sunt paragrafe cu stiluri Heading 1 - Heading 6
- Citatele sunt paragrafe cu "Citat" în numele stilului
HorizontalRule este un paragraf cu forma de linie orizontală.

{{% alert color="primary" %}}

Există nuanțe de traducere Markdown în Aspose.Words Document Object Model ( DOM ), descrisă în articolul [Translate Markdown to Document Object Model (DOM)](/words/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document cu Emfaze

Această secțiune vă demonstrează cum să creați un markdown document cu accenturi așa cum se arată mai jos:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Fragmentul de cod următor poate fi folosit pentru a genera documentul de mai sus markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Markdown Document cu anteturi

Această secţiune vă demonstrează cum să produceţi un markdown document cu titluri după cum urmează:

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

Urmântul fragment de cod poate fi utilizat pentru a produce documentul mai sus dat markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Markdown Document cu citate

Această secțiune demonstrează cum să produci un markdown document cu blocuri de citat după cum urmează:

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

Fragmentul de cod următor poate fi utilizat pentru a genera documentul de mai sus markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown document cu regulă orizontală

Această secțiune vă demonstrează cum să produceți un markdown document cu Regulă orizontală după cum urmează:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Fragmentul de cod următor poate fi utilizat pentru a produce documentul dat mai sus markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Citirea unui document Markdown

Fragmentul de cod următor arată cum să citești un markdown document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Specificați Markdown Opțiuni de Salvare

Aspose.Words API oferă [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) clasă pentru a specifica opțiuni suplimentare în timp ce se salvează un document în formatul Markdown.

Exemplul de cod de mai jos a demonstrat cum să se specifice diferite opțiuni Markdown de salvare.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Cum să aliniezi conținutul din interiorul tabelului în timp ce exportați în Markdown

Aspose.Words API furnizează [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) enumerare care definește direcțiile de aliniere pentru alinierea conținutului în tabele în timp ce exportă în documentul Markdown. Exemplul de cod următor demonstrează cum să aliniezi conținutul din interiorul unei tabele.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
