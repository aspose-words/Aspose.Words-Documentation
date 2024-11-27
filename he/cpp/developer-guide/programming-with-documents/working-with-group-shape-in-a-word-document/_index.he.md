---
title: כיצד להוסיף Group Shape למסמך Word
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם Group Shapes ב Word מסמכים
linktitle: עבודה עם Group Shapes ב Word מסמכים
description: "קיבוץ ופירוק צורות באמצעות C++."
type: docs
weight: 290
url: /he/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

לפעמים אתה צריך להוסיף group shape למסמך Word. group shape כזה מורכב ממספר צורות.

ב Microsoft Word, אתה יכול להוסיף במהירות group shape באמצעות הפקודה/לחצן הקבוצה. ניתן להעביר צורה בודדת בקבוצה בנפרד.

ב Aspose.Words קל מאוד להוסיף group shape באמצעות הכיתה [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). הצורה נוצרת בנפרד באמצעות הכיתה [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ואז מוסיפה לאובייקט **GroupShape** בשיטת [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

דוגמת הקוד הבאה מראה כיצד להוסיף group shape למסמך Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

להלן כמה מהסוגים `Shape` הנתמכים ב Aspose.Words. לקבלת רשימה מלאה, בקר [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- מלבן
- RoundRectangle
- RoundRectangle
- אליפסה
- יהלום
- משולש
- RightTriangle
- מקבילית
- טרפז
- שישה-צד
- אוקטגון

{{% /alert %}}
