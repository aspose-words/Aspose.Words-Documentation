---
title: Práce s funkcemi Markdown v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s funkcemi Markdown
linktitle: Práce s funkcemi Markdown
description: "Jak implementovat funkce Markdown pomocí C++. Všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování."
type: docs
weight: 420
url: /cs/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Toto téma popisuje, jak implementovat funkce Markdown Pomocí Aspose.Words. Markdown je jednoduchý způsob formátování prostého textu, který lze snadno převést na HTML. Aspose.Words podporuje následující funkce Markdown:

- Sloupec
- Citace
- Horizontální pravidla
- Odvážný důraz
- Kurzíva důraz

Implementace funkce Markdown se většinou řídí specifikací `CommonMark` v Aspose.Words API a všechny funkce jsou reprezentovány jako odpovídající styly nebo přímé formátování. Což znamená, že

- Tučné a kurzíva jsou reprezentovány jako `Font.Bold` a `Font.Italic`.
- Nadpisy jsou odstavce se styly Heading 1 - Heading 6.
- Citace jsou odstavce s "citací" v názvu stylu.
- HorizontalRule je odstavec s tvarem HorizontalRule.

{{% alert color="primary" %}}

Existují nuance překladu Markdown do modelu objektu dokumentu Aspose.Words (DOM), popsaného v článku [Translate Markdown to Document Object Model (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown dokument s důrazem

Tato část ukazuje, jak vytvořit markdown dokument s důrazem, jak je uvedeno níže:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Následující fragment kódu lze použít k vytvoření výše uvedeného markdown dokumentu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown dokument s nadpisy

Tato část ukazuje, jak vytvořit markdown dokument s nadpisy, jak je uvedeno níže:

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

Následující fragment kódu lze použít k vytvoření výše uvedeného markdown dokumentu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown dokument s blokovými uvozovkami

Tato část ukazuje, jak vytvořit markdown dokument s blokovými uvozovkami, jak je uvedeno níže:

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

Následující fragment kódu lze použít k vytvoření výše uvedeného markdown dokumentu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown dokument s horizontálním pravidlem

Tato část ukazuje, jak vytvořit markdown dokument s horizontálním pravidlem, jak je uvedeno níže:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Následující fragment kódu lze použít k vytvoření výše uvedeného markdown dokumentu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Čtení Markdown dokumentu

Následující úryvek kódu ukazuje, jak číst dokument markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Zadejte Markdown Možnosti Uložení

Aspose.Words API poskytuje třídu [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) pro zadání dalších možností při ukládání dokumentu do formátu Markdown.

Následující příklad kódu ukázal, jak zadat různé možnosti uložení Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Jak zarovnat obsah uvnitř tabulky při exportu do Markdown

Aspose.Words API poskytuje TableContentAlignment výčet, který definuje směry zarovnání pro zarovnání obsahu v tabulkách při exportu do dokumentu Markdown. Následující příklad kódu ukazuje, jak zarovnat obsah uvnitř tabulky.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
