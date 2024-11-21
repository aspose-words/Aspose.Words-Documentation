---
title: איך ליצור שולחן C#
second_title: Aspose.Words עבור .NET
articleTitle: ליצור שולחן
linktitle: ליצור שולחן
description: "מדריך איך להכין שולחן C# בדרכים שונות. ליצור שולחן C# עבור המסמך שלך."
type: docs
weight: 20
url: /he/net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words מאפשר למשתמשים ליצור טבלאות במסמך מאפס ומספק מספר שיטות שונות לעשות זאת. מאמר זה מציג פרטים על איך להוסיף טבלאות מעוצבות במסמך שלך באמצעות כל שיטה, כמו גם השוואה של כל שיטה בסוף המאמר.

## Default Tables

השולחן החדש שנוצר ניתן ערכי ברירת מחדל דומים לאלה המשמשים Microsoft Word:

|  נכס שולחן |  אשמה Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

שולחן יכול להיות ללא ספק אם הוא ממוקם חזק, או צף אם ניתן למקם אותו בכל מקום בדף. כברירת מחדל, Aspose.Words תמיד יוצר שולחנות פנימיים.

{{% /alert %}}

## צור שולחן עם DocumentBuilder

In In In Aspose.Words, משתמשים יכולים ליצור שולחן במסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). האלגוריתם הבסיסי ליצירת שולחן הוא כדלקמן:

1.1 1. התחל את השולחן עם [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. הוסף תא לשולחן באמצעות [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) זה מתחיל באופן אוטומטי שורה חדשה
3. באופן אופציונלי, השתמש [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) קטגוריה: cell Format
4. הכנס את התוכן התאי באמצעות המתאים **DocumentBuilder** שיטות כגון [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), ואחרים
5. חזור על שלבים 2-4 עד שהשורה הושלמה
6. Call [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) לסיים את השורה הנוכחית
7. באופן אופציונלי, השתמש [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) רכוש כדי לציין פורמט שורות
8. חזור על שלבים 2-7 עד להשלמת השולחן
9. Call [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) לסיים את בניית השולחן

{{% alert color="primary" %}}

פרטים חשובים:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) ניתן לקרוא גם בתוך תא, שבו זה מתחיל יצירת שולחן מקונן בתוך התא.
* לאחר הקריאה [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), תא חדש נוצר, וכל תוכן שאתה מוסיף באמצעות שיטות אחרות של [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) הכיתה תתווסף לתא הנוכחי. כדי ליצור תא חדש באותה שורה, התקשר **InsertCell** שוב.
* אם **InsertCell** נקרא מיד לאחר [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) וסוף השורה, השולחן ימשיך בשורה חדשה.
* The The The [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) שיטה לסיום השולחן צריכה להיקרא רק פעם לאחר הקריאה **EndRow**. Calling **EndTable** עובר את הcursor מהתא הנוכחי אל המיקום מיד לאחר השולחן.

{{% /alert %}}

תהליך יצירת שולחן ניתן לראות בבירור בתמונה הבאה:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

לדוגמה הקוד הבא מראה כיצד ליצור שולחן פשוט באמצעות **DocumentBuilder** עם עיצוב ברירת מחדל:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

לדוגמה הקוד הבא מראה כיצד ליצור שולחן מעוצב באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן מקונן באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## ליצור שולחן באמצעות DOM ()Document Object Model)

ניתן להכניס טבלאות ישירות לתוך DOM על ידי הוספת חדש [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) צומת בעמדה מסוימת.

שימו לב כי מיד לאחר יצירת הטבלה, השולחן עצמו יהיה ריק לחלוטין, זה עדיין לא מכיל שורות ותאים. כדי להוסיף שורות ותאים לתוך שולחן, להוסיף את המתאים [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) ילד נופל אל DOM.

{{% alert color="primary" %}}

שיטה זו של יצירת שולחן משתמשת באותה ברירת מחדל של שולחן כמו בעת שימוש **DocumentBuilder**.

{{% /alert %}}

לדוגמה הקוד הבא מראה כיצד לבנות שולחן חדש מאפס על ידי הוספת בלוטות הילד המתאים לעץ המסמך:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## צור שולחן מ-HTML

Aspose.Words תומך להכניס תוכן לתוך מסמך ממקור HTML באמצעות [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) שיטה. הקלט יכול להיות דף HTML שלם או רק קטע.

באמצעות **InsertHtml** שיטה, משתמשים יכולים להכניס טבלאות אל המסמך באמצעות תגי שולחן כמו `<table>`, `<tr>`, `<td>`.

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן למסמך המכיל תגי HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## הוסף עותק של שולחן קיים

לעתים קרובות יש זמנים שבהם אתה צריך ליצור שולחן המבוסס על שולחן קיים כבר במסמך. הדרך הקלה ביותר לשכפל שולחן תוך שמירה על כל הפורמטיקה היא לשכט את צומת השולחן באמצעות צומת השולחן. [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) שיטה.

אותה טכניקה ניתן להשתמש כדי להוסיף עותקים של שורה או תא קיים לשולחן.

הדוגמה הבאה של הקוד מראה כיצד לשכפל שולחן באמצעות בונה Node:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשכפל את השורה האחרונה של שולחן ולהצמיד אותו לשולחן:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

אם אתה מסתכל על יצירת טבלאות במסמך שגדל באופן דינמי עם כל רשומה ממקור הנתונים שלך, אז השיטה לעיל אינה מומלצת. במקום זאת, הפלט הרצוי מושג בקלות רבה יותר על ידי שימוש Mail merge עם אזורים. אתה יכול ללמוד עוד על הטכניקה הזו. [Mail Merge עם אזורים](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) סעיף.

## השוואת דרכים ליצירת שולחן

Aspose.Words מספק מספר שיטות ליצירת טבלאות חדשות במסמך. לכל שיטה יש יתרונות וחסרונות משלה, ולכן הבחירה של מי להשתמש לעתים קרובות תלויה במצב הספציפי.

בואו נסתכל מקרוב על דרכים אלה ליצירת טבלאות ולהשוות את היתרונות והחסרונות שלהם:

|  שיטות | יתרונות |  חסרונות |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | השיטה הסטנדרטית להוספת טבלאות ותוכן מסמך אחר | לפעמים קשה ליצור סוגים רבים של טבלאות בו זמנית עם אותו בונה |
| Via DOM |  Fits in טוב יותר עם קוד מקיף שיוצר ומכניס נקודות ישירות לתוך הבלוטות ישירות לתוך DOM בלי להשתמש **DocumentBuilder** | השולחן נוצר "ריק": לפני ביצוע רוב הפעולות, עליך להתקשר [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) ליצור צומת ילדים חסר |
| מתוך HTML | יכול ליצור שולחן חדש ממקור HTML באמצעות תגים כמו `<table>`, `<tr>`, `<td>` | לא הכל אפשרי Microsoft Word ניתן ליישם פורמטים בטבלה ב-HTML |
| מקליד שולחן קיים | אתה יכול ליצור עותק של שולחן קיים תוך שמירה על כל שורות ותבנית תאים | יש להסיר את בלוטות הילד המתאים לפני שהשולחן מוכן לשימוש |
