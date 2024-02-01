---
title: Работа с Markdown функциями в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с функциями Markdown
linktitle: Работа с функциями Markdown
description: "Как реализовать функции Markdown с использованием C#. Все функции представлены в виде соответствующих стилей или прямого форматирования."
type: docs
weight: 420
url: /ru/net/working-with-markdown-features/
---

В этом разделе обсуждается, как реализовать функции Markdown с помощью Aspose.Words. Markdown — это простой способ форматирования обычного текста, который можно легко преобразовать в HTML. Aspose.Words поддерживает следующие функции Markdown:

- Заголовки
- Блоковые кавычки
- Горизонтальные правила
- Смелый акцент
- курсив

Реализация функции Markdown в основном соответствует спецификации `CommonMark` в Aspose.Words API, и все функции представлены в виде соответствующих стилей или прямого форматирования. Которое значит что

- Жирный и курсив обозначен как `Font.Bold` и `Font.Italic`
– Заголовки – это абзацы со стилями "Заголовок 1" – "Заголовок 6"
— Кавычки — это абзацы со словом "Цитата" в названии стиля
- HorizontalRule — абзац с формой HorizontalRule.

{{% alert color="primary" %}}

Есть нюансы перевода Markdown на Aspose.Words Document Object Model (DOM), описанные в статье [Перевести Markdown на Document Object Model (DOM)](/words/ru/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ с акцентами

В этом разделе показано, как создать документ markdown с акцентами, как показано ниже:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown Документ с горизонтальной линейкой

В этом разделе показано, как создать документ markdown с использованием горизонтального правила, как показано ниже:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следующий фрагмент кода можно использовать для создания приведенного выше документа markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Чтение документа Markdown

В следующем фрагменте кода показано, как читать документ markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Укажите Markdown параметров сохранения

Aspose.Words API предоставляет класс [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) для указания дополнительных параметров при сохранении документа в формате Markdown.

В следующем примере кода показано, как указать различные параметры сохранения Markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Как выровнять содержимое внутри таблицы при экспорте в Markdown

Aspose.Words API предоставляет перечисление [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/), которое определяет направления выравнивания для выравнивания содержимого таблиц при экспорте в документ Markdown. В следующем примере кода показано, как выровнять содержимое внутри таблицы.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
