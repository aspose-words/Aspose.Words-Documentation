---
title: המרת מסמך ל Markdown ב C++
second_title: Aspose.Words עבור C++
articleTitle: המרת מסמך ל - Markdown
linktitle: המרת מסמך ל - Markdown
type: docs
description: "המרת מסמך בכל פורמט עומס נתמך ל Markdown ולהיפך באמצעות C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /he/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown הוא פורמט פופולרי המשמש לסימון טקסט והמרתו נוספת ל HTML, PDF, DOCX, או פורמטים אחרים. מפתחים רבים בוחרים בפורמט זה לכתיבת תיעוד, הכנת מאמרים לפרסום בבלוגים, תיאור פרויקטים וכן הלאה.

Markdown הוא כל כך פופולרי כי זה קל לעבוד עם פורמט זה, כמו גם זה יכול להיות די פשוט להמיר פורמטים אחרים. מסיבה זו, Aspose.Words מספק את היכולת להמיר מסמך ב [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) ל Markdown ולהיפך – Aspose.Words תומך גם בפופולרי ביותר [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

כעת הפונקציונליות לעבודה עם פורמט Markdown מפותחת באופן פעיל כדי לספק לך יותר הזדמנויות לעבודה נוחה ונוחה עם מסמכים.

## המרת מסמך

כדי להמיר מסמך ל Markdown, אתה רק צריך לטעון מסמך בכל פורמט נתמך או ליצור מסמך חדש באופן תכנותי. לאחר מכן עליך לשמור את המסמך בפורמט Markdown.

דוגמת הקוד הבאה מראה כיצד להמיר DOCX ל Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

ניתן גם לציין את התיקיה הפיזית שבה ברצונך לשמור תמונות בעת ייצוא מסמך לפורמט Markdown. כברירת מחדל, Aspose.Words שומר תמונות באותה תיקיה שבה נשמר קובץ המסמך, אך ניתן לעקוף התנהגות זו באמצעות המאפיין [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

ציון תיקיה באמצעות **ImagesFolder** שימושי גם אם אתה שומר מסמך בזרם ו Aspose.Words אין תיקיה לשמירת תמונות.

אם **ImagesFolder** שצוין אינו קיים, הוא ייווצר באופן אוטומטי.

דוגמת הקוד הבאה מראה כיצד לציין תיקיה לתמונות בעת שמירת מסמך בזרם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## ציין אפשרויות שמירה בעת המרה ל - Markdown

Aspose.Words מספק את היכולת להשתמש בכיתה [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) כדי לעבוד עם אפשרויות מתקדמות בעת שמירת מסמך בפורמט Markdown. רוב המאפיינים הם נכסים יורשים או מעמיסים יתר על המידה שכבר קיימים בתוך כיתות אחרות של מרחב שמות [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). בנוסף להם, נוספו גם מספר מאפיינים ספציפיים לפורמט Markdown. לדוגמה, המאפיין [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) כדי לשלוט על יישור התוכן בטבלאות, או [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) ו [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) כדי לשלוט באופן שמירת תמונות בעת המרת מסמך לפורמט Markdown.

## נתמך Markdown תכונות

Aspose.Words תומך כרגע בתכונות הבאות Markdown, אשר בעיקר עוקבות אחר מפרט `CommonMark` ב Aspose.Words API ומוצגות כסגנונות מתאימים או עיצוב ישיר:

* כותרות הן פסקאות עם Heading 1 – Heading 6 סגנונות
* בלוקציטוטים הם פסקאות עם "ציטוט" בשם הסגנון
* IndentedCode הן פסקאות עם "IndentedCode " בשם הסגנון
* FencedCode הן פסקאות עם "FencedCode " בשם הסגנון
* InlineCode הם ריצות עם "InlineCode " ב `Font` שם סגנון
* כללים אופקיים הם פסקאות עם צורת `HorizontalRule`
* דגש מודגש
* דגש נטוי
* StrikeThrough עיצוב
* רשימות הן פסקאות ממוספרות או תבליטים
* טבלאות מיוצגות עם הכיתה `Table`
* קישורים מיוצגים ככיתה `FieldHyperlink`

הדוגמה הבאה מראה כיצד ליצור מסמך עם סגנונות מסוימים ולשמור אותו ב - Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

התוצאה של דוגמת קוד זו מוצגת להלן.

![markdown-example-aspose-words-cpp](markdown-example.png)

## טיפים שימושיים

ישנם מספר ניואנסים ומקרים מעניינים, לאחר שלמדתם אותם תוכלו לעבוד עם Markdown קבצים בצורה גמישה ונוחה יותר. לדוגמה, יש את היכולת להשתמש:

* SetextHeading המאפשר לך ליצור כותרות מרובות שורות ב Markdown, בעוד שכותרות רגילות ב Markdown יכולות להיות רק שורה אחת. SetextHeading מבוסס על סגנון "כותרת נ", ורמתו יכולה להיות רק 1 או 2. אם נ ב " כותרת נ "גדול או שווה ל -2, אז המקביל SetextHeading מבוסס על" Heading 2", אחרת על"Heading 1".
* סמנים שונים עבור הרמה הראשונה של רשימות תבליטים ("-", "+" או "*", סמן ברירת המחדל הוא "-".) וסוגים שונים של מספור לרשימות מסודרות ("." או ")", סמן ברירת המחדל הוא ".").
