---
title: מתקדם Mail Merge תכונות ב C++
second_title: Aspose.Words עבור C++
articleTitle: מתקדם Mail Merge תכונות
linktitle: מתקדם Mail Merge תכונות
type: docs
description: "Aspose.Words עבור C++ מספק כמה תכונות מתקדמות Mail Merge המאפשרות לך לבצע התאמה אישית נוספת Mail Merge. לדוגמה, קבלת מידע על מבנה התבנית, קביעת כללים, ניקוי לאחר פעולת Mail Merge ואחרים."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /he/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מספק כמה מאפיינים נוספים Mail Merge ושיטות המאפשרות לך לבצע התאמה אישית נוספת של תהליך Mail Merge פשוט Mail Merge או Mail Merge עם אזורים.

תכונות מתקדמות Mail Merge כוללות, אך לא מוגבלות לכך, קבלת מידע על מבנה התבנית לפני ביצוע פעולה Mail Merge, קביעת כללים לפעולה Mail Merge וניקוי במהלך פעולה Mail Merge. מאמר זה יכסה רק כמה מאפיינים ודוגמאות כדי להראות לך כיצד להשתמש בתכונות מתקדמות.

## הגדר כללים לפעולות Mail Merge

הוספת כללים לתבנית שלך מאפשרת לך להפוך את תהליך זרימת העבודה ליעיל וגמיש יותר. באמצעות Mail Merge כללים, אתה יכול להגדיר תוכן שניתן לשנות במהירות ולהימנע מהצורך ליצור מסמכים מרובים.

Aspose.Words מאפשר לך להתאים אישית את Mail Merge מבוסס על כללים הפועלים בעת ביצוע Mail Merge פעולה ושליטה מיזוג מידע. לדוגמה, כאשר אתה יוצר אימייל או מכתב שישלח לכל הלקוחות שלך. אתה יכול להגדיר כלל כך שהמכתב יכול להכיל נתונים שונים על סמך הערכים השונים בתחומים מסוימים של מקור הנתונים שלך.

תסתכל על כמה Mail Merge כללים שאתה יכול ליישם.

### יישום השדה הבא למיזוג רשומות נתונים במסמך הנוכחי

ניתן ליישם את השדה [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) כדי למזג את רשומת הנתונים הבאה למסמך הממוזג הנוכחי שנוצר, במקום להתחיל מסמך ממוזג חדש. הוא משמש להצגת רשומות מרובות במסמך אחד.

### ליישם NextIf ו SkipIf שדות להשוואת שני ביטויים

ניתן להשתמש בשדה [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) או בשדה [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) אם ברצונך להשוות בין שני ביטויים ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) ביטויים) בכמה [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words ימזג את רשומת הנתונים הבאה למסמך המיזוג הנוכחי, וכל שדות המיזוג בתבנית שאחרי שדה *NextIf* יוחלפו בערכים מרשומת הנתונים הבאה ולא ברשומת הנתונים הנוכחית. | Aspose.Words ימזג את רשומת הנתונים הבאה למסמך מיזוג חדש. |
| `SkipIf` | Aspose.Words יבטל את מסמך המיזוג הנוכחי, יעבור לרשומת הנתונים הבאה במקור הנתונים ויתחיל מסמך מיזוג חדש. | Aspose.Words ימשיך במסמך המיזוג הנוכחי. |

## קבל מידע על מבנה התבנית

Aspose.Words מאפשר לך לאסוף מידע שונה בתבנית שלך באמצעות שיטות רבות. לדוגמה, ייתכן שיהיה עליך לקבל את השמות של שדות מיזוג מסוימים או את ההיררכיה של אזורים בתבנית שלך. כעת נסביר את הגרסאות האפשריות לקבלת מידע ספציפי מהתבנית שלך.

### קבל מיזוג שמות שדות

אתה יכול להיתקל בתרחיש שבו תרצה למזג נתונים עם שדות מיזוג שנוצרו על ידי אחרים, ובמקרה זה, לא תהיה בטוח לגבי השמות המדויקים של שדות מיזוג. לכן, כדי להשיג את מטרת Mail Merge, ראשית, יהיה עליך לקרוא ולהציג את השמות של כל שדות המיזוג. Aspose.Words מאפשר לך לקבל אוסף של שמות שדות מיזוג בשיטת [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

דוגמת הקוד הבאה מראה כיצד לקבל שמות של כל שדות המיזוג בתבנית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### קבל מידע על מיזוג אזורים

ייתכן שיש לך תרחיש שבו ברצונך להבין כיצד התבנית שלך בנויה דרך אזורי המיזוג שצוינו. אתה יכול להשתמש בכמה שיטות כדי לאסוף את כל המידע הדרוש על מיזוג אזורים או כדי לקבל את ההיררכיה של מיזוג אזורים בתבנית שלך, כגון שיטת [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). ניתן להשתמש במאפיינים ובשיטות של הכיתה [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).דוגמת הקוד הבאה מראה כיצד לקבל היררכיה של אזורי מיזוג:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוסף שדות ממופים

Aspose.Words מאפשר לך למפות באופן אוטומטי שמות של שדות במקור הנתונים שלך ושמות של Mail Merge שדות בתבנית באמצעות המאפיין [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). לדוגמה, אם יש לך שם שדה בשם "שם משפחה" בתבנית שלך, ובמקור הנתונים שלך יש לך את שם השדה "שם משפחה" או וריאציה אחרת כגון "Last_Name" או "LastName", השדה במקור הנתונים ימפה אוטומטית לשדה הממופה המתאים. אם יש למזג תבנית מיזוג עם מקורות נתונים רבים, שדות ממופים אינם נחוצים להזין מחדש את השדות בתבנית כדי להסכים עם שמות השדות במסד הנתונים.

דוגמת הקוד הבאה מראה כיצד להוסיף שדה ממופה בשיטת [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) כאשר לשדה מיזוג בתבנית ולשדה נתונים במקור נתונים יש שמות שונים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
