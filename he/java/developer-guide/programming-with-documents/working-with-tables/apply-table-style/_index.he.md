---
title: עבודה עם סגנונות שולחן Java
second_title: Aspose.Words עבור Java
articleTitle: עיצוב שולחן
linktitle: עיצוב שולחן
description: "פורמט שולחן מתקדם Java. יצירת סגנון שולחן באמצעות Java. מבוא לפורמט שולחן מתקדם, סגנונות שולחן באמצעות Java."
type: docs
weight: 80
url: /he/java/working-with-tablestyle/
---

סגנון שולחן מגדיר סט של פורמט שניתן להחיל בקלות על שולחן. עיצוב כגון גבולות, גילוח, יישור ופונט יכול להיות מוגדר בסגנון שולחן וליישם טבלאות רבות למראה עקבי.

Aspose.Words תומך ביישום סגנון שולחן לשולחן וגם לקרוא תכונות של כל סגנון שולחן. סגנונות שולחן נשמרים במהלך טעינה והצלת בדרכים הבאות:

- סגנונות שולחן בפורמט DOCX ו- WordML נשמרים בעת טעינה והצלת פורמטים אלה
- סגנונות שולחן נשמרים בעת טעינה והצלת בפורמט DOC (אך לא לכל פורמט אחר)
- - כאשר ייצוא לפורמטים אחרים, ביצוע או הדפסה, סגנונות שולחן מורחבים לפורמט ישיר בטבלה, כך שכל הפורמט נשמר

## יצירת סגנון שולחן

המשתמש יכול ליצור סגנון חדש ולהוסיף אותו לאוסף סגנון. The The The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) שיטה משמשת ליצירת סגנון שולחן חדש.

לדוגמה הקוד הבא מראה כיצד ליצור סגנון שולחן חדש מוגדר למשתמש:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## העתקה של סגנון שולחן קיים

אם יש צורך, אתה יכול להעתיק סגנון שולחן שכבר קיים במסמך מסוים לתוך אוסף הסגנון שלך תוך שימוש. `AddCopy` שיטה.

חשוב לדעת כי עם עותק זה, הסגנונות המקושרים מועתקים גם.

הדוגמה הבאה של הקוד מראה כיצד לייבא סגנון ממכתב אחד למסמך אחר:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## יישום סגנון שולחן קיים

Aspose.Words מספק [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) תורשתי [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) מעמד. **TableStyle** מאפשר למשתמש ליישם אפשרויות סגנון שונות כגון גילוח, padding, indentation, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) ו [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), וכו'.

בנוסף, Aspose.Words מספק [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) שיעור וכמה תכונות של `Table` בכיתה כדי לציין איזה סגנון שולחן אנו עובדים עם: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), ו [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words גם מספק [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) מעמד המייצג פורמט מיוחד החל על שטח מסוים של שולחן עם סגנון שולחן מוקצה, ואת הפורמט המיוחד [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) זה מייצג אוסף **ConditionalStyle** אובייקטים. אוסף זה מכיל סט קבוע של פריטים המייצגים פריט אחד לכל ערך של [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) סוג השראה The The The **ConditionalStyleType** enumeration מגדיר את כל אזורי השולחן האפשריים שאליה ניתן להגדיר פורמט מותני בסגנון שולחן.

במקרה זה, פורמט מותני יכול להיות מוגדר עבור כל אזור שולחן אפשרי מוגדר תחת סוג enumeration ConditionalStyleType.

הדוגמה הבאה של הקוד מראה כיצד להגדיר פורמט מותני לשורה אחורית של השולחן:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

אתה יכול גם לבחור אילו חלקי שולחן ליישם סגנונות, כגון עמודה ראשונה, עמודה אחרונה, שורות מעוגלות. הם רשומים ב [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) הארה והם מוחלים דרך [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) רכוש. The The The **TableStyleOptions** enumeration מאפשר שילוב bitwise של תכונות אלה.

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן חדש עם סגנון שולחן מוחל:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

התמונות למטה מציגות ייצוג של **Table Styles** פנימה Microsoft Word תכונותיהם המקבילות Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## לקחת פורמט מסגנון שולחן וליישם אותו כפורמט ישיר

Aspose.Words גם מספק [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) שיטה לקחת פורמט נמצא על סגנון שולחן ולהרחיב אותו על השורות והתאים של השולחן כפורמט ישיר. נסו לשלב פורמט עם סגנון שולחן וסגנון תאים.

{{% alert color="primary" %}}

שיטה זו לא תגבר על כל פורמט אחר שכבר החל על השולחן דרך פורמט שורות או תא.

{{% /alert %}}

דוגמה הקוד הבא מראה כיצד להרחיב את הפורמט מסגנונות על שורות ותאים כפורמט ישיר:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}