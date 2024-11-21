---
title: Работа с Markdown Характеристики в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с Markdown Характеристики
linktitle: Работа с Markdown Характеристики
description: "Как да се прилага Markdown функции, използващи Java. Всички функции са представени като съответстващи стилове или директно форматиране."
type: docs
weight: 420
url: /bg/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Тази тема обсъжда как да се приложи Markdown функции, използващи Aspose.Words. Markdown е прост начин за форматиране на обикновен текст, който лесно може да бъде превърнат в HTML. Aspose.Words поддържа следното: Markdown особености:

- Курсове
- Blockquotes
- Хоризонтални правила
- Смел акцент
- Italic акцент

На Markdown Изпълнението на функцията най-вече следва `CommonMark` спецификация в Aspose.Words API и всички функции са представени като съответстващи стилове или директно форматиране. Което означава, че

- Смели и Италич са представени като `Font.Bold` както и `Font.Italic`
- Заглавието са параграфи с функция 1 - Заглавие 6 стилове
- Цитатите са параграфи с "Quote" в стила име
- Хоризонтален правилник е параграф с `HorizontalRule` форма.

{{% alert color="primary" %}}

Има нюанси на превода Markdown до Aspose.Words Document Object Model (DOM), описани в статията [Превод Markdown до Document Object Model (DOM)](/words/bg/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Документ с емфази

Този раздел ви показва как да произвеждате markdown документ с емфази, както е посочено по-долу:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

За производството на гореспоменатия може да се използва следният код: markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Документ с заглавия

Този раздел ви показва как да произвеждате markdown документ с заглавия, посочени по-долу:

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

За производството на гореспоменатото може да се използва следният код: markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Документ с блокирани цитати

Този раздел ви показва как да произвеждате markdown документ с блок кавички, както е посочено по-долу:

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

За производството на гореспоменатото може да се използва следният код: markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Документ с хоризонтално правило

Този раздел ви показва как да произвеждате markdown документ с хоризонтала Правило, както е посочено по-долу:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

За производството на гореспоменатия може да се използва следният код: markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Четене Markdown Документ

Следният код откъс ви показва как да четете markdown документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Посочете Markdown Запис на настройките

Aspose.Words API осигурява [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) клас за определяне на допълнителни опции при запис на документ в Markdown форматиране.

Следният пример за код показва как да се определят различни Markdown Запис на опции.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Как да подравнявате съдържанието в таблицата, докато изнасяте Markdown

Aspose.Words API осигурява [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) изброяване, което определя указанията за привеждане в съответствие, за да се приведе съдържанието в таблици, докато се изнася в Markdown документ. Следният пример за код показва как да се приведе съдържанието в таблицата.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
