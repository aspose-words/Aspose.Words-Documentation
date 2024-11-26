---
title: עבודה עם Watermark C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Watermark
linktitle: עבודה עם Watermark
description: "מניפולציות סימן מים באמצעות C#."
type: docs
weight: 340
url: /he/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

נושא זה דן כיצד לעבוד באופן יזום עם סימן מים באמצעות סימן מים Aspose.Words. סימן מים הוא תמונת רקע המציגה מאחורי הטקסט במסמך. סימן מים יכול להכיל טקסט או תמונה המיוצגת על ידי [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) מעמד.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [Free online Document Watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## הוסף סימן מים לתעודה

In In In Microsoft Word, סימן מים יכול להיות מוכנס בקלות במסמך באמצעות הפקודה הכנס Watermark. Aspose.Words מספק [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) שיעור להוסיף או להסיר סימן מים במסמכים. Aspose.Words מספק [סימן מים סוג](https://reference.aspose.com/words/net/aspose.words/watermark/type/)הגדרה של שלושה סוגים אפשריים של סימני מים (Text, Image, and None) לעבוד עם

### תגית: Text Watermark

הדוגמה הבאה של הקוד ממחישה כיצד להוסיף סימן מים בטקסט במסמך על ידי הגדרה [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) באמצעות [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) שיטה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### תגית: Bloodmark

הדוגמה הבאה של הקוד מראה כיצד להוסיף סימן מים בתמונה במסמך על ידי הגדרה [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) באמצעות [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) שיטה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

סימן המים ניתן גם להיות מוכנס באמצעות כיתה צורה. זה מאוד קל להכניס כל צורה או תמונה לתוך ראש או רגל ובכך ליצור סימן מים מכל סוג שניתן להעלות על הדעת.

הדוגמה הבאה לקוד מציגה סימן מים במסמך Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## הסרת סימן מים ממכתב

The The The [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) הכיתה מספקת את שיטת מסירת סימן המים ממסמכים.

דוגמה לקוד הבא מראה כיצד להסיר סימן מים ממסמכים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

אם מוסיפים סימני מים באמצעות [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) אובייקט הכיתה לאחר מכן כדי להסיר את סימן המים מ מסמך שאתה צריך להגדיר רק את השם של צורת סימן מים במהלך הכנס ולאחר מכן להסיר את צורת סימן המים על ידי שם מוקצה.

דוגמה הקוד הבא מראה לך כיצד להגדיר את השם של צורת סימן המים ולהסיר אותו מן המסמך:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## הוסף סימן מים לתוך תא שולחן

לפעמים אתה צריך להוסיף סימן מים / תמונה לתוך תא השולחן ולהציג אותו מחוץ לשולחן, אתה יכול להשתמש [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) רכוש. נכס זה מקבל או קובע דגל המציין אם הצורה מוצגת בתוך שולחן או מחוץ לו. שים לב כי הנכס עובד רק כאשר אתה מייעל את המסמך Microsoft Word 2010 שימוש [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) שיטה.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
