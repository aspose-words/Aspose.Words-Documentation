---
title: שינוי סגנון שולחן Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עיצוב שולחן
linktitle: עיצוב שולחן
description: "פורמט שולחן מתקדם C#. יצירת סגנון שולחן באמצעות Python. שימוש בסגנון שולחן Python."
type: docs
weight: 80
url: /he/python-net/working-with-tablestyle/
---

סגנון שולחן מגדיר סט של פורמט שניתן ליישם בקלות על שולחן. עיצוב כגון גבולות, גילוח, יישור ופונט יכול להיות מוגדר בסגנון שולחן וליישם טבלאות רבות למראה עקבי.

Aspose.Words תומך ביישום סגנון שולחן לשולחן וגם לקרוא תכונות של כל סגנון שולחן. סגנונות שולחן נשמרים במהלך טעינה והצלת בדרכים הבאות:

- סגנונות שולחן בפורמט DOCX ו- WordML נשמרים בעת טעינה והצלת פורמטים אלה
- סגנונות שולחן נשמרים בעת טעינה והצלת בפורמט DOC (אך לא לכל פורמט אחר)
- - כאשר ייצוא לפורמטים אחרים, ביצוע או הדפסה, סגנונות שולחן מורחבים לפורמט ישיר בטבלה, כך שכל הפורמט נשמר

## יצירת סגנון שולחן

המשתמש יכול ליצור סגנון חדש ולהוסיף אותו לאוסף סגנון. The The The [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) השיטה משמשת ליצירת סגנון שולחן חדש.

לדוגמה הקוד הבא מראה כיצד ליצור סגנון שולחן חדש מוגדר למשתמש:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## העתקה של סגנון שולחן קיים

אם יש צורך, אתה יכול להעתיק סגנון שולחן שכבר קיים במסמך מסוים לתוך אוסף הסגנון שלך תוך שימוש. `AddCopy` שיטה.

חשוב לדעת כי עם עותק זה, הסגנונות המקושרים מועתקים גם.

לדוגמה הקוד הבא מראה כיצד לייבא סגנון ממכתב אחד למסמך אחר:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## יישום סגנון שולחן קיים

Aspose.Words מספק [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) תורשתי [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) מעמד. **TableStyle** מאפשר למשתמש ליישם אפשרויות סגנון שונות כגון גילוח, padding, indentation, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) ו [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), וכו'.

בנוסף, Aspose.Words מספק [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) שיעור וכמה תכונות של `Table` בכיתה כדי לציין איזה סגנון שולחן אנו עובדים עם: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), ו [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words גם מספק [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) מעמד המייצג פורמט מיוחד החל על שטח מסוים של שולחן עם סגנון שולחן מוקצה, ואת הפורמט המיוחד [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) זה מייצג אוסף **ConditionalStyle** אובייקטים. אוסף זה מכיל סט קבוע של פריטים המייצגים פריט אחד לכל ערך של [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) סוג של השראה The The The **ConditionalStyleType** enumeration מגדיר את כל אזורי השולחן האפשריים שאליה ניתן להגדיר פורמט מותני בסגנון שולחן.

במקרה זה, פורמט מותני יכול להיות מוגדר עבור כל אזור שולחן אפשרי מוגדר תחת סוג enumeration ConditionalStyleType.

הדוגמה הבאה של הקוד מראה כיצד להגדיר פורמט מותני לשורה אחורית של השולחן:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

אתה יכול גם לבחור אילו חלקי שולחן ליישם סגנונות, כגון עמודה ראשונה, עמודה אחרונה, שורות מעוגלות. הם רשומים ב [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) הארה והם מוחלים דרך [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) רכוש. The The The **TableStyleOptions** enumeration מאפשר שילוב bitwise של תכונות אלה.

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן חדש עם סגנון שולחן מוחל:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

התמונות למטה מציגות ייצוג של **Table Styles** פנימה Microsoft Word התכונות המתאימות שלהם Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## עבודה עם סגנונות שולחן

סגנון שולחן מגדיר סט של פורמט שניתן ליישם בקלות על שולחן. עיצוב כגון גבולות, גילוח, יישור וגופן ניתן להגדיר בסגנון שולחן וליישם טבלאות רבות למראה עקבי.

Aspose.Words תומך ביישום סגנון שולחן לשולחן וגם לקרוא תכונות של כל סגנון שולחן. סגנונות שולחן נשמרים במהלך טעינה והצלת בדרכים הבאות:

- סגנונות שולחן בפורמטים DOCX ו- WordML נשמרים בעת טעינה והצלת פורמטים אלה.
- סגנונות שולחן נשמרים בעת טעינה והצלת בפורמט DOC (אך לא לכל פורמט אחר).
- בעת הייצוא לפורמטים אחרים, ביצוע או הדפסה, סגנונות שולחן מורחבים לפורמט ישיר על השולחן כך שכל הפורמט נשמר.

כיום אי אפשר ליצור סגנונות שולחן חדשים. אתה יכול רק ליישם סגנונות שולחן בנוי או סגנונות שולחן מותאם אישית שכבר קיימים במסמך בטבלה

## לקחת פורמט מסגנון שולחן וליישם אותו כפורמט ישיר

Aspose.Words גם מספק [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) שיטה לקחת פורמט נמצא על סגנון שולחן ולהרחיב אותו על השורות והתאים של השולחן כפורמט ישיר. נסו לשלב פורמט עם סגנון שולחן וסגנון תאים.

{{% alert color="primary" %}}

שיטה זו לא תגבר על כל פורמט אחר שכבר החל על השולחן דרך פורמט שורות או תא.

{{% /alert %}}

דוגמה הקוד הבא מראה כיצד להרחיב את הפורמט מסגנונות על שורות שולחן ותאים כפורמט ישיר:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}