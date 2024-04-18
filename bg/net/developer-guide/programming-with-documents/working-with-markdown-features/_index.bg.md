---
title: Работа с Markdown Характеристики в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с Markdown Характеристики
linktitle: Работа с Markdown Характеристики
description: "Как да се прилага Markdown функции, използващи C#. Всички функции са представени като съответстващи стилове или директно форматиране."
type: docs
weight: 420
url: /bg/net/working-with-markdown-features/
---

Тази тема обсъжда как да се приложи Markdown функции, използващи Aspose.Words. Markdown е прост начин за форматиране на обикновен текст, който лесно може да бъде преобразуван в HTML. Aspose.Words поддържа следното: Markdown особености:

- Курсове
- Blockquotes
- Хоризонтални правила
- Смел акцент
- Italic акцент

На Markdown Изпълнението на функцията най-вече следва `CommonMark` спецификация в Aspose.Words API и всички функции са представени като съответстващи стилове или директно форматиране. Което означава, че

- Смели и Италич са представени като `Font.Bold` както и `Font.Italic`
- Заглавието са параграфи с функция 1 - Заглавие 6 стилове
- Цитатите са параграфи с "Quote" в името на стила
- Хоризонталното правило е параграф с форма на хоризонтално правило.

{{% alert color="primary" %}}

Има нюанси на превода Markdown до Aspose.Words Document Object Model (DOM), описани в статията [Превод Markdown до Document Object Model (DOM)](/words/bg/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ с емфази

Този раздел ви показва как да произвеждате markdown документ с емфази, както е посочено по-долу:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

За производството на гореспоменатото може да се използва следният код: markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Markdown Документ с заглавия

Този раздел ви показва как да произвеждате markdown документ с заглавия, както е посочено по-долу:

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown Документ с хоризонтално правило

Този раздел ви показва как да произвеждате markdown документ с хоризонтала Правило, както е посочено по-долу:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

За производството на гореспоменатото може да се използва следният код: markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Четене Markdown Документ

Следният код отливка ви показва как да четете markdown документ.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Посочете Markdown Запис на настройките

Aspose.Words API осигурява [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) клас за определяне на допълнителни опции при запис на документ в Markdown формат.

Следният пример за код показва как да се определят различни Markdown Запис на опции.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Как да се подравнява съдържанието вътре в таблицата, докато се изнася в Markdown

Aspose.Words API осигурява [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) изброяване, което определя указанията за привеждане в съответствие, за да се приведе съдържанието в таблици, докато се изнася в Markdown документ. Следният пример за код показва как да се приведе съдържанието в таблицата.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
