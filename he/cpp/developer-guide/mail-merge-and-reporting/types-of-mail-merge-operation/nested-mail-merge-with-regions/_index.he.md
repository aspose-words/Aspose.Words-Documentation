---
title: מקונן Mail Merge עם אזורים ב C++
second_title: Aspose.Words עבור C++
articleTitle: מקונן Mail Merge עם אזורים
linktitle: מקונן Mail Merge עם אזורים
type: docs
description: "בצע פעולה Mail Merge עם אזורים מקוננים באמצעות C++. מיזוג מקונן הוא תכונה המאפשרת לך למזג נתונים היררכיים ממקור הנתונים שלך לתבנית המיזוג שלך."
keywords: "mail merge with nested regions c++"
weight: 30
url: /he/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

בתרחישים מסוימים, ייתכן שיהיה עליך להשתמש מקונן Mail Merge עם אזורים. מיזוג מקונן הוא תכונה המאפשרת לך למזג נתונים היררכיים ממקור הנתונים שלך לתבנית המיזוג שלך כדי לאכלס בקלות את המסמך שלך. בעיקרון, הנתונים ההיררכיים מיוצגים כמערכת של פריטי נתונים, ויחסים היררכיים מתארים כיצד פריטי הנתונים קשורים זה לזה (פריט נתונים אחד הוא ההורה של פריט אחר).

Aspose.Words מאפשר לך לבצע Mail Merge פעולה עם אזורים מקוננים. אתה יכול להשתמש בתכונה זו אם יש לך מקור נתונים המאורגן במבנה דמוי עץ וברצונך לבצע פעולה Mail Merge כדי לאכלס תבנית בנתונים היררכיים.

{{% alert color="primary" %}}

מקונן Mail Merge רלוונטי רק בעת ביצוע Mail Merge עם אזורים.

{{% /alert %}}

## מה זה מקונן Mail Merge

אזור Mail Merge נקרא מקונן אם יש לך שניים או יותר Mail Merge אזורים שבהם אחד מהם נמצא בתוך השני בצורה היררכית. שים לב שכל אזור מכיל נתונים מטבלה אחת.

הדוגמה הנפוצה ביותר של Mail Merge מקוננת היא הזמנה המכילה כמה פריטים שבהם עליך לקשר טבלאות נתונים רבות ולהציג את המידע בתבנית.

התמונה למטה מציגה שני אזורים מקוננים שבהם האזור *Order* Mail Merge הוא האב של האזור *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## כיצד לעבד Mail Merge עם אזורים מקוננים

הנתונים שיש למזג לתבנית יכולים להגיע ממקורות שונים, בעיקר מסדי נתונים יחסיים או XML מסמכים. בדוגמה שלנו, אנו הולכים להשתמש ב [SQLite](https://www.sqlite.org/index.html) מסד נתונים לאחסון הנתונים שלנו ולטעון אותו עם יישום מקור נתונים מותאם אישית.

התמונה הבאה מדגימה כיצד הנתונים מהטבלה *Order* שהועברו לאזורי המיזוג המקוננים יקושרו לטבלה *Item*, כמו גם הפלט שנוצר במהלך פעולת המיזוג.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

כפי שניתן לראות ממסמך הפלט, כל הזמנה מהטבלה **Order** מוכנסת לתבנית המיזוג עם כל הפריטים הקשורים להזמנה מהטבלה **Item**. ההזמנה הבאה תוכנס יחד עם הפריטים שלהם עד שכל ההזמנות והפריטים יופיעו ברשימה. סדר הקינון Mail Merge עם אזורים בתבנית חייב להתאים ליחסי הנתונים בין הטבלאות במקור הנתונים.

## כיצד ליצור קשרי נתונים ממקור נתונים מותאם אישית

יישם את הממשק [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) כדי ליצור קשרים במבנה ההורה-ילד של מקור הנתונים המותאם אישית שלך. השתמש בשיטת [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) כדי להחזיר את נתוני הילד הרלוונטיים של רשומת האב הנוכחית.

דוגמת הקוד הבאה מדגימה כיצד ליצור חשבונית באמצעות מקונן Mail Merge עם אזורים מ [SQLite](https://www.sqlite.org/index.html) מסד נתונים עם [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
