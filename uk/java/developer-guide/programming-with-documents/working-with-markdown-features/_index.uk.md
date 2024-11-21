---
title: Робота з Markdown Особливості Java
second_title: Aspose.Words для Java
articleTitle: Робота з Markdown Особливості
linktitle: Робота з Markdown Особливості
description: "Як реалізувати Markdown особливості використання Javaй Всі функції представлені як відповідні стилі або прямі форматування."
type: docs
weight: 420
url: /uk/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
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
- HorizontalRule - абзац з `HorizontalRule` форма.

{{% alert color="primary" %}}

Є нюанси перекриття Markdown до Aspose.Words Document Object Model (Українська)DOM), описаний в статті [Переклад Markdown до Document Object Model (Українська)DOMй](/words/uk/java/translate-markdown-to-document-object-model/)й

{{% /alert %}}


## Markdown Документ з еполями

Цей розділ показує вам, як зробити markdown документ з фазами, як показано нижче:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Для отримання вищевказаного коду можна використовувати наступний код markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


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

Для отримання вищезазначеного коду можна використовувати наступний код markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

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

Для отримання вищезазначеного коду можна використовувати наступний код markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Документ з горизонтальною ручкою

Цей розділ показує вам, як зробити markdown документ з горизонтальним Далі:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Для отримання вищевказаного коду можна використовувати наступний код markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Читання Markdown Документація

Наступний код хіппе показує вам, як читати markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Зареєструватися Markdown Зберегти параметри

Aspose.Words API Послуги [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) клас уточнити додаткові параметри при збереженні документа в Markdown Формат.

Приклад коду показує, як визначити різні Markdown Варіанти збереження.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Як вирівняти вміст всередині таблиці під час експорту Markdown

Aspose.Words API Послуги [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) нумерація, яка визначає напрями вирівнювання в таблицях під час експорту Markdown документ. Приклад коду показує, як вирівняти вміст всередині таблиці.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
