---
title: מיזוג תאי טבלה ב C++
second_title: Aspose.Words עבור C++
articleTitle: מיזוג תאי טבלה
linktitle: מיזוג תאי טבלה
description: "כיצד למזג תאי טבלה ב C++. בדוק אם תאים בטבלה ממוזגים באמצעות C++."
type: docs
weight: 40
url: /he/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

לפעמים שורות מסוימות בטבלה דורשות כותרת או גושי טקסט גדולים שתופסים את כל רוחב הטבלה. לעיצוב נכון של הטבלה, המשתמש יכול למזג מספר תאי טבלה לאחד. Aspose.Words תומך בתאים ממוזגים בעבודה עם כל פורמטי הקלט, כולל ייבוא HTML תוכן.

## כיצד למזג תאי טבלה

ב Aspose.Words, תאים ממוזגים מיוצגים על ידי התכונות הבאות של הכיתה [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) המתאר אם התא הוא חלק ממיזוג אופקי של תאים
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) המתאר אם התא הוא חלק ממיזוג אנכי של תאים

הערכים של מאפיינים אלה קובעים את התנהגות המיזוג של תאים:

- לתא הראשון ברצף של תאים ממוזגים יהיה [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- כל תאים ממוזגים לאחר מכן יהיו [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- לתא שאינו ממוזג יהיה [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

לפעמים, בעת טעינת תאי מסמך קיימים בטבלה, הם יופיעו ממוזגים. עם זאת, זה יכול להיות למעשה תא אחד ארוך – לפעמים Microsoft Word מייצא תאים ממוזגים בדרך זו. זה יכול להיות מבלבל כאשר מנסים לעבוד עם תאים בודדים, אבל לא נראה שיש דפוס מסוים לגבי מתי זה קורה.

{{% /alert %}}

## בדוק אם התא ממוזג

כדי לבדוק אם תא הוא חלק מרצף של תאים ממוזגים, אנו פשוט בודקים את המאפיינים **HorizontalMerge** ו **VerticalMerge**.

דוגמת הקוד הבאה מראה כיצד להדפיס את סוג מיזוג התאים האופקי והאנכי:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## תאים ממוזגים בטבלה {#merge-cells-in-a-table}

כדי למזג תאים בטבלה שנוצרה עם [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), עליך להגדיר את סוג המיזוג המתאים לכל תא שבו המיזוג צפוי - תחילה **CellMerge.First** ולאחר מכן **CellMerge.Previous**.

כמו כן, עליך לזכור לנקות את הגדרת המיזוג עבור אותם תאים שבהם אין צורך במיזוג – ניתן לעשות זאת על ידי הגדרת התא הראשון שאינו מיזוג ל-**CellMerge.None**. אם זה לא נעשה, כל התאים בטבלה ימוזגו.

דוגמת הקוד הבאה מראה כיצד ליצור טבלה עם שתי שורות שבהן התאים בשורה הראשונה ממוזגים אופקית:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

דוגמת הקוד הבאה מראה כיצד ליצור טבלה בת שתי עמודות שבה התאים בעמודה הראשונה ממוזגים אנכית:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## מיזוג תאי טבלה במקרים אחרים

במצבים אחרים שבהם לא נעשה שימוש ב - **DocumentBuilder**, כגון בטבלה קיימת, מיזוג תאים בדרך הקודמת עשוי להיות לא קל. במקום זאת, אנו יכולים לעטוף את הפעולות הבסיסיות הכרוכות ביישום מאפייני מיזוג לתאים בשיטה המקלה על המשימה הרבה יותר. שיטה זו דומה לשיטת האוטומציה של מיזוג, הנקראת למזג טווח של תאים בטבלה.

הקוד שלהלן ימזג את תאי הטבלה בטווח שצוין, החל מהתא הנתון ומסתיים בתא הקצה. במקרה זה, הטווח יכול להקיף מספר שורות או עמודות:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

דוגמת הקוד הבאה מראה כיצד למזג טווח של תאים בין שני תאים מוגדרים:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

בהתאם לגרסת המסגרת בה אתה משתמש, ייתכן שתרצה לחדד שיטה זו על ידי הפיכתה לשיטת הרחבה. במקרה זה, אתה יכול לקרוא לשיטה זו ישירות על תא כדי למזג טווח של תאים, כגון `cell1.Merge(cell2)`.

## תאים ממוזגים אנכיים ואופקיים בטבלה {#vertical-and-Horizontal-merged-cells-in-the-table}

כפי שאמרנו במאמרים קודמים, טבלה ב Microsoft Word היא קבוצה של שורות עצמאיות. לכל שורה יש קבוצה של תאים שאינם תלויים בתאים של שורות אחרות. לכן, בטבלה Microsoft Word אין אובייקט כזה כמו "עמודה", ו" עמודה 1 "הוא משהו כמו"קבוצה של תאים 1 של כל שורה בטבלה". זה מאפשר למשתמשים יש טבלה שבה, למשל, בשורה 1 מורכב משני תאים-2 סנטימטר ו 1 סנטימטר, ואת השורה 2 מורכב משני תאים שונים-1 סנטימטר ו 2 סנטימטר רחב. ו Aspose.Words תומך במושג זה של טבלאות.

לטבלה ב HTML יש מבנה שונה במהותו: לכל שורה יש אותו מספר תאים ו (חשוב למשימה) לכל תא יש את רוחב העמודה המתאימה, זהה לכל התאים בעמודה אחת. אז אם **HorizontalMerge** ו **VerticalMerge** מחזירים ערך שגוי, השתמש בדוגמה הבאה של הקוד:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## המר לתאים ממוזגים אופקית {#convert-to-horizontally-merged-cells}

לפעמים לא ניתן לזהות אילו תאים מתמזגים כי כמה גרסאות חדשות יותר של Microsoft Word כבר לא משתמשות בדגלי המיזוג כאשר תאים מתמזגים באופן אופקי. אבל במצבים שבהם תאים מתמזגים לתא באופן אופקי על ידי רוחבם באמצעות דגלי מיזוג, Aspose.Words מספק את שיטת `ConvertToHorizontallyMergedCells` להמרת תאים. שיטה זו פשוט הופכת את הטבלה ומוסיפה תאים חדשים לפי הצורך.

הדוגמה הבאה של הקוד מראה את השיטה לעיל בפעולה:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
