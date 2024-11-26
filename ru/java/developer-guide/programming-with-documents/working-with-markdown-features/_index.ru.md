---
title: Работа с Markdown функциями в Java
second_title: Aspose.Words для Java
articleTitle: Работа с функциями Markdown
linktitle: Работа с функциями Markdown
description: "Как реализовать функции Markdown с помощью Java. Все функции представлены в виде соответствующих стилей или прямого форматирования."
type: docs
weight: 420
url: /ru/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

В этом разделе обсуждается, как реализовать функции Markdown с помощью Aspose.Words. Markdown - это простой способ форматирования обычного текста, который можно легко преобразовать в формат HTML. Aspose.Words поддерживает следующие функции Markdown:

- Заголовки
- Цитаты из блоков
- Горизонтальные правила
- Жирный акцент
- Выделено курсивом

Реализация функции Markdown в основном соответствует спецификации `CommonMark` в Aspose.Words API, и все функции представлены в виде соответствующих стилей или прямого форматирования. Это означает, что

- Жирный шрифт и курсив представлены как `Font.Bold` и `Font.Italic`.
- Заголовки - это абзацы со стилями Heading 1 - Heading 6.
- Кавычки - это абзацы с надписью "Quote" в названии стиля.
- HorizontalRule - это абзац с формой `HorizontalRule`.

{{% alert color="primary" %}}

Существуют нюансы перевода Markdown в объектную модель документа Aspose.Words (DOM), описанные в статье [Перевести Markdown в объектную модель документа (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Документ с выделениями

В этом разделе показано, как создать документ markdown с выделениями, как показано ниже:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Следующий фрагмент кода может быть использован для создания указанного выше документа markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Документ с заголовками

В этом разделе показано, как создать документ markdown с заголовками, приведенными ниже:

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

Следующий фрагмент кода может быть использован для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Документ с блочными кавычками

В этом разделе показано, как создать документ markdown с блочными кавычками, как показано ниже:

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

Следующий фрагмент кода может быть использован для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Документ с горизонтальным правилом

В этом разделе показано, как создать документ markdown с помощью горизонтального правила, как показано ниже:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следующий фрагмент кода может быть использован для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Чтение документа Markdown

В следующем фрагменте кода показано, как читать документ markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Укажите Markdown Параметры сохранения

Aspose.Words API предоставляет класс [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) для указания дополнительных параметров при сохранении документа в формате Markdown.

В следующем примере кода показано, как указать различные параметры сохранения Markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Как выровнять содержимое внутри таблицы при экспорте в Markdown

Aspose.Words API предоставляет перечисление [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/), которое определяет направления выравнивания для выравнивания содержимого в таблицах при экспорте в документ Markdown. Следующий пример кода демонстрирует, как выровнять содержимое внутри таблицы.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
