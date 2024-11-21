---
title: עבודה עם רשימות Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם רשימות
linktitle: עבודה עם רשימות
description: "מבוא למספר פורמט ב Aspose.Words עבור Java."
type: docs
weight: 200
url: /he/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

רשימה ב Microsoft Word מסמך הוא קבוצה של תכונות עיצוב רשימה. רשימות ניתן להשתמש במסמכים שלך כדי לעצב, לארגן ולהדגיש טקסט. רשימות הן דרך מצוינת לארגן נתונים במסמכים, והן מקלות על הקוראים להבין נקודות מפתח.

כל רשימה יכולה להיות עד 9 רמות ותבנית נכסים, כגון סגנון מספר, להתחיל ערך, indent, מיקום הכרטיסייה, ואחרים מוגדרים בנפרד לכל רמה.

מאמר זה מתאר עבודה מעשית עם רשימות באמצעות Aspose.Words.

## יצירת רשימות על ידי Applying List Format

Aspose.Words מאפשר יצירת רשימות קלה על ידי יישום רשימה. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) מספק [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) רכוש מחזיר **ListFormat** אובייקט לאובייקט הזה יש כמה שיטות להתחיל ולסיים רשימה ולהגביר/decrease the Indent. ישנם שני סוגים של רשימות Microsoft Wordתגית: Bulleted and Numbered:

- כדי להתחיל רשימה מזוינת, התקשר [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- כדי להתחיל רשימה מספרית, התקשר [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

הכדור או המספר והפורמטים מתווספים לפסקה הנוכחית ולכל פסקאות נוספות שנוצרו באמצעות שימוש **DocumentBuilder** עד [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) נקרא להפסיק את פורמט הרשימה.

במסמכים של Word, רשימות עשויות להכיל עד תשע רמות. רשימת העיצוב של כל רמה מפרטת מה כדור או מספר משמש, נשאר בdent, חלל בין הכדור לטקסט וכו '. השיטות הבאות משנות את רמת הרשימה וליישם את המאפיינים החדשים של הרמה:

- - כדי להגדיל את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- - כדי להפחית את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

השיטות משנות את רמת הרשימה וליישם את התכונות המפורמטיות של הרמה החדשה.

{{% alert color="primary" %}}

אתה יכול גם להשתמש [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) רכוש כדי להגיע או להגדיר את רמת הרשימה עבור הסעיף. רמות הרשימה מסומנים 0 עד 8.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לבנות רשימה רב-דרגית:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## המונחים: a list Level

אובייקטים ברמת הרשימה נוצרים באופן אוטומטי כאשר נוצרת רשימה. השתמש בתכונות ובשיטות של [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) הכיתה לשלוט בפורמט של רמות בודדות של רשימה.

## רשימת פריטים לכל סעיף

באפשרותך להפעיל מחדש רשימה עבור כל סעיף באמצעות [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) רכוש. שים לב כי אפשרות זו נתמכת רק בפורמטי RTF, DOC ו- DOCX. אפשרות זו תכתב ל- DOCX רק אם ה-OoxmlCompliance גבוה יותר אז אקסה376.

הדוגמה הבאה של הקוד מראה כיצד ליצור רשימה ולהפעיל אותה מחדש לכל חלק:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

