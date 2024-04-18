---
title: Работать с Markdown Особенности
second_title: Aspose.Words для Python via .NET
articleTitle: Работать с Markdown Особенности
linktitle: Работать с Markdown Особенности
description: "Как реализовать Markdown особенности использования Python. Все функции представлены в виде соответствующих стилей или прямого форматирования."
type: docs
weight: 420
url: /ru/python-net/working-with-markdown-features/
---

Эта тема посвящена тому, как реализовать Markdown особенности использования Aspose.Words. Markdown Это простой способ форматирования простого текста, который может быть легко преобразован в HTML. Aspose.Words поддерживает следующие Markdown особенности:

- Заголовки
- Блоккоты
- Горизонтальные правила
- Смелый акцент
- Итальянский акцент

The Markdown Реализация функции в основном следует за `CommonMark` спецификация в Aspose.Words API Все функции представлены в виде соответствующих стилей или прямого форматирования. Что означает, что

- Смелый и итальянский представлены как [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) и [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- Заголовки - это абзацы с заголовками 1 - заголовки 6 стилей
- Цитаты - это абзацы с "Цитированием" в названии стиля
- Горизонтальное правило - это абзац с формой Горизонтального правила.

{{% alert color="primary" %}}

Есть нюансы перевода Markdown к Aspose.Words Document Object Model ()DOM), описанные в статье [Переводить Markdown то Document Object Model ()DOM)](/words/ru/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ с акцентами

В этом разделе показано, как создать markdown документ с акцентами, как указано ниже:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Следующий фрагмент кода может быть использован для получения приведенного выше markdown Документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown Документ с заголовками

В этом разделе показано, как создать markdown документ с заголовками, приведенными ниже:

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

Следующий фрагмент кода может быть использован для получения приведенного выше markdown Документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown Документ с цитатами из блока

В этом разделе показано, как создать markdown Документ с цитатами блоков, как указано ниже:

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

Следующий фрагмент кода может быть использован для получения приведенного выше markdown Документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Документ с горизонтальным правилом

В этом разделе показано, как создать markdown Документ с горизонтальным Правило, приведенное ниже:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следующий фрагмент кода может быть использован для получения приведенного выше markdown Документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Чтение a Markdown Документация

Следующий фрагмент кода показывает, как читать markdown Документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Указывать Markdown Сохранить опции

Aspose.Words API обеспечивает [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) класс, чтобы указать дополнительные опции при сохранении документа в Markdown Формат.

Следующий пример кода показал, как указать различные Markdown Сохранить варианты.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Как выровнять контент внутри таблицы при экспорте Markdown

Aspose.Words API обеспечивает [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) Перечисление, которое определяет направления выравнивания для выравнивания содержимого в таблицах при экспорте в Markdown Документ. Следующий пример кода показывает, как выровнять контент внутри таблицы.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
