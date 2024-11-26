---
title: עבודה עם טורים ו Rows Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם טורים ו Rows
linktitle: עבודה עם טורים ו Rows
description: "עבודה עם חלקים של שולחן - שורות, עמודות ותאים באמצעות Java. תגית: Header Row Java."
type: docs
weight: 30
url: /he/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

לקבלת יותר שליטה על איך שולחנות לעבוד, ללמוד כיצד לתמרן עמודות ושורה.

## עקבו אחרי Table Element Index

טורים, שורות ותאים מנוהלים על ידי גישה למסמך שנבחר על ידי המדד שלו. מציאת האינדקס של כל צומת כרוך באיסוף כל אבני הילד של הסוג האלמנט מן הצומת ההורה, ולאחר מכן באמצעות שימוש [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) שיטה למצוא את המדד של הצומת הרצוי באוסף.

### מצא את מדד השולחן במסמך

לפעמים אתה יכול לעשות שינויים בטבלה מסוימת במסמך. כדי לעשות זאת, אתה יכול להתייחס לשולחן על ידי המדד שלו.

לדוגמה הקוד הבא מראה כיצד לשחזר את מדד השולחן במסמך:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### מציאת אינדקס של רו בטבלה

כמו כן, ייתכן שיהיה עליך לבצע שינויים בשורה מסוימת בטבלה שנבחרה. כדי לעשות זאת, אתה יכול גם להתייחס לשורה על ידי המדד שלה.

לדוגמה הקוד הבא מראה כיצד לשחזר את מדד השורה בטבלה:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### מצא את מדד התא בקו

לבסוף, ייתכן שיהיה עליך לבצע שינויים בתא מסוים, ואתה יכול לעשות זאת גם על ידי מדד התא.

דוגמה הקוד הבא מראה כיצד לשחזר את מדד התא בשורה:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## עבודה עם טורים

בתוך Aspose.Words Document Object Model ()DOM) [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Node מורכב [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ואז [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) צומת כך, ב `Document` מודל אובייקטים Aspose.Wordsכמו מסמכי Word, אין מושג על עמודה.

על ידי עיצוב, טבלאות Microsoft Word ו Aspose.Words הם עצמאיים לחלוטין, והנכסים והמבצעים הבסיסיים כלולים רק בשורות ובתאים של השולחן. זה נותן טבלאות את היכולת להיות כמה תכונות מעניינות:

- לכל שורה של שולחן יש מספר שונה לחלוטין של תאים
- באופן רציונאלי, התאים של כל שורה יכולים להיות רוחב שונה
- - ניתן להצטרף לטבלאות עם פורמטים שונים של שורות ומספר תאים

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

כל פעולות המבוצעות על עמודות הן למעשה "מקצרות" שמבצעות את הניתוח על ידי שינוי קולקטיבי של תאי שורות באופן שנראה כאילו הן מוחלות על עמודות. כלומר, אתה יכול לבצע פעולות על עמודות פשוט על ידי זהה מעל אותו טבלת תאים אינדקס.

הדוגמה הקודית הבאה מפשטת פעולות כאלה על ידי הוכחת מעמד חזיתי שאוסף את התאים המרכיבים את ה"קומן" של שולחן:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

לדוגמה הקוד הבא מראה כיצד להכניס עמודה ריקה לשולחן:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

לדוגמה הקוד הבא מראה כיצד להסיר עמודה משולחן במסמך:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## תגית: Header Rows

אתה יכול לבחור לחזור על השורה הראשונה בטבלה כמו Header Row רק בעמוד הראשון או על כל דף אם השולחן מחולק למספר. In In In Aspose.Words, אתה יכול לחזור על Header Row על כל דף באמצעות [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) רכוש.

אתה יכול גם לסמן שורות ראש מרובות אם שורות כאלה ממוקמות אחד אחרי השני בתחילת השולחן. כדי לעשות זאת, עליך ליישם את **HeadingFormat** תכונות שורות אלה.

{{% alert color="primary" %}}

שימו לב כי Header Rows לא עובד בטבלאות מזוננות. כלומר, אם יש לכם שולחן בתוך שולחן אחר, להגדרה זו לא תהיה השפעה. זוהי הגבלה של Microsoft Word זה לא מאפשר זאת, לא Aspose.Words.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד לבנות שולחן הכולל את Header Rows שחוזר על העמודים הבאים:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## שמור שולחנות ו Rows from Breaking Overs דפים {#keep-tables-and-rows-from-breaking-across-pages}

יש זמנים שבהם התוכן של שולחן לא צריך להיות מחולק על פני דפים. לדוגמה, אם כותרת היא מעל שולחן, הכותרת והשולחן צריכים תמיד להיות יחד באותו דף כדי לשמור על המראה הנכון.

ישנן שתי טכניקות נפרדות שימושיות להשגת פונקציונליות זו:

- - `Allow row break across pages`, המונחים: Tables
- - `Keep with next`, אשר חל על פסקאות בתאי שולחן

כברירת מחדל, התכונות לעיל מוגבלות.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### עקבו אחרי Breaking Overs Pages {#keep-a-row-from-breaking-across-pages}

זה כרוך הגבלת תוכן בתוך התאים של שורה מלהיות מפוצל על פני דף. In In In Microsoft Word, זה יכול למצוא תחת טבלה Properties כאפשרות "לעבור שורות כדי לפרוץ דפים". In In In Aspose.Words זה נמצא תחת [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) אובייקט של [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) כמו הנכס [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

לדוגמה הקוד הבא מראה כיצד להשבית שורות פורצות על פני דפים לכל שורה בטבלה:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### עקבו אחרי Breaking Overs Pages {#keep-a-table-from-breaking-across-pages}

כדי לעצור את השולחן מפיצול בדפים, עלינו לציין שאנו רוצים שהתוכן הכלול בתוך השולחן כדי להישאר יחד.

לעשות את זה, Aspose.Words שימוש בשיטה, המאפשרת למשתמשים לבחור שולחן ולאפשר את [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) פרמטר true לכל פסקה בתוך תאי השולחן. היוצא מן הכלל הוא הסעיף האחרון בטבלה, שאמור להיות מוגדר. false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

דוגמה לקוד הבא מראה כיצד להגדיר שולחן להישאר יחד באותו דף:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
