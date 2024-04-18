---
title: להפוך מסמך Markdown פנימה C#
second_title: Aspose.Words עבור .NET
articleTitle: להפוך מסמך Markdown
linktitle: להפוך מסמך Markdown
type: docs
description: "המרת מסמך בכל פורמט עומס נתמך Markdown ולהיפך C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /he/net/convert-a-document-to-markdown/
---

Markdown הוא פורמט פופולרי המשמש לסימון טקסט וההמרה נוספת שלו ל- HTML, PDF, DOCX או פורמטים אחרים. מפתחים רבים בוחרים פורמט זה לכתיבת תיעוד, הכנת מאמרים לפרסום בבלוגים, תיאור פרויקטים, וכן הלאה.

Markdown הוא כל כך פופולרי כי קל לעבוד עם פורמט זה, כמו גם זה יכול להיות פשוט מומר פורמטים אחרים. מסיבה זו, Aspose.Words מספק את היכולת להמיר מסמך [כל פורמט עומס נתמך](https://reference.aspose.com/words/net/aspose.words/loadformat/) to to Markdown ולהיפך – Aspose.Words תומך גם הפופולרי ביותר [לשמור פורמטים](https://reference.aspose.com/words/net/aspose.words/saveformat/).

עכשיו הפונקציונליות לעבודה עם Markdown פורמט מפותח באופן פעיל כדי לספק לך יותר הזדמנויות לעבודה נוחה ונוחה עם מסמכים.

## המרת מסמך

להמיר מסמך <span notrans="<span notrans=" Markdown"=""></span>" אתה רק צריך לטעון מסמך בכל פורמט נתמך או ליצור תוכנית חדשה. לאחר מכן עליך לשמור את המסמך Markdown פורמט.

דוגמה לקוד הבא מראה כיצד להמיר את DOCX ל Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

באפשרותך גם לציין את התיקיה הפיזית שבה ברצונך לשמור תמונות בעת ייצוא מסמך Markdown פורמט. כברירת מחדל, Aspose.Words שמור תמונות באותה תיקיה שבה נשמר קובץ המסמך, אך באפשרותך להתגבר על התנהגות זו באמצעות שימוש. [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) רכוש.

מפרט תיקיה באמצעות **ImagesFolder** זה גם שימושי אם אתה שומר מסמך לזרם ו Aspose.Words אין תיקיה לשמירת תמונות.

אם צוין **ImagesFolder** לא קיים, הוא ייברא באופן אוטומטי.

לדוגמה הקוד הבא מראה כיצד לציין תיקיה עבור תמונות בעת שמירת מסמך לזרם:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## המונחים: save Options when Converting to Markdown

Aspose.Words מספק את היכולת להשתמש [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) שיעור לעבוד עם אפשרויות מתקדמות בעת שמירת מסמך Markdown פורמט. רוב התכונות יורשות או עומס נכסים שכבר קיימים בתוך אחרים. [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) שם הכיתה בנוסף לכך, מספר נכסים ספציפיים Markdown גם פורמט זה נוספו. לדוגמה, [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) רכוש כדי לשלוט בהיערכות של תוכן בטבלאות, או [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) ו [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) כדי לשלוט כיצד תמונות נשמרות על ידי המרת מסמך Markdown פורמט.

## תמיכה Markdown תכונות

Aspose.Words כיום תומך ב-להלן Markdown תכונות, אשר בעיקר לעקוב אחר `CommonMark` המונחים: Aspose.Words API הם מיוצגים כסגנונות מתאימים או פורמט ישיר:

* ראשי תיבות של Heading 1 - Heading 6 סגנונות
* בלוקquotes הם פסקאות עם "Quote" בשם הסגנון
* IndentedCode הם פסקאות עם "קוד סגור" בשם הסגנון
* Fenced קוד הם פסקאות עם "FencedCode" בשם הסגנון
* InlineCode פועל עם "InlineCode" ב- "InlineCode" `Font` שם סגנון
* כללי Horizontal הם פסקאות עם `HorizontalRule` צורה
* · הדגשה
* · הדגשה
* המונחים: Strike Through
*הרשימה ממוספרת או מזויפת
* שולחנות מיוצגים עם `Table` הכיתה
* קישורים מיוצגים כ `FieldHyperlink` הכיתה

הדוגמה הבאה מראה כיצד ליצור מסמך עם כמה סגנונות ולהציל אותו. Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

התוצאה של דוגמה קוד זה מוצגת להלן.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## טיפים שימושיים

ישנם מספר ניואנסים ומקרים מעניינים, לאחר שלמדת מה אתה יכול לעבוד עם Markdown קבצים גמישים ונוחים יותר. לדוגמה, יש את היכולת להשתמש:

*הסבר המאפשר לך ליצור כותרות מרובות באינטרנט <span notrans="<span notrans=" Markdown"=""></span>" בעוד כותרות קבועות Markdown יכול להיות רק קו בודד. הסימון מבוסס על סגנון "Heading N" ורמתו יכולה להיות רק 1 או 2. אם N ב "Heading N" גדול או שווה ל-2, אז הסימון המתאים מבוסס על "Heading 2", אחרת על "Heading 1".
* סמנים שונים לרמה הראשונה של רשימות מוצפות ("-", "+" או "*", סימן ברירת המחדל הוא "-") וסוגים שונים של מספר רשימות מסודרות ("או ")", סימן ברירת המחדל הוא ".
