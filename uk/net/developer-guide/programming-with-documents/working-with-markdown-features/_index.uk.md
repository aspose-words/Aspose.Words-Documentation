---
title: Робота з Markdown Особливості C#
second_title: Aspose.Words для .NET
articleTitle: Робота з Markdown Особливості
linktitle: Робота з Markdown Особливості
description: "Як реалізувати Markdown особливості використання C#й Всі функції представлені як відповідні стилі або прямі форматування."
type: docs
weight: 420
url: /uk/net/working-with-markdown-features/
---

Ця тема обговорює, як реалізувати Markdown особливості використання Aspose.Wordsй Markdown простий спосіб форматувати звичайний текст, який можна легко перетворювати в HTML. Aspose.Words підтримує наступні Markdown особливості:

- Заголовки
- Блокування
- Горизонтальні правила
- Золотий акцент
- Цілий акцент

Про нас Markdown реалізація функції в основному ознайомтесь з `CommonMark` специфікація в Aspose.Words API і всі функції представлені як відповідні стилі або прямі форматування. Що означає

- Золоті та італіки представлені як `Font.Bold` і `Font.Italic`й
- Заголовки є абзаци з заголовуванням 1 - Заголовок 6 стилів
- Котирування є абзаци з "Quote" в назві стилю
- HorizontalRule - абзац з горизонтальною формою.

{{% alert color="primary" %}}

Є нюанси перекриття Markdown до Aspose.Words Document Object Model (Українська)DOM), описаний в статті [Переклад Markdown до Document Object Model (Українська)DOMй](/words/uk/net/translate-markdown-to-document-object-model/)й

{{% /alert %}}

## Markdown Документ з епоху

Цей розділ показує вам, як зробити markdown документ з фазами, як показано нижче:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Цей код може бути використаний для отримання вище markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Markdown Документ з заголовками

Цей розділ показує вам, як зробити markdown документ з заголовками, як показано нижче:

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

Цей код може бути використаний для отримання вище markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Markdown Документ з блоком котирувань

Цей розділ показує вам, як зробити markdown документ з блок-роликами, як показано нижче:

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

Цей код може бути використаний для отримання вище markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown Документ з горизонтальною ручкою

Цей розділ показує вам, як зробити markdown документ з горизонтальним Далі:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Цей код може бути використаний для отримання вище markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Читання Markdown Документація

Наступний код хіппе показує вам, як читати markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Зареєструватися Markdown Зберегти параметри

Aspose.Words API Послуги [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) клас уточнити додаткові параметри при збереженні документа в Markdown Формат.

Приклад наступного коду продемонстрував, як визначити різні Markdown Варіанти збереження.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Як вирівняти вміст всередині таблиці під час експорту Markdown

Aspose.Words API Послуги [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) нумерація, яка визначає напрями вирівнювання вирівнюючого вмісту в таблицях при експорті Markdown документ. Приклад коду показує, як вирівняти вміст всередині таблиці.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
