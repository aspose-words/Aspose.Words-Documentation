---
title: Praca z Markdown Cechy w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Markdown Cechy
linktitle: Praca z Markdown Cechy
description: "Jak wdrożyć Markdown funkcje Java. Wszystkie funkcje są reprezentowane jako odpowiadające style lub bezpośrednie formatowanie."
type: docs
weight: 420
url: /pl/java/working-with-markdown-features/
---

Ten temat omawia jak wdrożyć Markdown funkcje Aspose.Words. Markdown to prosty sposób na formatowanie zwykłego tekstu, który można łatwo przekonwertować na HTML. Aspose.Words wspiera następujące Markdown funkcje:

- Nagłówki
- Blokady
- Zasady horyzontalne
- Odważny nacisk
- Włosy nacisk

W Markdown implementacja funkcji następuje głównie po `CommonMark` specyfikacja w Aspose.Words API i wszystkie funkcje są reprezentowane jako odpowiednie style lub bezpośrednie formatowanie. Co oznacza, że

- Śmiały i włoski są reprezentowane jako `Font.Bold` oraz `Font.Italic`
- Nagłówki są akapitami z nagłówkiem 1 - Pozycja 6 style
- Cytaty są akapitami z "Cytaty" w nazwie stylu
- HorizontalRule jest akapitem z `HorizontalRule` kształt.

{{% alert color="primary" %}}

Są niuanse tłumaczenia Markdown do Aspose.Words Document Object Model (DOM), opisane w artykule [Przełęcz Markdown do Document Object Model (DOM)](/words/pl/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Dokument z zapisami

Ta sekcja pokazuje, jak produkować markdown dokument z zapisami, jak podano poniżej:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Poniższy kod Snippet może być używany do produkcji equi- markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Dokument z nagłówkami

Ta sekcja pokazuje, jak produkować markdown dokument zawierający następujące pozycje:

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

Poniższy kod może być użyty do uzyskania powyższego markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Dokument dotyczący kwotowań blokowych

Ta sekcja pokazuje, jak produkować markdown dokument zawierający kwotowania blokowe podane poniżej:

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

Poniższy kod może być użyty do uzyskania powyższego markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokument z zasadą horyzontalną

Ta sekcja pokazuje, jak produkować markdown dokument z poziomą Zasada podana poniżej:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Poniższy kod Snippet może być używany do produkcji equi- markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Czytanie Markdown Dokument

Poniższy kod Snippet pokazuje jak przeczytać markdown dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Określić Markdown Zapisz opcje

Aspose.Words API zapewnia [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasy do określenia dodatkowych opcji podczas zapisywania dokumentu do Markdown format.

Poniższy przykład kodu pokazał jak określić różne Markdown Zapisz opcje.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Jak dopasować zawartość wewnątrz tabeli podczas eksportu do Markdown

Aspose.Words API zapewnia [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) wyliczenie, które określa kierunki dostosowania, aby dostosować zawartość w tabelach podczas wywozu do Markdown dokument. Poniższy przykład kodu pokazuje jak ustawić zawartość wewnątrz tabeli.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
