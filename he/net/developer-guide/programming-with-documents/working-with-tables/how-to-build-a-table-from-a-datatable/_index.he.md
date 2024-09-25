---
title: איך לבנות שולחן משולחן `DataTable` פנימה C#
second_title: Aspose.Words עבור .NET
articleTitle: לבנות שולחן מ `DataTable`
linktitle: לבנות שולחן מ `DataTable`
description: "דוגמה לטבלת מסמכים מילוי ממסד נתונים חיצוני C#."
type: docs
weight: 120
url: /he/net/how-to-build-a-table-from-a-datatable/
---

לעתים קרובות היישום שלך ימשוך נתונים ממסד נתונים ולאחסן אותו בצורה של **DataTable**. אתה יכול בקלות להוסיף נתונים אלה לתוך המסמך שלך כשולחן חדש וליישם במהירות פורמט לכל השולחן.

{{% alert color="primary" %}}

שים לב כי הדרך המועדפת להכניס נתונים מ **DataTable** לתוך שולחן מסמך הוא באמצעות [Mail Merge עם אזורים](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). הטכניקה המוצגת במאמר זה מוצעת רק אם אתה לא יכול ליצור תבנית מתאימה לפני יד כדי למזג נתונים עם, במילים אחרות אם אתה צריך הכל כדי לקרות באופן מתודולוגי.

{{% /alert %}}

שימוש Aspose.Words, אתה יכול בקלות לשחזר נתונים ממסד נתונים ולאחסן אותו כשולחן:

1.1 1. ליצור חדש **DocumentBuilder** אובייקט על **Document**.
1.1 1. התחל שולחן חדש באמצעות **DocumentBuilder**.
1.1 1. אם אנו רוצים להוסיף את השמות של כל אחד מהעמודות שלנו **DataTable** כשורה אחורית, הוא מחלחל דרך כל עמודה נתונים וכותב את שמות העמודה לשורה בטבלה.
1.1 1. דרך כל אחד **DataRow** בתוך **DataTable**:
   1.לעבור כל אובייקט ב **DataRow**.
   1 הכנס את האובייקט אל המסמך באמצעות **DocumentBuilder**. השיטה המשמשת תלויה בסוג האובייקט מוכנס e.g **DocumentBuilder.Writeln** טקסט ו **DocumentBuilder.InsertImage** עבור מערך פסטה המייצג תמונה.
   1 בסוף העיבוד של **DataRow** גם לסיים את השורה שנוצרת על ידי **DocumentBuilder** באמצעות **DocumentBuilder.EndRow**.
1.1 1. פעם כל שורות מן **DataTable** מעובד לסיים את השולחן באמצעות קריאה **DocumentBuilder.EndTable**.
1.1 1. לבסוף, אנו יכולים להגדיר את סגנון השולחן הרצוי באמצעות אחד מתכונות השולחן המתאימות כגון **Table.StyleIdentifier** ליישם באופן אוטומטי פורמט לכל השולחן.

The The The **ImportTableFromDataTable** השיטה מקבלת **DocumentBuilder** האובייקט, **DataTable** המכיל את הנתונים ואת הדגל אשר מפרט אם העמודה פונה מהעמודה **DataTable** הכלולים בחלק העליון של השולחן. שיטה זו בונה טבלה מפרמטרים אלה באמצעות המיקום הנוכחי של בונה ותבנית. מספק שיטה לייבא נתונים מן `DataTable` הכנס אותו לשולחן חדש באמצעות מסמך בונה.

הנתונים הבאים שלנו **DataTable** נעשה שימוש בדוגמה זו:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

דוגמה לקוד הבא מראה כיצד לבצע את האלגוריתם לעיל Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

את השיטה ניתן לקרוא בקלות **DocumentBuilder** ונתונים.

הדוגמה הבאה של הקוד מראה כיצד לייבא את הנתונים מ- `DataTable` הכנס אותו לשולחן חדש במסמך:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
