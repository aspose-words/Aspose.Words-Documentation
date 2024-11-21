---
title: Práce s Markdown Funkce v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s Markdown Vlastnosti
linktitle: Práce s Markdown Vlastnosti
description: "Jak provádět Markdown funkce používající Java. Všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování."
type: docs
weight: 420
url: /cs/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Toto téma diskutuje o tom, jak provést Markdown funkce používající Aspose.Words. Markdown je jednoduchý způsob, jak formátovat prostý text, který lze snadno převést na HTML. Aspose.Words podporuje následující Markdown vlastnosti:

- Název
- Blockquotes
- Horizontální pravidla
- Odvážný důraz
- Italický důraz

The Markdown implementace funkcí většinou následuje `CommonMark` specifikace v Aspose.Words API a všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování. Což znamená, že

- Tučné a italské jsou zastoupeny jako `Font.Bold` a `Font.Italic`
- Položky jsou odstavce s okruhem 1 - Okruh 6 stylů
- Citáty jsou odstavce s "Quote" ve stylu názvu
- Horizontální pravidlo je odstavec s `HorizontalRule` tvar.

{{% alert color="primary" %}}

Jsou zde nuance překladu Markdown do Aspose.Words Document Object Model (DOM), popsané v článku [Přeložit Markdown až Document Object Model (DOM)](/words/cs/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Dokument s Emphase

Tato sekce ukazuje, jak vyrábět markdown dokument s emfázemi uvedenými níže:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Následující kód štěrbina může být použit k výrobě výše uvedený markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


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

Následující kód snippet lze použít k výrobě výše uvedené markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

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

Následující kód snippet lze použít k výrobě výše uvedené markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokument s horizontálním pravidlem

Tato sekce ukazuje, jak vyrábět markdown dokument s horizontálně Pravidlo uvedené níže:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Následující kód štěrbina může být použit k výrobě výše uvedený markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Čtení a Markdown Dokument

Následující kód ti ukáže, jak číst markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Upřesnit Markdown Uložit možnosti

Aspose.Words API poskytuje [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) třída pro upřesnění dalších možností při uložení dokumentu do Markdown formát.

Následující příklad kódu ukázal, jak určit různé Markdown Uložit možnosti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Jak upravit obsah uvnitř tabulky při exportu do Markdown

Aspose.Words API poskytuje [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) vyjmenovávání, které definuje směr přizpůsobení obsahu v tabulkách při vývozu do Markdown dokument. Následující příklad kódu ukazuje, jak sladit obsah uvnitř tabulky.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
