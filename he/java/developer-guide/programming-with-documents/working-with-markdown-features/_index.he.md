---
title: עבודה עם Markdown תכונות Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Markdown תכונות
linktitle: עבודה עם Markdown תכונות
description: "כיצד ליישם Markdown תכונות באמצעות Java. כל התכונות מיוצגות כסגנונות מקבילים או פורמט ישיר."
type: docs
weight: 420
url: /he/java/working-with-markdown-features/
---

נושא זה דן כיצד ליישם Markdown תכונות באמצעות Aspose.Words. Markdown זוהי דרך פשוטה לעצב טקסט רגיל שניתן להמיר בקלות ל- HTML. Aspose.Words תומך הבאות Markdown תכונות:

- כותרות
- בלוקquotes
- כללי Horizontal
- דגש Bold
- המונחים: Italicדגש

The The The Markdown יישום בעיקר בעקבות `CommonMark` מפרט Aspose.Words API וכל התכונות מיוצגות כסגנונות מקבילים או עיצוב ישיר. כלומר,

- Bold and Italic מיוצגים כמו `Font.Bold` ו `Font.Italic`
- ראשי תיבות של Heading 1 - Heading 6 סגנונות
- ציטוטים הם פסקאות עם "Quote" בשם הסגנון
- HorizontalRule הוא סעיף עם `HorizontalRule` צורה.

{{% alert color="primary" %}}

יש ניואנסים של תרגום Markdown אל Aspose.Words Document Object Model ()DOM), המתואר במאמר [תגית: Markdown to to Document Object Model ()DOM)](/words/he/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown מסמך עם דגש

סעיף זה מראה לך כיצד לייצר markdown מסמך עם דגשים כאמור להלן:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

את הקוד הבא ניתן להשתמש כדי לייצר את הנ"ל markdown מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown מסמך עם חסימות

סעיף זה מראה לך כיצד לייצר markdown מסמך עם הערות בלוק כפי שניתן להלן:

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown מסמך עם חוק Horizontal

סעיף זה מראה לך כיצד לייצר markdown מסמך עם Horizontal חוק כאמור להלן:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

את הקוד הבא ניתן להשתמש כדי לייצר את הנ"ל markdown מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## קריאה Markdown מסמך

הקוד הבא שטוף מראה לך איך לקרוא markdown מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## המונחים Markdown לחסוך אפשרויות

Aspose.Words API מספק [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) שיעור לציין אפשרויות נוספות בעת שמירת מסמך Markdown פורמט.

דוגמה לקוד הבא הוכיחה כיצד לציין Markdown לחסוך אפשרויות

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## כיצד ליצור תוכן זר בתוך השולחן תוך הייצוא לתוך Markdown

Aspose.Words API מספק [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumeration אשר מגדיר כיוונים היערכות כדי להתאים תוכן בטבלאות תוך ייצוא לתוך הטבלה Markdown מסמך. דוגמה הקוד הבא מראה כיצד להתאים תוכן בתוך השולחן.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
