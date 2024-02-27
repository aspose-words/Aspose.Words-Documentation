---
title: Работа с Markdown функциями
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Markdown функциями
linktitle: Работа с Markdown функциями
description: "Как реализовать функцию Markdown с помощью Python. Все функции представлены в виде соответствующих стилей или прямого форматирования."
type: docs
weight: 420
url: /ru/python-net/working-with-markdown-features/
---

В этом разделе обсуждается, как реализовать функции Markdown с использованием Aspose.Words. Markdown — это простой способ форматирования обычного текста, который можно легко преобразовать в HTML. Aspose.Words поддерживает следующие функции Markdown:

- Заголовки
- Блоковые кавычки
- Горизонтальные правила
- Смелый акцент
- курсив

Реализация функции Markdown в основном соответствует спецификации `CommonMark` в Aspose.Words API, и все функции представлены в виде соответствующих стилей или прямого форматирования. Которое значит что

- Жирный и курсив обозначены как [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) и [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
– Заголовки – это абзацы со стилями "Заголовок 1" – "Заголовок 6"
— Кавычки — это абзацы со словом "Цитата" в названии стиля
- HorizontalRule — абзац с формой HorizontalRule.

{{% alert color="primary" %}}

Есть нюансы перевода Markdown на Aspose.Words Document Object Model (DOM), описанные в статье [Перевести Markdown на Document Object Model (DOM)](/words/ru/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ с акцентами

В этом разделе показано, как создать документ markdown с акцентами, как показано ниже:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown Документ с заголовками

В этом разделе показано, как создать документ markdown с заголовками, как показано ниже:

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

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

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

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Документ с горизонтальной линейкой

В этом разделе показано, как создать документ markdown с использованием горизонтального правила, как показано ниже:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Чтение документа Markdown

В следующем фрагменте кода показано, как читать документ markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Укажите Markdown параметры сохранения

Aspose.Words API предоставляет класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) для указания дополнительных параметров при сохранении документа в формате Markdown.

В следующем примере кода показано, как указать различные параметры сохранения Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Как выровнять содержимое внутри таблицы при экспорте в Markdown

Aspose.Words API предоставляет перечисление [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/), которое определяет направления выравнивания для выравнивания содержимого таблиц при экспорте в документ Markdown. В следующем примере кода показано, как выровнять содержимое внутри таблицы.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
