---
title: עבודה עם Watermark Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Watermark
linktitle: עבודה עם Watermark
type: docs
description: "מניפולציות סימן מים באמצעות Java."
weight: 70
url: /he/java/working-with-watermark/
---

נושא זה דן כיצד לעבוד באופן יזום עם סימן מים באמצעות סימן מים Aspose.Words. סימן מים הוא תמונת רקע המציגה מאחורי הטקסט במסמך. סימן מים יכול להכיל טקסט או תמונה המיוצגת על ידי [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) מעמד.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [המונחים: watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## הוסף סימן מים לתעודה

In In In Microsoft Word, סימן מים יכול להיות מוכנס בקלות במסמך באמצעות הפקודה הכנס Watermark. Aspose.Words מספק [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) שיעור להוסיף או להסיר סימן מים במסמכים. Aspose.Words מספק [סימן מים סוג](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)הגדרה של שלושה סוגים אפשריים של סימני מים (Text, Image, and None) לעבוד עם

### תגית: Text Watermark

הדוגמה הבאה של הקוד ממחישה כיצד להוסיף סימן מים בטקסט במסמך על ידי הגדרה [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) באמצעות [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) שיטה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### תגית: Bloodmark

הדוגמה הבאה של הקוד מראה כיצד להוסיף סימן מים בתמונה במסמך על ידי הגדרה [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) באמצעות [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) שיטה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

סימן המים ניתן גם להיות מוכנס באמצעות כיתה צורה. זה מאוד קל להכניס כל צורה או תמונה לתוך ראש או רגל ובכך ליצור סימן מים מכל סוג שניתן להעלות על הדעת.

הדוגמה הבאה לקוד מוסיפה סימן מים ל מסמך Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## להסיר סימן מים מתעודה

The The The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) הכיתה מספקת `Remove` שיטה להסיר את סימן המים מתעודה.

דוגמאות הקוד הבאות מראות כיצד להסיר סימן מים ממסמכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

כדי להסיר את סימן המים מ מסמך אתה צריך להגדיר רק את השם של צורת סימן המים במהלך הכנס ולאחר מכן להסיר את צורת סימן המים על ידי שם מוקצה.

דוגמה הקוד הבא מראה לך כיצד להגדיר את השם של צורת סימן המים ולהסיר אותו מן המסמך:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## הוסף סימן מים לתוך תא שולחן

לפעמים אתה צריך להוסיף סימן מים / תמונה לתוך תא השולחן ולהציג אותו מחוץ לשולחן, אתה יכול להשתמש [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) רכוש. נכס זה מקבל או קובע דגל המציין אם הצורה מוצגת בתוך שולחן או מחוץ לו. שים לב כי הנכס עובד רק כאשר אתה מייעל את המסמך Microsoft Word 2010 שימוש [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) שיטה

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
