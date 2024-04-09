---
title: עבודה עם Watermark Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Watermark
linktitle: עבודה עם Watermark
description: "ליצור ולנהל סימני מים במסמך באמצעות Python."
type: docs
weight: 340
url: /he/python-net/working-with-watermark/
---

נושא זה דן כיצד לעבוד באופן יזום עם סימן מים באמצעות סימן מים Aspose.Words. סימן מים הוא תמונת רקע המציגה מאחורי הטקסט במסמך. סימן מים יכול להכיל טקסט או תמונה המיוצגת על ידי [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) מעמד.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [Free online Document Watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## כיצד להוסיף סימן מים לתעודה

In In In Microsoft Word, סימן מים יכול להיות מוכנס בקלות במסמך באמצעות הפקודה הכנס Watermark. Aspose.Words מספק [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) שיעור להוסיף או להסיר סימן מים במסמכים. Aspose.Words מספק [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) הגדרה של שלושה סוגים אפשריים של סימני מים[TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), ו [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) לעבוד עם

### תגית: Text Watermark

הדוגמה הבאה של הקוד ממחישה כיצד להוסיף סימן מים בטקסט במסמך על ידי הגדרה [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) באמצעות [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) שיטה.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### תגית: Bloodmark

הדוגמה הבאה של הקוד מראה כיצד להוסיף סימן מים בתמונה במסמך על ידי הגדרה [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) באמצעות [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) שיטה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

סימן המים ניתן גם להיות מוכנס באמצעות כיתה צורה. זה מאוד קל להכניס כל צורה או תמונה לתוך ראש או רגל ובכך ליצור סימן מים מכל סוג שניתן להעלות על הדעת.

הדוגמה הבאה לקוד מציגה סימן מים במסמך Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## הסרת סימן מים ממכתב

The The The [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) הכיתה מספקת את שיטת מסירת סימן המים ממסמכים.

דוגמה לקוד הבא מראה כיצד להסיר סימן מים ממסמכים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

אם מוסיפים סימני מים באמצעות [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) אובייקט הכיתה לאחר מכן כדי להסיר את סימן המים מ מסמך שאתה צריך להגדיר רק את השם של צורת סימן מים במהלך הכנס ולאחר מכן להסיר את צורת סימן המים על ידי שם מוקצה.

דוגמה הקוד הבא מראה לך כיצד להגדיר את השם של צורת סימן המים ולהסיר אותו מן המסמך:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## הוסף סימן מים בתא שולחן

לפעמים אתה צריך להוסיף סימן מים / תמונה לתוך תא השולחן ולהציג אותו מחוץ לשולחן, אתה יכול להשתמש [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) רכוש. נכס זה מקבל או קובע דגל המציין אם הצורה מוצגת בתוך שולחן או מחוץ לו. שים לב כי הנכס עובד רק כאשר אתה מייעל את המסמך Microsoft Word 2010 שימוש [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) שיטה.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
