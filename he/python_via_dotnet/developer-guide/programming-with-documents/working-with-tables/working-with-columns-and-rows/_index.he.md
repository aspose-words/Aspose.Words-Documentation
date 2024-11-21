---
title: עבודה עם טורים ו Rows
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם טורים ו Rows
linktitle: עבודה עם טורים ו Rows
description: "עבודה עם חלקים של שולחן - שורות, עמודות ותאים באמצעות Python. תגית: Header Row Python."
type: docs
weight: 30
url: /he/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

לקבלת יותר שליטה על איך שולחנות לעבוד, ללמוד כיצד לתמרן עמודות ושורה.

## למצוא את טבלת Element Index

טורים, שורות ותאים מנוהלים על ידי גישה למסמך שנבחר על ידי המדד שלו. מציאת האינדקס של כל צומת כרוך באיסוף כל אבני הילד של הסוג האלמנט מן הצומת ההורה, ולאחר מכן באמצעות שימוש [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) שיטה למצוא את המדד של הצומת הרצוי באוסף.

### מציאת מדד השולחן במסמך

לפעמים אתה יכול לעשות שינויים בטבלה מסוימת במסמך. כדי לעשות זאת, אתה יכול להתייחס לשולחן על ידי המדד שלו.

לדוגמה הקוד הבא מראה כיצד לשחזר את מדד השולחן במסמך:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### מציאת אינדקס של רו בטבלה

כמו כן, ייתכן שיהיה עליך לבצע שינויים בשורה מסוימת בטבלה שנבחרה. כדי לעשות זאת, אתה יכול גם להתייחס לשורה על ידי המדד שלה.

דוגמא הקוד הבא מראה כיצד לשחזר את מדד השורה בטבלה:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### מצא את מדד התא בקו

לבסוף, ייתכן שיהיה עליך לבצע שינויים בתא מסוים, ואתה יכול לעשות זאת גם על ידי מדד התא.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את מדד התא בשורה:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## עבודה עם טורים

בתוך Aspose.Words Document Object Model ()DOM) [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Node מורכב [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ואז [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) צומת כך, ב `Document` מודל אובייקטים Aspose.Wordsכמו מסמכי Word, אין מושג של עמודה.

על ידי עיצוב, טבלאות Microsoft Word ו Aspose.Words הם עצמאיים לחלוטין, והנכסים והפעולות הבסיסיות כלולים רק בשורות ובתאים של השולחן. זה נותן טבלאות את היכולת להיות כמה תכונות מעניינות:

- לכל שורה של שולחן יש מספר שונה לחלוטין של תאים
- באופן רוטטי, התאים של כל שורה יכולים להיות רוחביים שונים
- - ניתן להצטרף לטבלאות עם פורמטים שונים של שורות ומספר תאים

כל פעולות המבוצעות על עמודות הן למעשה "מקצרות" שמבצעות את הניתוח על ידי שינוי קולקטיבי של תאי שורות באופן שנראה כאילו הן מוחלות על עמודות. כלומר, אתה יכול לבצע פעולות על עמודות פשוט על ידי זהה מעל אותו טבלת תאים אינדקס.

הדוגמה הקודית הבאה מפשטת פעולות כאלה על ידי הוכחת מעמד חזיתי שאוסף את התאים המרכיבים את ה"קומן" של שולחן:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס עמודה ריקה לשולחן:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

לדוגמה הקוד הבא מראה כיצד להסיר עמודה משולחן במסמך:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## תגית: Header Rows

אתה יכול לבחור לחזור על השורה הראשונה בטבלה כמו Header Row רק בעמוד הראשון או על כל דף אם השולחן מחולק למספר. In In In Aspose.Words, אתה יכול לחזור על Header Row על כל דף באמצעות [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) רכוש.

אתה יכול גם לסמן שורות ראש מרובות אם שורות כאלה ממוקמות אחד לאחר השני בתחילת השולחן. כדי לעשות זאת, עליך ליישם את **HeadingFormat** תכונות שורות אלה.

{{% alert color="primary" %}}

שימו לב כי Header Rows לא עובד בטבלאות מקוונות. כלומר, אם יש לכם שולחן בתוך שולחן אחר, להגדרה זו לא תהיה השפעה. זוהי הגבלה של Microsoft Word זה לא מאפשר זאת, לא Aspose.Words.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד לבנות שולחן הכולל את Header Rows שחוזר על העמודים הבאים:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## שמור שולחנות ו Rows מתוך Breaking Over Pages

ישנם זמנים שבהם התוכן של שולחן לא צריך להיות מחולק על פני דפים. לדוגמה, אם כותרת היא מעל שולחן, הכותרת והשולחן צריכים תמיד להיות יחד באותו דף כדי לשמור על המראה הנכון.

ישנן שתי טכניקות נפרדות שימושיות להשגת פונקציונליות זו:

- - `Allow row break across pages`, המונחים: Tables
- - `Keep with next`, אשר חל על פסקאות בתאי שולחן

כברירת מחדל, התכונות לעיל מוגבלות.

### עקבו אחרי Breaking Overs Pages

זה כרוך הגבלת תוכן בתוך התאים של שורה מלהיות מפוצל על פני דף. In In In Microsoft Word, זה יכול למצוא תחת טבלה Properties כאפשרות "לעמוד שורות כדי לפרוץ דפים". In In In Aspose.Words זה נמצא תחת [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) אובייקט של [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) כמו הנכס [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

הדוגמה הבאה של הקוד מראה כיצד להשבית שורות על פני דפים לכל שורה בטבלה:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### עקבו אחרי Breaking Overs Pages

כדי לעצור את השולחן מפיצול בדפים, עלינו לציין שאנו רוצים שהתוכן הכלול בתוך השולחן כדי להישאר יחד.

לעשות את זה, Aspose.Words משתמש בשיטה, המאפשרת למשתמשים לבחור שולחן ולאפשר את [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) פרמטר true לכל פסקה בתוך תאי השולחן. היוצא מן הכלל הוא הסעיף האחרון בטבלה, שאמור להיות מוגדר. false.

דוגמה לקוד הבא מראה כיצד להגדיר שולחן כדי להישאר יחד באותו דף:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
