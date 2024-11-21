---
title: Praca z funkcjami Markdown w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z funkcjami Markdown
linktitle: Praca z funkcjami Markdown
description: "Jak zaimplementować funkcje Markdown przy użyciu C#. Wszystkie funkcje są reprezentowane jako odpowiadające im style lub bezpośrednie formatowanie."
type: docs
weight: 420
url: /pl/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

W tym temacie omówiono sposób implementowania funkcji Markdown przy użyciu formatu Aspose.Words. Markdown to prosty sposób formatowania zwykłego tekstu, który można łatwo przekonwertować na format HTML. Aspose.Words obsługuje następujące funkcje Markdown:

- Nagłówki
- Cytaty blokowe
- Zasady horyzontalne
- Odważne podkreślenie
- Podkreślenie kursywą

Implementacja funkcji Markdown jest w większości zgodna ze specyfikacją `CommonMark` w formacie Aspose.Words API, a wszystkie funkcje są reprezentowane jako odpowiadające im style lub formatowanie bezpośrednie. Co oznacza że

- Pogrubienie i kursywa są reprezentowane jako `Font.Bold` i `Font.Italic`
- Nagłówki to akapity ze stylami Nagłówek 1 - Nagłówek 6
- Cytaty to akapity zawierające słowo "Cytat" w nazwie stylu
- HorizontalRule to akapit o kształcie HorizontalRule.

{{% alert color="primary" %}}

Istnieją niuanse tłumaczenia Markdown na Aspose.Words Document Object Model (DOM), opisane w artykule [Przetłumacz Markdown na Document Object Model (DOM)](/words/pl/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Dokument Markdown z wyróżnieniami

W tej sekcji pokazano, jak utworzyć dokument markdown z wyróżnieniami podanymi poniżej:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Dokument Markdown z nagłówkami

W tej sekcji pokazano, jak utworzyć dokument markdown z nagłówkami podanymi poniżej:

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

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Dokument Markdown z cytatami blokowymi

W tej sekcji pokazano, jak utworzyć dokument markdown z cudzysłowami blokowymi, jak podano poniżej:

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

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Dokument Markdown z linią poziomą

W tej sekcji pokazano, jak utworzyć dokument markdown z linią poziomą, jak podano poniżej:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Czytanie dokumentu Markdown

Poniższy fragment kodu pokazuje, jak czytać dokument markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Określ opcje zapisywania Markdown

Aspose.Words API udostępnia klasę [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) umożliwiającą określenie dodatkowych opcji podczas zapisywania dokumentu w formacie Markdown.

Poniższy przykład kodu zademonstrował, jak określić różne opcje zapisywania Markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Jak wyrównać zawartość tabeli podczas eksportowania do formatu Markdown

Aspose.Words API udostępnia wyliczenie [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/), które definiuje kierunki wyrównania w celu wyrównania zawartości tabel podczas eksportu do dokumentu Markdown. Poniższy przykład kodu demonstruje, jak wyrównać zawartość wewnątrz tabeli.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
