---
title: הקדמה ויצירה שולחנות
second_title: Aspose.Words עבור Python via .NET
articleTitle: הקדמה ויצירה שולחנות
linktitle: הקדמה ויצירה שולחנות
description: "יצירת ולנהל טבלאות במסמך Python."
type: docs
weight: 10
url: /he/python-net/create-a-table/
---

Aspose.Words מאפשר למשתמשים ליצור טבלאות במסמך מאפס ומספק מספר שיטות שונות לעשות זאת. מאמר זה מציג פרטים על איך להוסיף טבלאות מעוצבות במסמך שלך באמצעות כל שיטה, כמו גם השוואה של כל שיטה בסוף המאמר.

## Default Tables

השולחן החדש שנוצר ניתן ערכי ברירת מחדל דומים לאלה המשמשים Microsoft Word:

| נכס שולחן | אשמה Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

שולחן יכול להיות ללא ספק אם הוא ממוקם חזק, או צף אם ניתן למקם אותו בכל מקום בדף. כברירת מחדל, Aspose.Words תמיד יוצר שולחנות פנימיים.

{{% /alert %}}

## צור שולחן עם DocumentBuilder

In In In Aspose.Words, משתמשים יכולים ליצור שולחן במסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). האלגוריתם הבסיסי ליצירת שולחן הוא כדלקמן:

1.1 1. התחל את השולחן עם [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. הוסף תא לשולחן באמצעות [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) זה מתחיל באופן אוטומטי שורה חדשה
3. באופן אופציונלי, השתמש [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) קטגוריה: cell Format
4. הכנס את התוכן התאי באמצעות המתאים **DocumentBuilder** שיטות כגון [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str), ואחרים
5. חזור על שלבים 2-4 עד שהשורה הושלמה
6. Call [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) לסיים את השורה הנוכחית
7. באופן אופציונלי, השתמש [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) רכוש כדי לציין פורמט שורות
8. חזור על שלבים 2-7 עד להשלמת השולחן
9. Call [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) לסיים את בניית השולחן

{{% alert color="primary" %}}

פרטים חשובים:

- - [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) ניתן לקרוא גם בתוך תא, שבו זה מתחיל יצירת שולחן מקונן בתוך התא.
- לאחר הקריאה [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), תא חדש נוצר, וכל תוכן שאתה מוסיף באמצעות שיטות אחרות של [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) הכיתה תתווסף לתא הנוכחי. כדי ליצור תא חדש באותה שורה, התקשר **InsertCell** שוב.
- אם **InsertCell** נקרא מיד לאחר [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) וסוף השורה, השולחן ימשיך בשורה חדשה.
- The [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) שיטה לסיום השולחן צריכה להיקרא רק פעם לאחר הקריאה **EndRow**. Calling **EndTable** עובר את הcursor מהתא הנוכחי אל המיקום מיד לאחר השולחן.

{{% /alert %}}

תהליך יצירת שולחן ניתן לראות בבירור בתמונה הבאה:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="creating-table-process" style="zoom:50%;" />

לדוגמה הקוד הבא מראה כיצד ליצור שולחן פשוט באמצעות **DocumentBuilder** עם עיצוב ברירת מחדל:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

לדוגמה הקוד הבא מראה כיצד ליצור שולחן מעוצב באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן מקונן באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## ליצור שולחן באמצעות DOM ()Document Object Model)

ניתן להכניס טבלאות ישירות לתוך DOM על ידי הוספת חדש [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) צומת בעמדה מסוימת.

שימו לב כי מיד לאחר יצירת הטבלה, השולחן עצמו יהיה ריק לחלוטין, זה עדיין לא מכיל שורות ותאים. כדי להוסיף שורות ותאים לתוך שולחן, להוסיף את המתאים [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) ילד נופל אל DOM.

{{% alert color="primary" %}}

שיטה זו של יצירת שולחן משתמשת באותה ברירת מחדל של שולחן כמו בעת שימוש **DocumentBuilder**.

{{% /alert %}}

לדוגמה הקוד הבא מראה כיצד לבנות שולחן חדש מאפס על ידי הוספת בלוטות הילד המתאים לעץ המסמך:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create שולחן מ-HTML

Aspose.Words תומך להכניס תוכן לתוך מסמך ממקור HTML באמצעות [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) שיטה. הקלט יכול להיות דף HTML שלם או רק קטע.

באמצעות **InsertHtml** שיטה, משתמשים יכולים להכניס טבלאות אל המסמך באמצעות תגי שולחן כמו `<table>`, `<tr>`, `<td>`.

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן למסמך המכיל תגי HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## הוסף עותק של שולחן קיים

לעתים קרובות יש זמנים שבהם אתה צריך ליצור שולחן המבוסס על שולחן קיים כבר במסמך. הדרך הקלה ביותר לשכפל שולחן תוך שמירה על כל הפורמטיקה היא לשכט את צומת השולחן באמצעות צומת השולחן. [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/) שיטה.

אותה טכניקה ניתן להשתמש כדי להוסיף עותקים של שורה או תא קיים לשולחן.

הדוגמה הבאה של הקוד מראה כיצד לשכפל שולחן באמצעות בונה Node:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשכפל את השורה האחרונה של שולחן ולהצמיד אותו לשולחן:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

אם אתה מסתכל על יצירת טבלאות במסמך שגדל באופן דינמי עם כל רשומה ממקור הנתונים שלך, אז השיטה לעיל אינה מומלצת. במקום זאת, הפלט הרצוי מושג בקלות רבה יותר על ידי שימוש Mail merge עם אזורים.

## השוואת דרכים ליצירת שולחן

Aspose.Words מספק מספר שיטות ליצירת טבלאות חדשות במסמך. לכל שיטה יש יתרונות וחסרונות משלה, ולכן הבחירה של מי להשתמש לעתים קרובות תלויה במצב הספציפי.

בואו נסתכל מקרוב על דרכים אלה ליצירת טבלאות ולהשוות את היתרונות והחסרונות שלהם:

|  שיטות | יתרונות |  חסרונות |
|  :-  |  :-  |  :-  |
| Via DocumentBuilder | השיטה הסטנדרטית להוספת טבלאות ותוכן מסמך אחר | לפעמים קשה ליצור סוגים רבים של טבלאות בו זמנית עם אותו בונה |
| Via DOM |  Fits in טוב יותר עם קוד מקיף שיוצר ומכניס נקודות ישירות לתוך הבלוטות ישירות לתוך DOM בלי להשתמש **DocumentBuilder** | השולחן נוצר "ריק": לפני ביצוע רוב הפעולות, עליך להתקשר [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) ליצור צומת ילדים חסר |
| מתוך HTML | יכול ליצור שולחן חדש ממקור HTML באמצעות תגים כמו `<table>`, `<tr>`, `<td>` | לא הכל אפשרי Microsoft Word ניתן ליישם פורמטים בטבלה ב-HTML |
| מקליד שולחן קיים | אתה יכול ליצור עותק של שולחן קיים תוך שמירה על כל שורות ותבנית תאים | יש להסיר את בלוטות הילד המתאים לפני שהשולחן מוכן לשימוש |