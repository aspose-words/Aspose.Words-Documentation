---
title: Praca z funkcjami Markdown W C++
second_title: Aspose.Words dla C++
articleTitle: Praca z funkcjami Markdown
linktitle: Praca z funkcjami Markdown
description: "Jak zaimplementować funkcje Markdown za pomocą C++. Wszystkie funkcje są reprezentowane jako odpowiednie style lub bezpośrednie formatowanie."
type: docs
weight: 420
url: /pl/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

W tym temacie omówiono, jak zaimplementować funkcje Markdown za pomocą Aspose.Words. Markdown to prosty sposób na sformatowanie zwykłego tekstu, który można łatwo przekonwertować na HTML. Aspose.Words obsługuje następujące funkcje Markdown:

- Nagłówki
- Blockquotes
- Zasady horyzontalne
- Odważne podkreślenie
- Akcent kursywą

Implementacja funkcji Markdown jest w większości zgodna ze specyfikacją `CommonMark` w Aspose.Words API, a wszystkie funkcje są reprezentowane jako odpowiednie style lub bezpośrednie formatowanie. Co oznacza, że

- Pogrubienie i kursywa są reprezentowane jako `Font.Bold` i `Font.Italic`.
- Nagłówki to akapity ze stylami Heading 1 - Heading 6.
- Cytaty to akapity z "cytatem" w nazwie stylu.
- HorizontalRule to akapit o kształcie HorizontalRule.

{{% alert color="primary" %}}

Istnieją niuanse tłumaczenia Markdown na model obiektowy dokumentu Aspose.Words (DOM), opisany w artykule [Translate Markdown to Document Object Model (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown dokument z akcentami

Ta sekcja pokazuje, jak utworzyć dokument markdown z akcentami, jak podano poniżej:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Poniższy fragment kodu może być użyty do wytworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown dokument z nagłówkami

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

Poniższy fragment kodu może być użyty do wytworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown dokument z cudzysłowami blokowymi

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

Poniższy fragment kodu może być użyty do wytworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown dokument z regułą poziomą

Ta sekcja pokazuje, jak utworzyć dokument markdown z regułą poziomą, jak podano poniżej:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Poniższy fragment kodu może być użyty do wytworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Czytanie dokumentu Markdown

Poniższy fragment kodu pokazuje, jak odczytać dokument markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Określ Markdown Opcje Zapisu

Aspose.Words API zapewnia [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) klasy, aby określić dodatkowe opcje podczas zapisywania dokumentu w formacie Markdown.

Poniższy przykład kodu pokazał, jak określić różne opcje zapisu Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Jak wyrównać zawartość wewnątrz tabeli podczas eksportowania do Markdown

Aspose.Words API zapewnia TableContentAlignment wyliczenie, które definiuje Kierunki wyrównania w celu wyrównania zawartości w tabelach podczas eksportowania do dokumentu Markdown. Poniższy przykład kodu pokazuje, jak wyrównać zawartość wewnątrz tabeli.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
