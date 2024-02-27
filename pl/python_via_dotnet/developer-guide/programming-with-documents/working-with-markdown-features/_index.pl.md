---
title: Praca z funkcjami Markdown
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z funkcjami Markdown
linktitle: Praca z funkcjami Markdown
description: "Jak zaimplementować funkcje Markdown przy użyciu Python. Wszystkie funkcje są reprezentowane jako odpowiadające im style lub bezpośrednie formatowanie."
type: docs
weight: 420
url: /pl/python-net/working-with-markdown-features/
---

W tym temacie omówiono sposób implementowania funkcji Markdown przy użyciu formatu Aspose.Words. Markdown to prosty sposób formatowania zwykłego tekstu, który można łatwo przekonwertować na format HTML. Aspose.Words obsługuje następujące funkcje Markdown:

- Nagłówki
- Cytaty blokowe
- Zasady horyzontalne
- Odważne podkreślenie
- Podkreślenie kursywą

Implementacja funkcji Markdown jest w większości zgodna ze specyfikacją `CommonMark` w formacie Aspose.Words API, a wszystkie funkcje są reprezentowane jako odpowiadające im style lub formatowanie bezpośrednie. Co oznacza że

- Pogrubienie i kursywa są reprezentowane jako [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) i [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- Nagłówki to akapity ze stylami Nagłówek 1 - Nagłówek 6
- Cytaty to akapity zawierające słowo "Cytat" w nazwie stylu
- HorizontalRule to akapit o kształcie HorizontalRule.

{{% alert color="primary" %}}

Istnieją niuanse tłumaczenia Markdown na Aspose.Words Document Object Model (DOM), opisane w artykule [Przetłumacz Markdown na Document Object Model (DOM)](/words/pl/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Dokument Markdown z wyróżnieniami

W tej sekcji pokazano, jak utworzyć dokument markdown z wyróżnieniami podanymi poniżej:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Dokument Markdown z linią poziomą

W tej sekcji pokazano, jak utworzyć dokument markdown z linią poziomą, jak podano poniżej:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Poniższy fragment kodu można wykorzystać do utworzenia powyższego dokumentu markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Czytanie dokumentu Markdown

Poniższy fragment kodu pokazuje, jak czytać dokument markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Określ opcje zapisywania Markdown

Aspose.Words API udostępnia klasę [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) umożliwiającą określenie dodatkowych opcji podczas zapisywania dokumentu w formacie Markdown.

Poniższy przykład kodu zademonstrował, jak określić różne opcje zapisywania Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Jak wyrównać zawartość tabeli podczas eksportowania do formatu Markdown

Aspose.Words API udostępnia wyliczenie [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/), które definiuje kierunki wyrównania w celu wyrównania zawartości tabel podczas eksportu do dokumentu Markdown. Poniższy przykład kodu demonstruje, jak wyrównać zawartość wewnątrz tabeli.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
