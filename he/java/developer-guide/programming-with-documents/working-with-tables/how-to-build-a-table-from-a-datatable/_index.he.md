---
title: איך לבנות שולחן משולחן `DataTable` פנימה Java
second_title: Aspose.Words עבור Java
articleTitle: לבנות שולחן מ `DataTable`
linktitle: לבנות שולחן מ `DataTable`
description: "דוגמה לטבלת מסמכים מילוי ממסד נתונים חיצוני Java."
type: docs
weight: 130
url: /he/java/how-to-build-a-table-from-a-datatable/
---

לעתים קרובות היישום שלך ימשוך נתונים ממסד נתונים ולאחסן אותו בצורה של **DataTable**. ייתכן שתרצה להוסיף בקלות נתונים אלה לתוך המסמך שלך כשולחן חדש וליישם במהירות פורמט לכל השולחן.

{{% alert color="primary" %}}

שים לב כי הדרך המועדפת להכניס נתונים מ **DataTable** לתוך שולחן מסמך הוא באמצעות [Mail Merge עם אזורים](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). הטכניקה המוצגת במאמר זה מוצעת רק אם אתה לא יכול ליצור תבנית מתאימה לפני כן כדי למזג נתונים עם, במילים אחרות, אם אתה צריך הכל כדי לקרות באופן מתודולוגי.

{{% /alert %}}

שימוש Aspose.Words, אתה יכול בקלות לשחזר נתונים ממסד נתונים ולאחסן אותו כשולחן:

1.1 1. ליצור חדש [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) אובייקט על [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1.1 1. התחל שולחן חדש באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1.1 1. אם אנו רוצים להוסיף את השמות של כל אחד מהעמודות שלנו **DataTable** כשורה אחורית, הוא מחלחל דרך כל עמודה נתונים וכותב את שמות העמודה לשורה בטבלה.
1.1 1. דרך כל אחד **DataRow** בתוך **DataTable**:
   1.לעבור כל אובייקט ב **DataRow**.
   1 הכנס את האובייקט לתוך המסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). השיטה המשמשת תלויה בסוג האובייקט מוכנס e.g [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) לטקסט ו [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) עבור מערך עוטה המייצג תמונה.
   בסופו של עיבוד של שורת הנתונים מסתיים השורה שנוצרת על ידי [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) באמצעות [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1.1 1. פעם כל שורות מן **DataTable** מעובד לסיים את השולחן באמצעות קריאה [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1.1 1. לבסוף, אנו יכולים להגדיר את סגנון השולחן הרצוי באמצעות אחד מתכונות השולחן המתאימות כגון: [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) ליישם באופן אוטומטי פורמט לכל השולחן.
   הנתונים הבאים שלנו **DataTable** נעשה שימוש בדוגמה זו:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

דוגמה לקוד הבא מראה כיצד לבצע את האלגוריתם לעיל Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

לאחר מכן ניתן לקרוא את השיטה בקלות **DocumentBuilder** ונתונים.

הדוגמה הבאה של הקוד מראה כיצד לייבא את הנתונים מ- `DataTable` הכנס אותו לשולחן חדש במסמך:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

השולחן המוצג בתמונה למטה מיוצר על ידי הפעלת הקוד לעיל.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
