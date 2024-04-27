---
title: איך ליצור שולחן Java
second_title: Aspose.Words עבור Java
articleTitle: ליצור שולחן
linktitle: ליצור שולחן
description: "דרכים שונות ליצור טבלאות במסמך שלך Java."
type: docs
weight: 20
url: /he/java/create-a-table/
---

Aspose.Words מאפשר למשתמשים ליצור טבלאות במסמך מאפס ומספק מספר שיטות שונות לעשות זאת. מאמר זה מציג פרטים על איך להוסיף טבלאות מעוצבות למסמך שלך באמצעות כל שיטה, כמו גם השוואה של כל שיטה בסוף המאמר.

## Default Tables

השולחן החדש שנוצר ניתן ערכי ברירת מחדל דומים לאלה המשמשים Microsoft Word:

| נכס שולחן | אשמה Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| עמוד הגבול |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

שולחן יכול להיות קוהר אם הוא ממוקם בחוזקה, או צף אם ניתן למקם אותו בכל מקום בדף. כברירת מחדל, Aspose.Words תמיד יוצר שולחנות פנימיים.

{{% /alert %}}

## צור שולחן עם DocumentBuilder

In In In Aspose.Words, משתמשים יכולים ליצור שולחן במסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). האלגוריתם הבסיסי ליצירת שולחן הוא כדלקמן:

1.1 1. התחל את השולחן עם [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. הוסף תא לשולחן באמצעות [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) זה מתחיל באופן אוטומטי שורה חדשה
3. באופן אופציונלי, השתמש [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) קטגוריה: cell Format
4. הכנס את התוכן התאי באמצעות המתאים **DocumentBuilder** שיטות כגון [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), ואחרים
5. חזור על שלבים 2-4 עד שהשורה הושלמה
6. Call [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) לסיום השורה הנוכחית
7. באופן אופציונלי, השתמש [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) רכוש כדי לציין פורמט שורות
8. חזור על שלבים 2-7 עד להשלמת השולחן
9. Call [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) לסיים את בניית השולחן

{{% alert color="primary" %}}

פרטים חשובים:

- - [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) ניתן לקרוא גם בתוך תא, שבו זה מתחיל יצירת שולחן מקונן בתוך התא.
- לאחר הקריאה [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), תא חדש נוצר, וכל תוכן שאתה מוסיף באמצעות שיטות אחרות של [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) הכיתה תתווסף לתא הנוכחי. כדי ליצור תא חדש באותה שורה, התקשר **InsertCell** שוב.
- אם **InsertCell** נקרא מיד לאחר [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) וסוף השורה, השולחן ימשיך בשורה חדשה.
- The [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) שיטה לסיום השולחן צריכה להיקרא רק פעם לאחר הקריאה **EndRow**. Calling **EndTable** עובר את הcursor מהתא הנוכחי למצב מיד לאחר השולחן.

{{% /alert %}}

תהליך יצירת שולחן ניתן לראות בבירור בתמונה הבאה:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

דוגמה לקוד הבא מראה כיצד ליצור שולחן פשוט באמצעות **DocumentBuilder** עם עיצוב ברירת מחדל:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

לדוגמה הקוד הבא מראה כיצד ליצור שולחן מעוצב באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

לדוגמה הקוד הבא מראה כיצד להכניס שולחן מקונן באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## צור שולחן באמצעות DOM ()Document Object Model)

ניתן להכניס טבלאות ישירות לתוך DOM על ידי הוספת חדש [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) צומת בעמדה מסוימת.

שימו לב כי מיד לאחר יצירת הטבלה, השולחן עצמו יהיה ריק לחלוטין, זה עדיין לא מכיל שורות ותאים. כדי להוסיף שורות ותאים לתוך שולחן, להוסיף את המתאים [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) ו [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) ילד נופל אל DOM.

{{% alert color="primary" %}}

שיטה זו של יצירת שולחן משתמשת באותה ברירת מחדל של שולחן כמו בעת שימוש **DocumentBuilder**.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לבנות שולחן חדש מאפס על ידי הוספת בלוטות הילד המתאים לעץ המסמך:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## צור שולחן מ-HTML

Aspose.Words תומך להכניס תוכן לתוך מסמך ממקור HTML באמצעות [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) שיטה. הקלט יכול להיות דף HTML מלא או רק קטע.

שימוש בזה **InsertHtml** שיטה, משתמשים יכולים להכניס טבלאות לתוך המסמך באמצעות תגי שולחן כמו `<table>`, `<tr>`, `<td>`.

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן למסמך המכיל תגי HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## הוסף עותק של שולחן קיים

לעתים קרובות יש זמנים שבהם אתה צריך ליצור שולחן מבוסס על שולחן קיים כבר במסמך. הדרך הקלה ביותר לשכפל שולחן תוך שמירה על כל הפורמט הוא לשכט את צומת השולחן באמצעות צומת השולחן. [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) שיטה.

אותה טכניקה ניתן להשתמש כדי להוסיף עותקים של שורה או תא קיים לשולחן.

הדוגמה הבאה של הקוד מראה כיצד לשכפל שולחן באמצעות בונה Node:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשכפל את השורה האחרונה של שולחן ולהצמיד אותו לשולחן:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

אם אתה מסתכל על יצירת טבלאות במסמך שגדל באופן דינמי עם כל רשומה ממקור הנתונים שלך, אז השיטה לעיל אינה מומלצת. במקום זאת, הפלט הרצוי מושג בקלות רבה יותר על ידי שימוש Mail merge עם אזורים. אתה יכול ללמוד עוד על טכניקה זו. [Mail Merge עם אזורים](/words/java/types-of-mail-merge-operations/) סעיף.

## השוואת דרכים ליצירת שולחן

Aspose.Words מספק מספר שיטות ליצירת טבלאות חדשות במסמך. לכל שיטה יש יתרונות וחסרונות משלה, ולכן הבחירה של מי להשתמש לעתים קרובות תלויה במצב הספציפי.

בואו נסתכל מקרוב על דרכים אלה ליצירת טבלאות ולהשוות את היתרונות והחסרונות שלהם:

|  שיטות | יתרונות |  חסרונות |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | השיטה הסטנדרטית להוספת טבלאות ותוכן מסמך אחר | לפעמים קשה ליצור סוגים רבים של טבלאות בו זמנית עם אותו בונה |
| Via DOM |  Fits in טוב יותר עם קוד מקיף שיוצר ומכניס נקודות ישירות לתוך הבלוטות ישירות לתוך DOM בלי להשתמש **DocumentBuilder** | השולחן נוצר "ריק": לפני ביצוע רוב הפעולות, עליך להתקשר [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) ליצור צומת ילדים חסר |
| מתוך HTML | יכול ליצור שולחן חדש ממקור HTML באמצעות תגים כמו `<table>`, `<tr>`, `<td>` | לא הכל אפשרי Microsoft Word ניתן ליישם פורמטים בטבלה ב-HTML |
| מקליד שולחן קיים | אתה יכול ליצור עותק של שולחן קיים תוך שמירה על כל שורות ותבנית תאים | יש להסיר את בלוטות הילד המתאים לפני שהשולחן מוכן לשימוש |
