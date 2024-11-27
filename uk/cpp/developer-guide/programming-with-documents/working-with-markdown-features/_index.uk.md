---
title: Робота з Markdown функціями в C++
second_title: Aspose.Words для C++
articleTitle: Робота з функціями Markdown
linktitle: Робота з функціями Markdown
description: "Як реалізувати функції Markdown за допомогою C++. Всі функції представлені у вигляді відповідних стилів або прямого форматування."
type: docs
weight: 420
url: /uk/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

У цьому розділі обговорюється, як реалізувати функції Markdown за допомогою Aspose.Words. Markdown - це простий спосіб форматування звичайного тексту, який можна легко перетворити у формат HTML. Aspose.Words підтримує наступні функції Markdown:

- Заголовок
- Цитати з блоків
- Горизонтальні правила
- Жирний акцент
- Виділено курсивом

Реалізація функції Markdown в основному відповідає специфікації `CommonMark` в Aspose.Words API, і всі функції представлені у вигляді відповідних стилів або прямого форматування. Це означає, що

- Жирний шрифт і курсив представлені як `Font.Bold` і `Font.Italic`.
- Заголовки-це абзаци зі стилями Heading 1 - Heading 6.
- Лапки - це абзаци з написом "Quote" у назві стилю.
- HorizontalRule - це абзац із формою HorizontalRule.

{{% alert color="primary" %}}

Існують нюанси перекладу Markdown в об'єктну модель документа Aspose.Words (DOM), описані в статті [Перекласти Markdown в об'єктну модель документа (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Документ з виділеннями

У цьому розділі показано, як створити документ markdown із виділеннями, як показано нижче:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Наступний фрагмент коду може бути використаний для створення наведеного вище документа markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Документ із заголовками

У цьому розділі показано, як створити документ markdown із заголовками нижче:

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

Наступний фрагмент коду може бути використаний для створення зазначеного вище документа markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Документ із блоковими лапками

У цьому розділі показано, як створити документ markdown з блоковими лапками, як показано нижче:

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

Наступний фрагмент коду може бути використаний для створення наведеного вище документа markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown документ з горизонтальним правилом

У цьому розділі показано, як створити документ markdown за допомогою горизонтального правила, як показано нижче:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Наступний фрагмент коду може бути використаний для створення наведеного вище документа markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Читання документа Markdown

Наступний фрагмент коду показує, як читати документ markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Вкажіть Markdown параметри збереження

Aspose.Words API надає клас [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) для вказівки додаткових параметрів при збереженні документа у форматі Markdown.

Наступний приклад коду показує, як вказати різні параметри збереження Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Як вирівняти вміст всередині таблиці при експорті в Markdown

Aspose.Words API надає перерахування TableContentAlignment, яке визначає напрямки вирівнювання для вирівнювання вмісту в таблицях при експорті в документ Markdown. Наступний приклад коду демонструє, як вирівняти вміст всередині таблиці.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
