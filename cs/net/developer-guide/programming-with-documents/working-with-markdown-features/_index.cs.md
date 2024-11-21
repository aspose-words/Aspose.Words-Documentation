---
title: Práce s Markdown Vlastnosti v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s Markdown Vlastnosti
linktitle: Práce s Markdown Vlastnosti
description: "Jak provádět Markdown funkce používající C#. Všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování."
type: docs
weight: 420
url: /cs/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Toto téma diskutuje o tom, jak provést Markdown funkce používající Aspose.Words. Markdown je jednoduchý způsob, jak formátovat prostý text, který lze snadno převést na HTML. Aspose.Words podporuje následující Markdown vlastnosti:

- Název
- Blockquotes
- Horizontální pravidla
- Odvážný důraz
- Italický důraz

• Markdown implementace funkcí většinou následuje `CommonMark` specifikace v Aspose.Words API a všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování. Což znamená, že

- Tučné a italské jsou zastoupeny jako `Font.Bold` a `Font.Italic`
- Položky jsou odstavce s číslem 1 - styly čísla 6
- Citace jsou odstavce s "Quote" ve stylu názvu
- Horizontální pravidlo je odstavec s horizontálním Rule tvaru.

{{% alert color="primary" %}}

Existují nuance překladu Markdown do Aspose.Words Document Object Model (DOM), popsané v článku [Přeložit Markdown až Document Object Model (DOM)](/words/cs/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Dokument s Emphase

Tato sekce ukazuje, jak vyrábět markdown dokument s emfázemi uvedenými níže:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Následující kód snippet může být použit k výrobě výše uvedené markdown dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Markdown Dokument s čísly

Tato sekce ukazuje, jak vyrábět markdown doklad s níže uvedenými čísly:

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

Následující kód snippet může být použit k výrobě výše uvedené markdown dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Markdown Dokument s blokovými citáty

Tato sekce ukazuje, jak vyrábět markdown dokument s blokovými uvozovkami uvedenými níže:

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

Následující kód snippet může být použit k výrobě výše uvedené markdown dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown Dokument s horizontálním pravidlem

Tato sekce ukazuje, jak vyrábět markdown dokument s horizontálně Pravidlo uvedené níže:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Následující kód snippet může být použit k výrobě výše uvedené markdown dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Čtení a Markdown Dokument

Následující kód snippet ukazuje, jak číst markdown dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Upřesnit Markdown Uložit možnosti

Aspose.Words API poskytuje [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) třída pro upřesnění dalších možností při uložení dokumentu do Markdown formát.

Následující příklad kódu ukázal, jak určit různé Markdown Uložit možnosti.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Jak zarovnat obsah do tabulky při exportu do Markdown

Aspose.Words API poskytuje [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) počet, který definuje směr pro přizpůsobení obsahu v tabulkách při vývozu do Markdown dokument. Následující příklad kódu ukazuje, jak sladit obsah uvnitř tabulky.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
