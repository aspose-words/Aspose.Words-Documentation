---
title: תאי שולחן ב C#
second_title: Aspose.Words עבור .NET
articleTitle: מרק שולחן תאים
linktitle: מרק שולחן תאים
description: "כיצד למזג תאים בטבלה C#. בדוק אם תאים בטבלה מתמזגים באמצעות C#."
type: docs
weight: 40
url: /he/net/working-with-merged-cells/
---

לפעמים שורות מסוימות בטבלה דורשות כותרת או בלוקים גדולים של טקסט לקחת את רוחב המלא של השולחן. עבור עיצוב תקין של השולחן, המשתמש יכול למזג כמה תאים בטבלה לתוך אחד. Aspose.Words תומך תאים ממוזגים כאשר עובדים עם כל פורמטי קלט, כולל ייבוא תוכן HTML.

## איך להגות Table Cells

In In In Aspose.Words, תאים ממוזגים על ידי התכונות הבאות של [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) קטגוריה:

- - [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) המתאר אם התא הוא חלק ממיזוג אופקי של תאים
- - [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) המתאר אם התא הוא חלק ממיזוג אנכי של תאים

הערכים של תכונות אלה קובעים את התנהגות המיזוג של תאים:

- - התא הראשון ברצף של תאים ממוזגים יהיה [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- - כל תאים ממוזגים לאחר מכן יהיו [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- תא שאינו ממוזג יהיה [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

לפעמים, בעת טעינה של תאי מסמך קיימים בטבלה, הם יופיעו ממוזגים. למעשה, זה יכול להיות תא ארוך אחד - לפעמים Microsoft Word יצוא תאים ממוזגים כך. זה יכול להיות מבלבל כאשר מנסים לעבוד עם תאים בודדים, אבל לא נראה שיש דפוס מסוים מתי זה קורה.

{{% /alert %}}

## בדוק אם Cell is Merged

כדי לבדוק אם תא הוא חלק מרצף של תאים ממוזגים, אנחנו פשוט בודקים את התא. **HorizontalMerge** ו **VerticalMerge** תכונות.

הדוגמה הבאה של הקוד מראה כיצד להדפיס את סוג התא האופקי והארכיני:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## מארג' טבלה Cells When Using DocumentBuilder

למזג תאים בטבלה שנוצרה עם [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), אתה צריך להגדיר את סוג המיזוג המתאים לכל תא שבו המיזוג צפוי - הראשון **CellMerge.First** ואז **CellMerge.Previous**.

כמו כן, עליך לזכור לנקות את הגדרת המיזוג עבור תאים אלה שבהם אין צורך במיזוג - זה יכול להיעשות על ידי הגדרת תא non-merge הראשון. **CellMerge.None**. אם זה לא נעשה, כל התאים בטבלה יתמזגו.

דוגמה הקוד הבא מראה כיצד ליצור שולחן עם שתי שורות שבו התאים בשורה הראשונה מתמזגים אופקית:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן דו-מושבי שבו התאים בעמודה הראשונה מתמזגים אנכית:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## תאי שולחן במקרים אחרים

במצבים אחרים שבהם **DocumentBuilder** לא משמש, כגון בטבלה קיימת, מיזוג תאים בדרך הקודמת לא יכול להיות קל. במקום זאת, אנו יכולים לעטוף את הפעולות הבסיסיות הכרוכות ביישום תכונות מיזוג לתאים בשיטה שהופכת את המשימה להרבה יותר קלה. שיטה זו דומה לשיטת האוטומציה של Merge, הנקראת למזג מגוון תאים בטבלה.

הקוד להלן ימזג את תאי הטבלה בטווח שצוין, החל מהתא נתון וסיום בתא הסופי. במקרה זה, הטווח יכול לעגל שורות מרובות או עמודות:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

לדוגמה הקוד הבא מראה כיצד למזג טווח תאים בין שני תאים מוגדרים:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

בהתאם לגרסה של .NET Framework אתה משתמש, ייתכן שתרצה לחדד שיטה זו על ידי הפיכתה לשיטת הרחבה. במקרה זה, אתה יכול לקרוא שיטה זו ישירות על תא כדי למזג מגוון של תאים, כגון: `cell1.Merge(cell2)`.

## Vertical and Horizontal Merged Cells in HTML Table

כפי שאמרתי במאמרים קודמים, שולחן Microsoft Word היא קבוצה של שורות עצמאיות. לכל שורה יש קבוצה של תאים שאינם תלויים בתאים של שורות אחרות. כך, ב Microsoft Word טבלה אין אובייקט כזה "שטח", ו"עמודה ראשונה" הוא משהו כמו "מערך התאים הראשונים של כל שורה בטבלה". זה מאפשר למשתמשים יש שולחן שבו, לדוגמה, השורה הראשונה מורכבת משני תאים - 2 ס"מ ו 1 ס"מ, ואת השורה 2 מורכב משני תאים שונים - 1 ס"מ ו 2 ס"מ רחב. ו Aspose.Words תומך ברעיון זה של טבלאות.

בטבלה ב- HTML יש מבנה שונה לחלוטין: לכל שורה יש את אותו מספר תאים (חשוב למשימה) לכל תא יש את רוחב העמודה המקבילה, אותו הדבר לכל התאים בעמודה אחת. אם **HorizontalMerge** ו **VerticalMerge** להחזיר ערך לא נכון, השתמש בדוגמה הבאה:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## עקבו אחרי Horizontally תאים מרורגים

לפעמים לא ניתן לזהות אילו תאים מתמזגים כי כמה גרסאות חדשות יותר של Microsoft Word כבר לא להשתמש דגלי המיזוג כאשר תאים מתמזגים אופקית. אבל עבור מצבים שבהם תאים מתמזגים לתוך תא אופקית על ידי רוחבם באמצעות דגלים מתמזגים, Aspose.Words מספק `ConvertToHorizontallyMergedCells` שיטה להמיר תאים שיטה זו פשוט הופכת את השולחן ומוסיפה תאים חדשים במידת הצורך.

הדוגמה הבאה מציגה את השיטה לעיל בפעולה:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
