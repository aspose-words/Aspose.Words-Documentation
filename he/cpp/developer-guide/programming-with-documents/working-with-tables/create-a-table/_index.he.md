---
title: כיצד ליצור טבלה ב C++
second_title: Aspose.Words עבור C++
articleTitle: צור טבלה
linktitle: צור טבלה
description: "דרכים שונות ליצור טבלאות באמצעות C++. צור טבלה ב C++ עבור המסמך שלך. הוסף טבלה ב C++."
type: docs
weight: 20
url: /he/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words מאפשר למשתמשים ליצור טבלאות במסמך מאפס ומספק מספר שיטות שונות לעשות זאת. מאמר זה מציג פרטים כיצד להוסיף טבלאות מעוצבות למסמך שלך בכל שיטה, כמו גם השוואה של כל שיטה בסוף המאמר.

## ברירת מחדל שולחן סגנונות

הטבלה החדשה שנוצרה מקבלת ערכי ברירת מחדל דומים לאלה המשמשים ב Microsoft Word:

| רכוש טבלה | ברירת מחדל ב Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 פט |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

טבלה יכולה להיות מוטבעת אם היא ממוקמת היטב, או צפה אם ניתן למקם אותה בכל מקום בדף. כברירת מחדל, Aspose.Words תמיד יוצר טבלאות מוטבעות.

{{% /alert %}}

## צור טבלה עם DocumentBuilder

ב Aspose.Words, משתמשים יכולים ליצור טבלה במסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). האלגוריתם הבסיסי ליצירת טבלה הוא כדלקמן:

1. התחל את הטבלה עם [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. הוסף תא לטבלה באמצעות [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - פעולה זו מתחילה אוטומטית שורה חדשה
3. לחלופין, השתמש במאפיין [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) כדי לציין עיצוב תאים
4. הכנס את תוכן התא בשיטות **DocumentBuilder** המתאימות כגון [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) ואחרות
5. חזור על שלבים 2-4 עד להשלמת השורה
6. התקשר [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) לסיום השורה הנוכחית
7. לחלופין, השתמש במאפיין [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) כדי לציין עיצוב שורות
8. חזור על שלבים 2-7 עד להשלמת הטבלה
9. התקשר [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) לסיום בניית השולחן

{{% alert color="primary" %}}

פרטים חשובים:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) יכול להיקרא גם בתוך תא, ובמקרה זה הוא מתחיל ביצירת טבלה מקוננת בתוך התא.
- לאחר התקשרות [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), נוצר תא חדש, וכל תוכן שתוסיף בשיטות אחרות של המחלקה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) יתווסף לתא הנוכחי. כדי ליצור תא חדש באותה שורה, התקשר שוב **InsertCell**.
- אם **InsertCell** נקרא מיד אחרי [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) וסוף שורה, הטבלה תמשיך בשורה חדשה.
- שיטת [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) לסיום הטבלה צריכה להיקרא רק פעם אחת לאחר קריאה **EndRow**. קריאה **EndTable** מעבירה את הסמן מהתא הנוכחי למצב מיד אחרי הטבלה.

{{% /alert %}}

ניתן לראות בבירור את תהליך יצירת הטבלה בתמונה הבאה:

![creating-table-process](creating-table-process.jpg)

דוגמת הקוד הבאה מראה כיצד ליצור טבלה פשוטה באמצעות **DocumentBuilder** עם עיצוב ברירת מחדל:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

דוגמת הקוד הבאה מראה כיצד ליצור טבלה מעוצבת באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

דוגמת הקוד הבאה מראה כיצד להוסיף טבלה מקוננת באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## צור טבלה באמצעות DOM (מודל אובייקט מסמך)

ניתן להוסיף טבלאות ישירות לתוך DOM על ידי הוספת צומת [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) חדשה במיקום מסוים.

שימו לב שמיד לאחר יצירת צומת הטבלה, הטבלה עצמה תהיה ריקה לחלוטין, כלומר היא עדיין לא מכילה שורות ותאים. כדי להוסיף שורות ותאים לטבלה, הוסף את הצמתים המתאימים [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) ל DOM.

{{% alert color="primary" %}}

שיטה זו ליצירת טבלה משתמשת באותן ברירות מחדל של טבלה כמו בשימוש ב - **DocumentBuilder**.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד לבנות טבלה חדשה מאפס על ידי הוספת צמתי הילד המתאימים לעץ המסמך:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## צור טבלה מ HTML

Aspose.Words תומך בהכנסת תוכן למסמך ממקור HTML בשיטת [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). הקלט יכול להיות שלם HTML עמוד או רק קטע חלקי.

בשיטת **InsertHtml**, משתמשים יכולים להכניס טבלאות למסמך באמצעות תגי טבלה כמו `<table>`, `<tr>`, `<td>`.

דוגמת הקוד הבאה מראה כיצד להכניס טבלה למסמך ממחרוזת המכילה תגיות HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## הכנס עותק של טבלה קיימת

לעתים קרובות יש צורך ליצור טבלה המבוססת על טבלה שכבר קיימת במסמך. הדרך הקלה ביותר לשכפל טבלה תוך שמירה על כל העיצוב היא לשכפל את צומת הטבלה בשיטת [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

ניתן להשתמש באותה טכניקה כדי להוסיף עותקים של שורה או תא קיימים לטבלה.

דוגמת הקוד הבאה מראה כיצד לשכפל טבלה באמצעות בוני צומת:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

דוגמת הקוד הבאה מראה כיצד לשכפל את השורה האחרונה בטבלה ולהוסיף אותה לטבלה:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

אם אתה מסתכל על יצירת טבלאות במסמך שצומחות באופן דינמי עם כל רשומה ממקור הנתונים שלך, השיטה לעיל אינה מומלצת. במקום זאת, הפלט הרצוי מושגת בקלות רבה יותר באמצעות Mail merge עם אזורים. אתה יכול ללמוד עוד על טכניקה זו ב [Mail Merge עם אזורים](/words/cpp/types-of-mail-merge-operations/) סעיף.

## השווה דרכים ליצירת טבלה

Aspose.Words מספק מספר שיטות ליצירת טבלאות חדשות במסמך. לכל שיטה יש יתרונות וחסרונות משלה, ולכן הבחירה שבה להשתמש לעתים קרובות תלוי במצב הספציפי.

בואו נסתכל מקרוב על דרכים אלה של יצירת טבלאות ולהשוות את היתרונות והחסרונות שלהם:

| שיטה | יתרונות | חסרונות |
| :- | :- | :- |
| `DocumentBuilder` | השיטה הסטנדרטית להכנסת טבלאות ותוכן מסמכים אחר | לפעמים קשה ליצור סוגים רבים של שולחנות בו זמנית עם אותו מופע בונה |
| דרך DOM | מתאים יותר עם קוד שמסביב שיוצר ומכניס צמתים ישירות לתוך DOM ללא שימוש **DocumentBuilder** | הטבלה נוצרת "ריק": לפני ביצוע רוב הפעולות, עליך להתקשר [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) כדי ליצור צמתים חסרים של ילדים |
| מ HTML | ניתן ליצור טבלה חדשה מ HTML מקור באמצעות תגים כמו `<table>`, `<tr>`, `<td>` | לא ניתן להחיל את כל פורמטי הטבלה Microsoft Word על HTML |
| שיבוט טבלה קיימת | ניתן ליצור עותק של טבלה קיימת תוך שמירה על כל עיצוב השורות והתאים | יש להסיר את הצמתים המתאימים לפני שהטבלה מוכנה לשימוש |
