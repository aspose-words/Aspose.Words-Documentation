---
title: תאי שולחן ב Java
second_title: Aspose.Words עבור Java
articleTitle: סופרמרקטים
linktitle: סופרמרקטים
description: "כיצד למזג תאים בטבלה Java. בדוק אם תאים בטבלה מתמזגים באמצעות Java."
type: docs
weight: 40
url: /he/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

לפעמים שורות מסוימות בטבלה דורשות כותרת או בלוקים גדולים של טקסט לקחת את רוחב המלא של השולחן. עבור עיצוב תקין של השולחן, המשתמש יכול למזג כמה תאים בטבלה לתוך אחד. Aspose.Words תומך תאים ממוזגים כאשר עובדים עם כל פורמטי קלט, כולל ייבוא תוכן HTML.

## איך להגות Table Cells

In In In Aspose.Words, תאים ממוזגים על ידי התכונות הבאות של [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) קטגוריה:

- - [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) המתאר אם התא הוא חלק ממיזוג אופקי של תאים
- - [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) המתאר אם התא הוא חלק ממיזוג אנכי של תאים

הערכים של תכונות אלה קובעים את התנהגות המיזוג של תאים:

- - התא הראשון ברצף של תאים ממוזגים יהיה [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- - כל תאים ממוזגים לאחר מכן יהיו [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- תא שאינו ממוזג יהיה [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

לפעמים, בעת טעינה של תאי מסמך קיימים בטבלה, הם יופיעו ממוזגים. למעשה, זה יכול להיות תא ארוך אחד - לפעמים Microsoft Word יצוא תאים ממוזגים כך. זה יכול להיות מבלבל כאשר מנסים לעבוד עם תאים בודדים, אבל לא נראה שיש דפוס מסוים מתי זה קורה.

{{% /alert %}}

## בדוק אם תא הוא מורג

כדי לבדוק אם תא הוא חלק מרצף של תאים ממוזגים, אנחנו פשוט בודקים את התא. **HorizontalMerge** ו **VerticalMerge** תכונות.

הדוגמה הבאה של הקוד מראה כיצד להדפיס את סוג התא האופקי והארכיני:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## מארג' טבלה Cells When Using DocumentBuilder

למזג תאים בטבלה שנוצרה עם [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), אתה צריך להגדיר את סוג המיזוג המתאים עבור כל תא שבו המיזוג צפוי - הראשון **CellMerge.First** ואז **CellMerge.Previous**.

כמו כן, עליך לזכור לנקות את הגדרת המיזוג עבור תאים אלה שבהם אין צורך במיזוג - זה יכול להיעשות על ידי הגדרת תא non-merge הראשון. **CellMerge.None**. אם זה לא נעשה, כל התאים בטבלה יתמזגו.

דוגמה הקוד הבא מראה כיצד ליצור שולחן עם שתי שורות שבו התאים בשורה הראשונה מתמזגים אופקית:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן דו-מושבי שבו התאים בעמודה הראשונה מתמזגים אנכית:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## תאי שולחן במקרים אחרים

במצבים אחרים שבהם **DocumentBuilder** לא משמש, כגון בטבלה קיימת, מיזוג תאים בדרך הקודמת לא יכול להיות קל. במקום זאת, אנו יכולים לעטוף את הפעולות הבסיסיות הכרוכות ביישום תכונות מיזוג לתאים בשיטה שהופכת את המשימה להרבה יותר קלה. שיטה זו דומה לשיטת האוטומציה של Merge, הנקראת למזג מגוון תאים בטבלה.

הקוד להלן ימזג את תאי הטבלה בטווח שצוין, החל מהתא נתון וסיום בתא הסופי. במקרה זה, הטווח יכול לעגל שורות מרובות או עמודות:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

לדוגמה הקוד הבא מראה כיצד למזג טווח תאים בין שני תאים מוגדרים:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Vertical and Horizontal Merged Cells in HTML Table

כפי שאמרתי במאמרים קודמים, שולחן ב Microsoft Word היא קבוצה של שורות עצמאיות. לכל שורה יש קבוצה של תאים שאינם תלויים בתאים של שורות אחרות. כך, ב Microsoft Word טבלה אין אובייקט כזה "שטח", ו"עמודה ראשונה" הוא משהו כמו "מערך התאים הראשונים של כל שורה בטבלה". זה מאפשר למשתמשים יש שולחן שבו, למשל, השורה הראשונה מורכבת משני תאים - 2 ס"מ ו 1 ס"מ, והשורה השנייה מורכבת משני תאים שונים - 1 ס"מ ו 2 ס"מ רחב. ו Aspose.Words תומך ברעיון זה של טבלאות.

בטבלה ב- HTML יש מבנה שונה לחלוטין: לכל שורה יש את אותו מספר תאים (חשוב למשימה) לכל תא יש את רוחב העמודה המקבילה, אותו הדבר לכל התאים בעמודה אחת. אם **HorizontalMerge** ו **VerticalMerge** להחזיר ערך לא נכון, השתמש בדוגמה הבאה:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## עקבו אחרי Horizontally תאים מרורגים

לפעמים לא ניתן לזהות אילו תאים מתמזגים כי כמה גרסאות חדשות יותר של Microsoft Word כבר לא להשתמש דגלי המיזוג כאשר תאים מתמזגים אופקית. אבל עבור מצבים שבהם תאים מתמזגים לתוך תא אופקית על ידי רוחבם באמצעות דגלים מתמזגים, Aspose.Words מספק `ConvertToHorizontallyMergedCells` שיטה להמיר תאים שיטה זו פשוט הופכת את השולחן ומוסיפה תאים חדשים במידת הצורך.

הדוגמה הבאה מציגה את השיטה לעיל בפעולה:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
