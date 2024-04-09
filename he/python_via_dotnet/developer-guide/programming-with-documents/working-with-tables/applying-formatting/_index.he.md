---
title: עיצוב שולחן Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: החל פורמט
linktitle: החל פורמט
description: "עיצוב שולחן בפרטים באמצעות Python. שימוש בשימוש Python לעצב כל חלק מהשולחן."
type: docs
weight: 70
url: /he/python-net/applying-formatting/
---

כל אלמנט של שולחן ניתן ליישם עם פורמט שונה. לדוגמה, עיצוב שולחן יהיה מיושם על השולחן כולו, חתירה שורות רק שורות מסוימות, התא פורמט רק תאים מסוימים.

Aspose.Words מספק עשיר API כדי להחזיר וליישם פורמט בטבלה. אתה יכול להשתמש [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/), ו [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) חסרונות כדי להגדיר את הפורמט.

במאמר זה, נדבר על איך ליישם פורמט של צמתות שולחן שונות ומה טבלה מעצבת הגדרות Aspose.Words תומך.

## המונחים: different nodes

בסעיף זה, נבחן את החלת הפורמט לצומתי שולחן שונים.

### עיצוב שולחן

כדי ליישם פורמט בטבלה, אתה יכול להשתמש בנכסים הזמינים על המקביל **Table** המונחים: [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/), ו [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) שיעורים.

{{% alert color="primary" %}}

שים לב כי השולחן חייב להיות לפחות שורה אחת לפני שניתן ליישם את תכונות השולחן. כלומר, כאשר בונים שולחן עם [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), פורמט זה חייב להיעשות לאחר הקריאה הראשונה [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), או אחרי השורה הראשונה מותווסף לשולחן, או כאשר צמתים מוכנסים ישירות לתוך הבקתה DOM.

{{% /alert %}}

התמונות למטה מציגות ייצוג של **Table** עיצוב תכונות Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

הדוגמה הבאה של הקוד מראה כיצד ליישם גבול מתאר לשולחן:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לבנות שולחן עם כל הגבולות המותרים (גריד):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### המונחים:

**המונחים:** עיצוב ניתן לשלוט באמצעות [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/), ו [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) שיעורים.

{{% alert color="primary" %}}

שימו לב **Row** יכול להיות רק ילד של **Table**. במקביל, צריך להיות לפחות אחד **Cell** בתוך **Row** כך שניתן ליישם את הפורמט הזה.

{{% /alert %}}

התמונות למטה מציגות ייצוג של **Row** עיצוב תכונות Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


הדוגמה הבאה של הקוד מראה כיצד לשנות את שורת השולחן:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### פורמט רמת תאים

פורמט ברמת תאים נשלט על ידי [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/), ו [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) שיעורים.

{{% alert color="primary" %}}

שימו לב **Cell** יכול להיות רק ילד של **Row**. במקביל, צריך להיות לפחות אחד [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) בתוך **Cell** כך שניתן ליישם את הפורמט הזה.

בנוסף **Paragraph**, אתה יכול גם להוסיף **Table** לתוך **Cell**.

{{% /alert %}}

התמונות למטה מציגות ייצוג של **Cell** עיצוב תכונות Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


הדוגמה הבאה של הקוד מראה כיצד לשנות את הפורמט של תא שולחן:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להגדיר את כמות החלל (בנקודות) כדי להוסיף לשמאל / ימין / ימין / קידוד של התוכן של התא:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## המונחים: Row Heights

הדרך הפשוטה ביותר לקבוע את גובה השורות היא להשתמש **DocumentBuilder**. שימוש מתאים **RowFormat** תכונות, אתה יכול להגדיר את גובה ברירת המחדל או ליישם גובה שונה עבור כל שורה בטבלה.

In In In Aspose.Words, גובה טבלאות נשלט על ידי:

- הנכס בגובה שורות - [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- הנכס השולט לגובה לשורה נתונה - [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

במקביל, גובה שונה יכול להיות מוגדר לכל שורה - זה מאפשר לך לשלוט נרחב הגדרות השולחן.

{{% alert color="primary" %}}

אפשרויות חוק לסימון גובה האובייקט ניתן להגדיר באמצעות [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) אזהרה.

{{% /alert %}}

דוגמה הקוד הבא מראה כיצד ליצור שולחן המכיל תא יחיד וליישם פורמט שורות:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## תגית: Table and Cell Widths

שולחן בתוך שולחן Microsoft Word מסמך מספק מספר דרכים שונות לעצב מחדש את השולחן ואת התאים האישיים. תכונות אלה מאפשרות שליטה ניכרת על המראה וההתנהגות של השולחן, כך ש Aspose.Words תומך בהתנהגות הטבלאות, כמו Microsoft Word.

חשוב לדעת שרכיבי השולחן מציגים כמה תכונות שונות שיכולות להשפיע על רוחב השולחן הכולל, כמו גם תאים בודדים, מחושב:

- רוחב מועדף על השולחן
- רוחב מועדף על תאים בודדים
- אפשרות אוטומטית על השולחן

מאמר זה מפרט כיצד תכונות חישוב רוחב שולחן שונות לעבוד וכיצד לקבל שליטה מלאה על חישוב רוחב שולחן. זה
שימושי במיוחד כדי לדעת במקרים כאלה, שבו פריסת השולחן אינה צפויה.

{{% alert color="primary" %}}

ברוב המקרים, התא המועדף מומלץ מאשר רוחב השולחן. רוחב התא המועדף הוא יותר בקנה אחד עם מפרט פורמט DOCX, כמו גם Aspose.Words מודל

רוחב התא הוא למעשה ערך מחושב עבור פורמט DOCX. רוחב התא בפועל יכול להיות תלוי בדברים רבים. לדוגמה, שינוי שולי העמוד או רוחב השולחן המועדף יכול להשפיע על רוחב התא בפועל.

רוחב התא המועדף הוא נכס תא המאוחסן במסמך. זה לא תלוי בשום דבר ולא משתנה כאשר אתה משנה את השולחן או תכונות אחרות של התא.

{{% /alert %}}

{{% alert color="primary" %}}

כל התכונות והשיטות המתוארות במאמר זה קשורות לאופן שבו שולחנות עובדים Microsoft Word. לכן, ברוב המקרים, אם אתה בונה את השולחן שלך באופן רציונאלי, אבל קשה ליצור את השולחן הרצוי, אתה יכול לנסות באופן ויזואלי ליצור אותו באופן חזותי. Microsoft Word תחילה ולאחר מכן פשוט להעתיק את ערכי הפורמט לתוך היישום שלך.

{{% /alert %}}

### כיצד להשתמש Width מועדף

רוחב הרצוי של שולחן או תאים בודדים מוגדר באמצעות נכס רוחב המועדפת, שהוא הגודל כי אלמנט שואף להתאים. כלומר, את רוחב המועדפת ניתן להגדיר עבור כל השולחן או עבור תאים בודדים. במצבים מסוימים ייתכן שלא ניתן להתאים את רוחב זה בדיוק, אבל רוחב בפועל יהיה קרוב לערך זה ברוב המקרים.

סוג רוחב המתאים וערך נקבעים באמצעות שיטות של [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) קטגוריה:

- The [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) שיטה לפרט אוטו או "ללא רוחב מועד"
- The [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) שיטה לציין רוחב אחוז
- The [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) שיטה לציין את רוחב הנקודות

התמונות להלן מציגות ייצוג של תכונות הגדרת רוחב* * Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

דוגמה לאופן שבו אפשרויות אלה מוחלות על שולחן אמיתי במסמך ניתן לראות בתמונה למטה.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

לפני שתוכל להשתמש ברוחב המועדף בטבלה, עליך לוודא שהשולחן מכיל לפחות שורה אחת. הסיבה לכך היא ששולחן כזה מסתמך על Microsoft Word מסמך או במסמך שנוצר Aspose.Words הוא מאוחסן בשורות השולחן.

{{% /alert %}}

#### שם הסרטון: The Best Table or Cell Width

In In In Aspose.Words, רוחב שולחן ותאים נקבעים באמצעות [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) רכוש ו [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) רכוש, עם אפשרויות זמין [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) המונחים:

- - **Auto**, מה ששווה ערך ל-No המועדפת
- - **Percent**, אשר מתאים את האלמנט ביחס למרחב הזמין בחלון או בגודל מכולה, וחושף מחדש את הערך כאשר רוחב זמין משתנה
- - **Points**, אשר תואם את האלמנט של רוחב שצוין בנקודות

{{% alert color="primary" %}}

כברירת מחדל, ניתן לתאר שולחן כ- 100% מהמרחב הזמין בעמוד. במקרה זה, זה אומר שהשולחן ינסה לקחת את החלל בין שולי הדף הימני והשמאלי.

{{% /alert %}}

באמצעות [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) הנכס יתאים את רוחבו המועדף ביחס למיכלו: דף, עמוד טקסט, או תא שולחן חיצוני אם הוא שולחן מקונן.

לדוגמה הקוד הבא מראה כיצד להגדיר את השולחן ל- 50% רוחב העמוד:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

באמצעות [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) רכוש בתא נתון יתאים את רוחבו המועדף.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הגדרות רוחב העדיפות השונות:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### מציאת סוג וערך מועדפים

אתה יכול להשתמש [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) ו [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) תכונות למצוא את הפרטים היפים של השולחן או התא הרצוי.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את סוג רוחב המועדפת של תא שולחן:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### כיצד להגדיר Autofit

The The The [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) הנכס מאפשר לתאים בטבלה לגדול ולהתכווץ בהתאם לקריטריון שנבחר. לדוגמה, אתה יכול להשתמש **AutoFit to Window** אפשרות להתאים את השולחן לרוחב הדף, ואת **אוטומטי לתוכן** אפשרות לאפשר לכל תא לגדול או להתכווץ בהתאם לתוכן שלו.

{{% alert color="primary" %}}

בנוסף, **AllowAutoFit** ניתן להשתמש בנכס בשילוב עם רוחב תאים מועדף כדי לעצב תא שמתאים באופן אוטומטי לתוכן שלו, אבל יש לו גם רוחב ראשוני. במידת הצורך, רוחב התא יכול לגדול מעבר לרוחב זה.

{{% /alert %}}

כברירת מחדל, Aspose.Words הוספת שולחן חדש באמצעות **AutoFit to Window**. השולחן יהיה בגודל לפי רוחב העמוד הזמין. כדי לעצב מחדש שולחן, אתה יכול לקרוא [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) שיטה. שיטה זו מקבלת [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) הערכה שמציינת איזה סוג של אוטופיט מוחל על השולחן.

חשוב לדעת כי שיטת ה- Autofit היא למעשה קיצור דרך החל תכונות שונות בטבלה בו זמנית. אלה הם נכסים אשר למעשה נותנים לשולחן את ההתנהגות הנצפה. אנו נעסוק בתכונות אלה לכל אפשרות מתאימה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר שולחן לכווץ או לגדול כל תא לפי התוכן שלו:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### שולחן אוטומטי לחלון

כאשר מתאים לחלון מוחל על שולחן, הפעולות הבאות מבוצעות למעשה מאחורי הקלעים:

1.1 1. The The The **Table.AllowAutoFit** הנכס מופעל באופן אוטומטי עמודות בגודל כדי להתאים את התוכן הזמין, באמצעות שימוש **Table.PreferredWidth** ערך של 100%
2. **CellFormat.PreferredWidth** הוסר מכל תאי השולחן
      {{% alert color="primary" %}}
   שים לב שזה מעט שונה מה Microsoft Word התנהגות, שבה רוחבו המועדף של כל תא מוגדר לערכים מתאימים המבוססים על הגודל והתכנים הנוכחיים שלהם. Aspose.Words לא לעדכן את רוחב העדיפה, אז הם פשוט מתפזרים במקום.
      {{% /alert %}}
3. רוחב העמודה מחושב מחדש עבור תוכן השולחן הנוכחי - התוצאה הסופית היא שולחן שתופס את כל רוחב זמין
4. רוחב העמודות בטבלה משתנה באופן אוטומטי כאשר המשתמש עורך את הטקסט

הדוגמה הבאה של הקוד מראה כיצד להתאים שולחן לרוחב העמוד:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### שולחן אוטומטי לתוכן

כאשר השולחן מותקן את התוכן, השלבים הבאים מבוצעים למעשה מאחורי הקלעים:

1.1 1. The The The **Table.AllowAutoFit** הנכס ניתן באופן אוטומטי לשנות כל תא בהתאם לתוכן שלו

2. רוחב השולחן המועדף הוסר **Table.PreferredWidth**, **CellFormat.PreferredWidth** מוסר לכל תא שולחן
      {{% alert color="primary" %}}

   שים לב כי אפשרות זו Autofit מסירת את רוחב המועדפת של תאים, בדיוק כמו ב Microsoft Word. אם אתה רוצה לשמור על גודל העמודה ולהגדיל או להקטין את העמודות כדי להתאים את התוכן, עליך להגדיר את הטור. **Table.AllowAutoFit** רכוש **True** על עצמו ולא באמצעות קיצור דרך אוטומטי.{{% /alert %}}

3. רוחב העמודים מחושבים מחדש עבור תוכן השולחן הנוכחי - התוצאה הסופית היא שולחן שבו רוחב העמודה ורוחב השולחן כולו גדלים באופן אוטומטי כדי להתאים את התוכן כמו המשתמש לערוך את הטקסט

לדוגמה הקוד הבא מראה כיצד להתאים שולחן לתוכן שלו:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### AutoFit in Table ו השתמש בעמוד קבוע Widths

אם שולחן יש מוגבלות אוטומטית ורוחב עמודה קבוע משמשים במקום, השלבים הבאים מבוצעים:

1.1 1. **Table.AllowAutoFit** רכוש הוא מוגבלויות כך עמודות אינן צומחות או מתכווץ לתוכן שלהם
2. רוחבו המועדף של השולחן כולו הוסר **Table.PreferredWidth**, **CellFormat.PreferredWidth** הוסר מכל תאי השולחן
3. התוצאה הסופית היא שולחן אשר רוחב העמודה נקבע על ידי [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) רכוש, ואת העמודות שלו אינם עולים באופן אוטומטי כאשר המשתמש נכנס לטקסט או כאשר הדף הוא מחדש

{{% alert color="primary" %}}

שים לב שאם אין רוחב מוגדר **CellFormat.Width**, ערך ברירת המחדל של אינץ' אחד (72 נקודות) משמש.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להשבית את ההנעה ולאפשר רוחב קבוע עבור השולחן שצוין:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### שם הספר בלועזית: The Order of Precedence When Calculating Cell Width

Aspose.Words מאפשר למשתמשים להגדיר את רוחב השולחן או התא באמצעות פריטים מרובים, כולל [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) - שלה [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) הנכס נשאר בעיקר מגרסאות קודמות, עם זאת, הוא עדיין שימושי לפשט את רוחב התא.

חשוב לדעת כי **CellFormat.Width** רכוש עובד אחרת בהתאם לתכונות רוחב אחרות כבר קיימות בטבלה.

Aspose.Words שימוש בסדר הבא לחישוב רוחב תאים:

|  הזמנה |  רכוש |  תיאור תיאור |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) נקבע |  אם **AutoFit** ניתן:<br/>- השולחן עשוי לגדול מעבר לרוחב המועדפת להכיל את התוכן - בדרך כלל אינו מתכווץ מתחת לרוחב המועדפת<br/>כל שינוי **CellFormat.Width** הערך מתעלם והתא מתאים לתוכן שלו במקום |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) עם ערך **Points** או **Percent** |  **CellFormat.Width** התעלמו |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) עם ערך **Auto** |  הערך מהערך **CellFormat.Width** הוא מועתק והופך לרוחב המועדף של התא (בנקודות) |

{{% alert color="primary" %}}

כל שינוי ברכוש הרוחב אינו מעודכן ברוחב המועדף, וחייב להיות מיושם במקום זאת לרוחב המועדף.

{{% /alert %}}

{{% alert color="primary" %}}

בעת יצירת פריסת שולחן קבועה, ציין את רוחב התא. תא ללא רוחב לא ניתן להציל בפורמט DOC. פורמטים של מסמך מלבד DOC, כגון DOCX, מאפשרים, בעיקרון, להציל תאים ללא רוחב פריסת שולחן קבועה.

{{% /alert %}}

## לאפשר ספיגה בין תאים

אתה יכול לקבל או להגדיר שטח נוסף בין תאי שולחן דומים לאופציה "לחיצת ים" ב Microsoft Word. ניתן לעשות זאת באמצעות [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) רכוש.

דוגמה לאופן שבו אפשרויות אלה מוחלות על שולחן אמיתי במסמך ניתן לראות בתמונה למטה.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-python" style="width:500px"/>

הדוגמה הבאה של הקוד מראה כיצד להגדיר את התכווצות בין התאים:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## הפעלת גבולות ושינג

גבולות וגילוח ניתן ליישם גם על השולחן כולו באמצעות [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) ו [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), או רק לתאים ספציפיים באמצעות [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) ו [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). בנוסף, ניתן להגדיר גבולות שורות באמצעות [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), עם זאת, לא ניתן ליישם את הגילוח בדרך זו.

התמונות למטה מציגות את הגדרות הגבול והצל Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

הדוגמה הבאה של הקוד מראה כיצד לעצב שולחן ותא עם גבולות שונים ושמיכות:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}