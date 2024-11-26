---
title: שינוי סגנון שולחן במסמך Word
second_title: Aspose.Words עבור .NET
articleTitle: עיצוב שולחן
linktitle: עיצוב שולחן
description: "פורמט שולחן מתקדם C#. יצירת סגנון שולחן באמצעות C#. שימוש בסגנון שולחן C#."
type: docs
weight: 80
url: /he/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

סגנון שולחן מגדיר סט של פורמט שניתן ליישם בקלות על שולחן. עיצוב כגון גבולות, גילוח, יישור ופונט יכול להיות מוגדר בסגנון שולחן וליישם טבלאות רבות למראה עקבי.

Aspose.Words תומך ביישום סגנון שולחן לשולחן וגם לקרוא תכונות של כל סגנון שולחן. סגנונות שולחן נשמרים במהלך טעינה והצלת בדרכים הבאות:

- סגנונות שולחן בפורמט DOCX ו- WordML נשמרים בעת טעינה והצלת פורמטים אלה
- סגנונות שולחן נשמרים בעת טעינה והצלת בפורמט DOC (אך לא לכל פורמט אחר)
- - כאשר ייצוא לפורמטים אחרים, ביצוע או הדפסה, סגנונות שולחן מורחבים לפורמט ישיר בטבלה, כך שכל הפורמט נשמר

## יצירת סגנון שולחן

המשתמש יכול ליצור סגנון חדש ולהוסיף אותו לאוסף סגנון. The The The [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) השיטה משמשת ליצירת סגנון שולחן חדש.

לדוגמה הקוד הבא מראה כיצד ליצור סגנון שולחן חדש מוגדר למשתמש:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## העתקה של סגנון שולחן קיים

אם יש צורך, אתה יכול להעתיק סגנון שולחן שכבר קיים במסמך מסוים לתוך אוסף הסגנון שלך תוך שימוש. `AddCopy` שיטה.

חשוב לדעת כי עם עותק זה, הסגנונות המקושרים מועתקים גם.

לדוגמה הקוד הבא מראה כיצד לייבא סגנון ממכתב אחד למסמך אחר:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## יישום סגנון שולחן קיים

Aspose.Words מספק [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) תורשתי [Style](https://reference.aspose.com/words/net/aspose.words/style/) מעמד. **TableStyle** מאפשר למשתמש ליישם אפשרויות סגנון שונות כגון גילוח, padding, indentation, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) ו [Font](https://reference.aspose.com/words/net/aspose.words/style/font/), וכו'.

בנוסף, Aspose.Words מספק [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) שיעור וכמה תכונות של `Table` בכיתה כדי לציין איזה סגנון שולחן אנו עובדים עם: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/), ו [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words גם מספק [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) מעמד המייצג פורמט מיוחד החל על שטח מסוים של שולחן עם סגנון שולחן מוקצה, ואת הפורמט המיוחד [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) זה מייצג אוסף **ConditionalStyle** אובייקטים. אוסף זה מכיל סט קבוע של פריטים המייצגים פריט אחד לכל ערך של [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) סוג של השראה The The The **ConditionalStyleType** enumeration מגדיר את כל אזורי השולחן האפשריים שאליה ניתן להגדיר פורמט מותני בסגנון שולחן.

במקרה זה, פורמט מותני יכול להיות מוגדר עבור כל אזור שולחן אפשרי מוגדר תחת סוג enumeration ConditionalStyleType.

הדוגמה הבאה של הקוד מראה כיצד להגדיר פורמט מותני לשורה אחורית של השולחן:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

אתה יכול גם לבחור אילו חלקי שולחן ליישם סגנונות, כגון עמודה ראשונה, עמודה אחרונה, שורות מעוגלות. הם רשומים ב [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) הארה והם מוחלים דרך [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) רכוש. The The The **TableStyleOptions** enumeration מאפשר שילוב bitwise של תכונות אלה.

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן חדש עם סגנון שולחן מוחל:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

התמונות למטה מציגות ייצוג של **Table Styles** פנימה Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## לקחת פורמט מסגנון שולחן וליישם אותו כפורמט ישיר

Aspose.Words גם מספק [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) שיטה לקחת פורמט נמצא על סגנון שולחן ולהרחיב אותו על השורות והתאים של השולחן כפורמט ישיר. נסו לשלב פורמט עם סגנון שולחן וסגנון תאים.

{{% alert color="primary" %}}

שיטה זו לא תגבר על כל פורמט אחר שכבר החל על השולחן דרך פורמט שורות או תא.

{{% /alert %}}

דוגמה הקוד הבא מראה כיצד להרחיב את הפורמט מסגנונות על שורות שולחן ותאים כפורמט ישיר:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
