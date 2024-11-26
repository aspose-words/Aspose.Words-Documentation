---
title: מקונן Mail Merge עם אזורים ב C#
second_title: Aspose.Words עבור .NET
articleTitle: מקונן Mail Merge עם אזורים
linktitle: מקונן Mail Merge עם אזורים
type: docs
description: "בצע פעולה Mail Merge עם אזורים מקוננים באמצעות C#. מיזוג מקונן הוא תכונה המאפשרת לך למזג נתונים היררכיים ממקור הנתונים שלך לתבנית המיזוג שלך."
keywords: "mail merge with nested regions c#"
weight: 10
url: /he/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

בתרחישים מסוימים, ייתכן שיהיה עליך להשתמש מקונן Mail Merge עם אזורים. מיזוג מקונן הוא תכונה המאפשרת לך למזג נתונים היררכיים ממקור הנתונים שלך לתבנית המיזוג שלך כדי לאכלס בקלות את המסמך שלך. בעיקרון, הנתונים ההיררכיים מיוצגים כמערכת של פריטי נתונים, ויחסים היררכיים מתארים כיצד פריטי הנתונים קשורים זה לזה (פריט נתונים אחד הוא ההורה של פריט אחר).

Aspose.Words מאפשר לך לבצע Mail Merge פעולה עם אזורים מקוננים. אתה יכול להשתמש בתכונה זו אם יש לך מקור נתונים המאורגן במבנה דמוי עץ וברצונך לבצע פעולה Mail Merge כדי לאכלס תבנית בנתונים היררכיים.

{{% alert color="primary" %}}

מקונן Mail Merge רלוונטי רק בעת ביצוע Mail Merge עם אזורים.

{{% /alert %}}

## מה זה מקונן Mail Merge

אזור Mail Merge נקרא מקונן אם יש לך שניים או יותר Mail Merge אזורים שבהם אחד מהם נמצא בתוך השני בצורה היררכית. שים לב שכל אזור מכיל נתונים מטבלה אחת.

הדוגמה הנפוצה ביותר של Mail Merge מקוננת היא הזמנה המכילה מספר פריטים שבהם עליך לקשר טבלאות נתונים מרובות ולהציג את המידע בתבנית.

התמונה למטה מציגה שני אזורים מקוננים שבהם האזור *Order* Mail Merge הוא האב של האזור *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## כיצד לעבד Mail Merge עם אזורים מקוננים

הנתונים שיש למזג לתבנית יכולים להגיע ממקורות שונים, בעיקר מסדי נתונים יחסיים או XML מסמכים. בדוגמה שלנו, אנו נשתמש בקובץ XML כדי לאחסן את הנתונים שלנו ולהעמיס אותם ישירות לתוך **DataSet**.

Aspose.Words מאפשר לך לעבד Mail Merge עם אזורים מקוננים באמצעות יחסי הנתונים שצוינו ב **DataSet**. כאשר האובייקט **DataSet** נטען XML, הוא משתמש בסכימה המסופקת או מסיק אותה מבניין XML עצמו כדי להשיג זאת. ממבנה זה הוא יוצר קשרים בין טבלאות במידת הצורך.

התמונה למטה מראה כיצד הנתונים מהטבלה *Order* שהועברו לאזורי המיזוג המקוננים יקושרו לטבלה *Item*, כמו גם הפלט שנוצר במהלך פעולת המיזוג.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

כפי שניתן לראות ממסמך הפלט, כל הזמנה מהטבלה **Order** מוכנסת לתבנית המיזוג עם כל הפריטים הקשורים להזמנה מהטבלה **Item**. ההזמנה הבאה תוכנס יחד עם הפריטים שלהם עד שכל ההזמנות והפריטים יופיעו ברשימה. סדר הקינון Mail Merge עם אזורים בתבנית חייב להתאים ליחסי הנתונים בין הטבלאות במקור הנתונים.

דוגמת הקוד הבאה מראה כיצד ליצור חשבונית באמצעות מקונן Mail Merge עם אזורים:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

אתה יכול לבדוק את יישום הגדרת קשרי הנתונים באופן ידני מ [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## כיצד להגדיר קשרי נתונים מקוננים Mail Merge עם אזורים

עליך להגדיר את כל קשרי הנתונים במבנה ההורה-ילד כדי לבצע את Mail Merge המקונן עם אזורים בצורה נכונה. דילוג על שלב חשוב זה עלול להוביל לכישלון בביצוע המקונן Mail Merge עם אזורים.

בעת קבלת נתונים עבור Mail Merge מקונן מקובץ XML באמצעות שיטת **ReadXml**, מערכות יחסים נוצרות באופן אוטומטי בהתאם למבנה המסמך XML. עם זאת, עליך לוודא כי היחסים הנכונים נוצרו.

אם Mail Merge לא עובד כצפוי, ייתכן שיהיה עליך לבנות מחדש את הקובץ XML או ליצור באופן מפורש יחסים בין DataTable אובייקטים ב DataSet.

`DataSet` שיש לו טבלאות נתונים קשורות ישתמש באובייקט **DataRelation** כדי לייצג את יחסי ההורה-ילד בין הטבלאות.

דוגמת הקוד הבאה מראה כיצד להקים `DataRelation` בין טבלת הלקוח לטבלת ההזמנה באמצעות אובייקט `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## כיצד ליצור קשרי נתונים ממקור נתונים מותאם אישית

יישם את הממשק [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) כדי ליצור קשרים במבנה ההורה-ילד של מקור הנתונים המותאם אישית שלך. השתמש בשיטת [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) כדי להחזיר את נתוני הילד הרלוונטיים של רשומת האב הנוכחית.

הדוגמה הבאה מראה כיצד ליצור יחסי נתונים באמצעות **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
