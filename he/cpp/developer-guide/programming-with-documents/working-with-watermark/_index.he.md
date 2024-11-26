---
title: עבודה עם סימן מים ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם סימן מים
linktitle: עבודה עם סימן מים
type: docs
description: "מסמך מניפולציה סימן מים באמצעות C++."
weight: 340
url: /he/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

נושא זה דן כיצד לעבוד באופן פרוגרמטי עם סימן מים באמצעות Aspose.Words. סימן מים הוא תמונת רקע המוצגת מאחורי הטקסט במסמך. סימן מים יכול להכיל טקסט או תמונה המיוצגת על ידי הכיתה [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## הוסף סימן מים למסמך

ב Microsoft Word, ניתן להכניס בקלות סימן מים למסמך באמצעות הפקודה הוסף סימן מים. Aspose.Words מספק את הכיתה [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) כדי להוסיף או להסיר סימן מים במסמכים. Aspose.Words מספק את [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)ספירה המגדירה שלושה סוגים אפשריים של סימני מים (טקסט, תמונה ואף אחד) לעבוד איתם.

### הוסף סימן מים טקסט

דוגמת הקוד הבאה מדגימה כיצד להוסיף סימן מים טקסט במסמך על ידי הגדרת [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) באמצעות שיטת [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### הוסף סימן מים לתמונה

דוגמת הקוד הבאה מדגימה כיצד להוסיף סימן מים לתמונה במסמך על ידי הגדרת [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) בשיטת [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

ניתן להכניס את סימן המים גם באמצעות מחלקת צורה. קל מאוד להכניס כל צורה או תמונה לכותרת עליונה או תחתונה וכך ליצור סימן מים מכל סוג שניתן להעלות על הדעת. דוגמת הקוד הבאה מכניסה סימן מים למסמך Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## הסר סימן מים ממסמך

המחלקה [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) מספקת את שיטת ההסרה להסרת סימן המים ממסמך.

דוגמת הקוד הבאה מראה כיצד להסיר סימן מים ממסמכים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

אם סימני המים מתווספים באמצעות אובייקט הכיתה [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), כדי להסיר את סימן המים ממסמך, עליך להגדיר רק את שם צורת סימן המים במהלך ההכנסה ולאחר מכן להסיר את צורת סימן המים בשם שהוקצה.

דוגמת הקוד הבאה מראה לך כיצד להגדיר את שם צורת סימן המים ולהסיר אותה מהמסמך:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## הוסף סימן מים בתא הטבלה

לפעמים אתה צריך להכניס סימן מים/תמונה לתא של טבלה ולהציג אותו מחוץ לטבלה, אתה יכול להשתמש במאפיין [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). מאפיין זה מקבל או קובע דגל המציין אם הצורה מוצגת בתוך שולחן או מחוצה לו. שים לב שמאפיין זה פועל רק כאשר אתה מבצע אופטימיזציה של המסמך עבור Microsoft Word 2010 בשיטת [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

דוגמת הקוד הבאה מראה כיצד להשתמש במאפיין זה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
