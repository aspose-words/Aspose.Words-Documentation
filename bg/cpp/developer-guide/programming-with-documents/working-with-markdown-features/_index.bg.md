---
title: Работа с Markdown функции в C++
second_title: Aspose.Words за C++
articleTitle: Работа с Markdown функции
linktitle: Работа с Markdown функции
description: "Как да въведете Markdown функции, като използвате C++. Всички функции са представени като съответстващи стилове или директно форматиране."
type: docs
weight: 420
url: /bg/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Тази тема обсъжда как да се прилагат Markdown функции, използвайки Aspose.Words. Markdown е прост начин за форматиране на обикновен текст, който лесно може да бъде преобразуван в HTML. Aspose.Words поддържа следните Markdown функции:

- Заглавия
- Блоккуотс
- Хоризонтални правила
- Удебелен акцент
- Курсив акцент

Markdown имплементацията на функции следва предимно спецификацията `CommonMark` в Aspose.Words API и всички функции са представени като съответстващи стилове или директно форматиране. Което означава, че

- Получер и курсив са представени като `Font.Bold` и `Font.Italic`.
- Заглавията са параграфи с Heading 1 - Heading 6 стилове.
- Цитатите са параграфи с "цитат" в името на стила.
- HorizontalRule е абзац с форма HorizontalRule.

{{% alert color="primary" %}}

Има нюанси на превода Markdown на Aspose.Words документ обектен модел (DOM), описан в статията [Преведи Markdown в модел на обект за документ (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown документ с акценти

Този раздел ви показва как да изготвите markdown документ с акценти, както е дадено по-долу.:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Следният кодов фрагмент може да се използва за производството на посочения по-горе markdown документ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown документ с заглавия

Този раздел ви показва как да съставите markdown документ с заглавията, дадени по-долу:

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

Следният кодов фрагмент може да се използва за производството на посочения по-горе markdown документ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown документ с блок кавички

Този раздел ви показва как да създадете документ markdown с блокови кавички, както е дадено по-долу:

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

Следният кодов фрагмент може да се използва за производството на посочения по-горе markdown документ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown документ с хоризонтално правило

Този раздел ви показва как да създадете документ markdown С хоризонтално правило, както е дадено по-долу.:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Следният кодов фрагмент може да се използва за производството на посочения по-горе markdown документ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Четене на документ Markdown

Следният кодов фрагмент ви показва как да прочетете документ markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Посочете Markdown Опции За Запазване

Aspose.Words API осигурява [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) клас, за да зададете допълнителни опции, докато записвате документ във формат Markdown.

Следният пример за код показва как да зададете различни Markdown Опции за записване.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Как да подравните съдържанието в таблицата, докато експортирате в Markdown

Aspose.Words API осигурява TableContentAlignment изброяване, което определя указанията за подравняване за подравняване на съдържанието в таблиците, докато експортирате в документа Markdown. Следващият пример за код показва как да подравнявате съдържанието в таблицата.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
