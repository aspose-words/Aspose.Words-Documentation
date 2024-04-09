---
title: מרק שולחן תאים
second_title: Aspose.Words עבור Python via .NET
articleTitle: מרק שולחן תאים
linktitle: מרק שולחן תאים
description: "כיצד למזג תאים בטבלה Python. בדוק אם תאים בטבלה מתמזגים באמצעות Python."
type: docs
weight: 40
url: /he/python-net/working-with-merged-cells/
---

לפעמים שורות מסוימות בטבלה דורשות כותרת או בלוקים גדולים של טקסט לקחת את רוחב המלא של השולחן. עבור עיצוב תקין של השולחן, המשתמש יכול למזג כמה תאים בטבלה לתוך אחד. Aspose.Words תומך תאים ממוזגים כאשר עובדים עם כל פורמטי קלט, כולל ייבוא תוכן HTML.

## איך להגות Table Cells

In In In Aspose.Words, תאים ממוזגים על ידי התכונות הבאות של [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) קטגוריה:

- - [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) המתאר אם התא הוא חלק ממיזוג אופקי של תאים
- - [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) המתאר אם התא הוא חלק ממיזוג אנכי של תאים

הערכים של תכונות אלה קובעים את התנהגות המיזוג של תאים:

- - התא הראשון ברצף של תאים ממוזגים יהיה [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- - כל תאים ממוזגים לאחר מכן יהיו [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- תא שאינו ממוזג יהיה [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

לפעמים, בעת טעינה של תאי מסמך קיימים בטבלה, הם יופיעו ממוזגים. למעשה, זה יכול להיות תא ארוך אחד - לפעמים Microsoft Word יצוא תאים ממוזגים כך. זה יכול להיות מבלבל כאשר מנסים לעבוד עם תאים בודדים, אבל לא נראה שיש דפוס מסוים מתי זה קורה.

{{% /alert %}}

## בדוק אם Cell is Merged

כדי לבדוק אם תא הוא חלק מרצף של תאים ממוזגים, אנחנו פשוט בודקים את התא. **HorizontalMerge** ו **VerticalMerge** תכונות.

הדוגמה הבאה של הקוד מראה כיצד להדפיס את סוג התא האופקי והארכיני:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## מארג' טבלה Cells When Using DocumentBuilder

למזג תאים בטבלה שנוצרה עם [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), אתה צריך להגדיר את סוג המיזוג המתאים לכל תא שבו המיזוג צפוי - הראשון **CellMerge.First** ואז **CellMerge.Previous**.

כמו כן, עליך לזכור לנקות את הגדרת המיזוג עבור תאים אלה שבהם אין צורך במיזוג - זה יכול להיעשות על ידי הגדרת תא non-merge הראשון. **CellMerge.None**. אם זה לא נעשה, כל התאים בטבלה יתמזגו.

דוגמה הקוד הבא מראה כיצד ליצור שולחן עם שתי שורות שבו התאים בשורה הראשונה מתמזגים אופקית:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

הדוגמה הבאה של הקוד מראה כיצד ליצור שולחן דו-מושבי שבו התאים בעמודה הראשונה מתמזגים אנכית:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## תאי שולחן במקרים אחרים

במצבים אחרים שבהם **DocumentBuilder** לא משמש, כגון בטבלה קיימת, מיזוג תאים בדרך הקודמת לא יכול להיות קל. במקום זאת, אנו יכולים לעטוף את הפעולות הבסיסיות הכרוכות ביישום תכונות מיזוג לתאים בשיטה שהופכת את המשימה להרבה יותר קלה. שיטה זו דומה לשיטת האוטומציה של Merge, הנקראת למזג מגוון תאים בטבלה.

הקוד להלן ימזג את תאי הטבלה בטווח שצוין, החל מהתא נתון וסיום בתא הסופי. במקרה זה, הטווח יכול לעגל שורות מרובות או עמודות:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

לדוגמה הקוד הבא מראה כיצד למזג טווח תאים בין שני תאים מוגדרים:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

בהתאם לגרסה של המסגרת שבה אתה משתמש, ייתכן שתרצה לחדד שיטה זו על ידי הפיכתה לשיטת הרחבה. במקרה זה, אתה יכול לקרוא שיטה זו ישירות על תא כדי למזג מגוון של תאים, כגון: `cell1.Merge(cell2)`.

## עקבו אחרי Horizontally תאים מרורגים

לפעמים לא ניתן לזהות אילו תאים מתמזגים כי כמה גרסאות חדשות יותר של Microsoft Word כבר לא להשתמש דגלי המיזוג כאשר תאים מתמזגים אופקית. אבל עבור מצבים שבהם תאים מתמזגים לתוך תא אופקית על ידי רוחבם באמצעות דגלים מתמזגים, Aspose.Words מספק `ConvertToHorizontallyMergedCells` שיטה להמיר תאים שיטה זו פשוט הופכת את השולחן ומוסיפה תאים חדשים במידת הצורך.

הדוגמה הבאה מציגה את השיטה לעיל בפעולה:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
