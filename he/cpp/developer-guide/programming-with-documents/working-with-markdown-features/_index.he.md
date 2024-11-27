---
title: עבודה עם Markdown תכונות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם Markdown תכונות
linktitle: עבודה עם Markdown תכונות
description: "כיצד ליישם Markdown תכונות באמצעות C++. כל התכונות מיוצגות כסגנונות מתאימים או עיצוב ישיר."
type: docs
weight: 420
url: /he/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

נושא זה דן כיצד ליישם Markdown תכונות באמצעות Aspose.Words. Markdown היא דרך פשוטה לעצב טקסט רגיל שניתן להמיר בקלות ל HTML. Aspose.Words תומך הבא Markdown תכונות:

- כותרות
- ציטוטים של בלוק
- כללים אופקיים
- דגש מודגש
- דגש נטוי

יישום התכונה Markdown עוקב בעיקר אחר הספציפיות `CommonMark` ב Aspose.Words API וכל התכונות מיוצגות כסגנונות מתאימים או עיצוב ישיר. מה שאומר ש

- מודגש ונטוי מיוצגים כ `Font.Bold` ו `Font.Italic`.
- כותרות הן פסקאות עם סגנונות Heading 1 - Heading 6.
- ציטוטים הם פסקאות עם "ציטוט" בשם הסגנון.
- HorizontalRule היא פסקה עם HorizontalRule צורה.

{{% alert color="primary" %}}

יש ניואנסים של תרגום Markdown למודל אובייקט המסמך Aspose.Words (DOM), המתואר במאמר [תרגם Markdown לתעד מודל אובייקט (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown מסמך עם דגשים

סעיף זה מדגים לך כיצד להפיק מסמך markdown עם הדגשים כמפורט להלן:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

ניתן להשתמש בקטע הקוד הבא כדי לייצר את המסמך markdown שניתן לעיל.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown מסמך עם כותרות

סעיף זה מדגים לך כיצד להפיק מסמך markdown עם כותרות כמפורט להלן:

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

ניתן להשתמש בקטע הקוד הבא כדי לייצר את המסמך markdown שניתן לעיל.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown מסמך עם ציטוטים לחסום

סעיף זה מדגים לך כיצד להפיק מסמך markdown עם ציטוטים לחסום כמפורט להלן:

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

ניתן להשתמש בקטע הקוד הבא כדי לייצר את המסמך markdown שניתן לעיל.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown מסמך עם כלל אופקי

סעיף זה מדגים לך כיצד להפיק מסמך markdown עם כלל אופקי כמפורט להלן:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

ניתן להשתמש בקטע הקוד הבא כדי לייצר את המסמך markdown שניתן לעיל.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## קריאת מסמך Markdown

קטע הקוד הבא מראה לך כיצד לקרוא מסמך markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## ציין Markdown שמור אפשרויות

Aspose.Words API מספק [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) מחלקה כדי לציין אפשרויות נוספות תוך שמירת מסמך בפורמט Markdown.

דוגמת הקוד הבאה הראתה כיצד לציין אפשרויות שמירה שונות Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## כיצד ליישר תוכן בתוך הטבלה תוך ייצוא לתוך Markdown

Aspose.Words API מספק TableContentAlignment ספירה המגדירה כיווני יישור ליישור תוכן בטבלאות תוך ייצוא למסמך Markdown. דוגמת הקוד הבאה מדגימה כיצד ליישר תוכן בתוך הטבלה.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
