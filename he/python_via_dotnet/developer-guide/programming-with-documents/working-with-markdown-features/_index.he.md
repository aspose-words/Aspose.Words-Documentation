---
title: עבודה עם Markdown תכונות
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Markdown תכונות
linktitle: עבודה עם Markdown תכונות
description: "כיצד ליישם Markdown תכונות באמצעות Python. כל התכונות מיוצגות כסגנונות מקבילים או פורמט ישיר."
type: docs
weight: 420
url: /he/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

נושא זה דן כיצד ליישם Markdown תכונות באמצעות Aspose.Words. Markdown זוהי דרך פשוטה לעצב טקסט רגיל שניתן להמיר בקלות ל- HTML. Aspose.Words תומך הבאות Markdown תכונות:

- כותרות
- בלוקquotes
- כללי Horizontal
- דגש Bold
- המונחים: italic

The The The Markdown יישום בעיקר בעקבות `CommonMark` מפרט Aspose.Words API וכל התכונות מיוצגות כסגנונות מקבילים או עיצוב ישיר. כלומר,

- Bold and Italic מיוצגים כמו [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) ו [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- ראשי תיבות של Heading 1 - Heading 6 סגנונות
- ציטוטים הם פסקאות עם "Quote" בשם הסגנון
- HorizontalRule הוא פסקה עם צורת HorizontalRule.

{{% alert color="primary" %}}

יש ניואנסים של תרגום Markdown אל Aspose.Words Document Object Model ()DOM), המתואר במאמר [תרגום Markdown to to Document Object Model ()DOM)](/words/he/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown מסמך עם דגש

סעיף זה מראה לך כיצד לייצר markdown מסמך עם דגשים כאמור להלן:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

את הקוד הבא ניתן להשתמש כדי להפיק את האמור לעיל markdown מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown מסמך עם כותרות

סעיף זה מראה לך כיצד לייצר markdown מסמך עם כותרות כפי שניתן להלן:

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

את הקוד הבא ניתן להשתמש כדי להפיק את האמור לעיל markdown מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown מסמך עם חסימות

סעיף זה מראה לך כיצד לייצר markdown מסמך עם הערות בלוק כמפורט להלן:

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

את הקוד הבא ניתן להשתמש כדי להפיק את האמור לעיל markdown מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown מסמך עם חוק Horizontal

סעיף זה מראה לך כיצד לייצר markdown מסמך עם Horizontal המונחים:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

את הקוד הבא ניתן להשתמש כדי להפיק את האמור לעיל markdown מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## קריאה Markdown מסמך

הקוד הבא שטוף מראה לך איך לקרוא markdown מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## המונחים Markdown לחסוך אפשרויות

Aspose.Words API מספק [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) שיעור לציין אפשרויות נוספות בעת שמירת מסמך Markdown פורמט.

דוגמה לקוד הבא הוכיחה כיצד לציין Markdown לחסוך אפשרויות

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## כיצד ליצור תוכן זר בתוך השולחן תוך הייצוא לתוך Markdown

Aspose.Words API מספק [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) enumeration אשר מגדיר כיוונים היערכות כדי להתאים תכנים בטבלאות תוך ייצוא לתוך הטבלה Markdown מסמך. הדוגמה הבאה של הקוד מראה כיצד להתאים תוכן בתוך השולחן.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
