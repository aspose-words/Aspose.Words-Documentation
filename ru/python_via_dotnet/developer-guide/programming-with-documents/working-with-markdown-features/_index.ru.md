---
title: Работа с функциями Markdown
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с функциями Markdown
linktitle: Работа с функциями Markdown
description: "Как реализовать функции Markdown с помощью Python. Все функции представлены в виде соответствующих стилей или прямого форматирования."
type: docs
weight: 420
url: /ru/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

В этом разделе обсуждается, как реализовать функции Markdown с помощью Aspose.Words. Markdown - это простой способ форматирования обычного текста, который можно легко преобразовать в HTML. Aspose.Words поддерживает следующие функции Markdown:

- Заголовки
- Цитаты из блоков
- Горизонтальные правила
- Жирный акцент
- Выделено курсивом

Реализация функции Markdown в основном соответствует спецификации `CommonMark` в Aspose.Words API, и все функции представлены в виде соответствующих стилей или прямого форматирования. Это означает, что

- Жирный шрифт и курсив представлены как [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) и [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/).
- Заголовки - это абзацы со стилями Heading 1 - Heading 6.
- Кавычки - это абзацы с надписью "Quote" в названии стиля.
- HorizontalRule - это абзац с формой HorizontalRule.

{{% alert color="primary" %}}

Существуют нюансы перевода Markdown в объектную модель документа Aspose.Words (DOM), описанные в статье [Перевести Markdown в объектную модель документа (DOM)](/words/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ с выделениями

В этом разделе показано, как создать документ markdown с выделениями, как показано ниже:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Следующий фрагмент кода может быть использован для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Документ с горизонтальным правилом

В этом разделе показано, как создать документ markdown с помощью горизонтального правила, как показано ниже:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следующий фрагмент кода может быть использован для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Чтение документа Markdown

В следующем фрагменте кода показано, как читать документ markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Укажите Markdown Параметры сохранения

Aspose.Words API предоставляет класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) для указания дополнительных параметров при сохранении документа в формате Markdown.

В следующем примере кода показано, как указать различные параметры сохранения Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Как выровнять содержимое внутри таблицы при экспорте в Markdown

Aspose.Words API предоставляет перечисление [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/), которое определяет направления выравнивания для выравнивания содержимого в таблицах при экспорте в документ Markdown. Следующий пример кода демонстрирует, как выровнять содержимое внутри таблицы.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
