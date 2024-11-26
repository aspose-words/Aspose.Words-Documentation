---
title: עבודה עם עמודות ושורות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם עמודות ושורות
linktitle: עבודה עם עמודות ושורות
description: "עבודה עם חלקי טבלה-שורות, עמודות ותאים באמצעות C++. ציין שורת כותרת C++."
type: docs
weight: 30
url: /he/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

לקבלת שליטה רבה יותר על אופן הפעולה של טבלאות, למד כיצד לתפעל עמודות ושורות.

## מצא את אינדקס רכיבי הטבלה

עמודות, שורות ותאים מנוהלים על ידי גישה לצומת המסמך שנבחר על ידי האינדקס שלו. מציאת האינדקס של כל צומת כרוכה באיסוף כל הצמתים של סוג האלמנט מהצומת האם, ולאחר מכן שימוש בשיטת [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) כדי למצוא את האינדקס של הצומת הרצוי באוסף.

### מצא את האינדקס של טבלה במסמך

לפעמים ייתכן שיהיה עליך לבצע שינויים בטבלה מסוימת במסמך. לשם כך, תוכל לעיין בטבלה לפי האינדקס שלה.

דוגמת הקוד הבאה מראה כיצד לאחזר את האינדקס של טבלה במסמך:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### מצא את האינדקס של שורה בטבלה {#find-the-index-of-a-row-in-a-table}

באופן דומה, ייתכן שיהיה עליך לבצע שינויים בשורה מסוימת בטבלה שנבחרה. לשם כך, תוכל גם להתייחס לשורה לפי האינדקס שלה.

דוגמת הקוד הבאה מראה כיצד לאחזר את האינדקס של שורה בטבלה:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### מצא את האינדקס של תא בשורה {#find-the-index-of-a-cell-in-a-row}

לבסוף, ייתכן שיהיה עליך לבצע שינויים בתא מסוים, ואתה יכול לעשות זאת על ידי אינדקס התא גם כן.

דוגמת הקוד הבאה מראה כיצד לאחזר את האינדקס של תא בשורה:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## עבודה עם עמודות

במודל אובייקט המסמך Aspose.Words (DOM), הצומת [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) מורכבת מ [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) צמתים ואז [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) צמתים. כך, במודל האובייקט `Document` של Aspose.Words, כמו במסמכים Word, אין מושג של עמודה.

לפי התכנון, שורות הטבלה ב Microsoft Word ו Aspose.Words הם עצמאיים לחלוטין, והמאפיינים והפעולות הבסיסיים כלולים רק בשורות ובתאים של הטבלה. זה נותן לטבלאות את היכולת לקבל כמה תכונות מעניינות:

- כל שורה בטבלה יכולה להיות מספר שונה לחלוטין של תאים
- אנכית, לתאים של כל שורה יכולים להיות רוחבים שונים
- אפשר להצטרף לטבלאות עם פורמטים שונים של שורות ומספר תאים

כל פעולות המבוצעות בעמודות הן למעשה "קיצורי דרך" המבצעים את הפעולה על ידי שינוי קולקטיבי של תאי שורה באופן שנראה כאילו הם מוחלים על עמודות. כלומר, אתה יכול לבצע פעולות על עמודות פשוט על ידי איטרציה על אותו אינדקס תא שורה בטבלה.

דוגמת הקוד הבאה מפשטת פעולות כאלה על ידי הוכחת כיתת חזית שאוספת את התאים המרכיבים" עמוד " של טבלה:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

דוגמת הקוד הבאה מראה כיצד להכניס עמודה ריקה לטבלה:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

דוגמת הקוד הבאה מראה כיצד להסיר עמודה מטבלה במסמך:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## ציין שורות כשורות כותרת

אתה יכול לבחור לחזור על השורה הראשונה בטבלה כשורת הכותרת רק בעמוד הראשון או בכל עמוד אם הטבלה מחולקת למספר. ב Aspose.Words, אתה יכול לחזור על שורת הכותרת בכל עמוד באמצעות המאפיין [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

ניתן גם לסמן שורות כותרת מרובות אם שורות כאלה ממוקמות אחת אחרי השנייה בתחילת הטבלה. לשם כך, עליך להחיל את המאפיינים **HeadingFormat** על שורות אלה.

{{% alert color="primary" %}}

שים לב ששורות כותרות אינן פועלות בטבלאות מקוננות. כלומר, אם יש לך שולחן בתוך שולחן אחר, הגדרה זו לא תהיה השפעה. זוהי מגבלה של Microsoft Word שאינה מאפשרת זאת, לא Aspose.Words.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד לבנות טבלה הכוללת שורות כותרות שחוזרות על עצמן בדפים הבאים:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## שמור על טבלאות ושורות לפרוץ בין דפים

ישנם מקרים בהם אין לפצל את תוכן הטבלה בין דפים. לדוגמה, אם כותרת נמצאת מעל טבלה, תמיד יש לשמור את הכותרת והטבלה יחד באותו עמוד כדי לשמור על מראה תקין.

ישנן שתי טכניקות נפרדות שימושיות להשגת פונקציונליות זו:

- `Allow row break across pages`, אשר מוחל על שורות טבלה
- `Keep with next`, אשר מוחל על פסקאות בתאי טבלה

כברירת מחדל, המאפיינים לעיל מושבתים.

### שמור שורה לפרוץ על פני דפים {#keep-a-row-from-breaking-across-pages}

זה כרוך בהגבלת התוכן בתוך התאים של שורה מלהיות מחולק על פני דף. ב Microsoft Word, זה יכול למצוא תחת מאפייני טבלה כאפשרות"אפשר שורה לפרוץ בין דפים". ב Aspose.Words זה נמצא מתחת לאובייקט [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) של [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) כמאפיין [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

דוגמת הקוד הבאה מראה כיצד להשבית שבירת שורות בין דפים עבור כל שורה בטבלה:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### שמור על טבלה שלא תפרוץ על פני עמודים {#keep-a-table-from-breaking-across-pages}

כדי למנוע מהטבלה להתפצל בין דפים, עלינו לציין שאנו רוצים שהתוכן הכלול בטבלה יישאר יחד.

לשם כך, Aspose.Words משתמש בשיטה, המאפשרת למשתמשים לבחור טבלה ולאפשר לפרמטר [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) להיות נכון עבור כל פסקה בתאי הטבלה. היוצא מן הכלל הוא הפסקה האחרונה בטבלה, אשר צריך להיות מוגדר שקר.

דוגמת הקוד הבאה מראה כיצד להגדיר טבלה כדי להישאר יחד באותו דף:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
