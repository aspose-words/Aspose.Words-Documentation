---
title: כיצד להוסיף Group יצירת מסמך Word
second_title: Aspose.Words עבור .NET
articleTitle: כיצד להוסיף Group יצירת מסמך Word
linktitle: עבודה עם Group טפסים ב-Word Documents
description: "Groupצורות ing ו ungrouping באמצעות C#."
type: docs
weight: 290
url: /he/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

לפעמים צריך להוסיף group shape לתוך מסמך Word. כזה group shape מורכב ממספר צורות.

In In In Microsoft Word, ניתן להוסיף במהירות group shape באמצעות Group פקודה / Button ניתן להעביר צורה אישית בקבוצה בנפרד.

In In In Aspose.Words קל מאוד להוסיף group shape באמצעות [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) מעמד. **Shape** נוצר בנפרד באמצעות [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ואז הוסיף [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) אובייקט באמצעות [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) שיטה.

דוגמה לקוד הבא מראה כיצד להוסיף group shape לתוך מסמך Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

להלן חלק `Shape` סוגים נתמך Aspose.Words:

- Rectangle
- RoundRectangle
- RoundRectangle
- אליפס
- יהלום
- משולש
- תגית: RightTriangle
- מקביל
- Traezoid
- Hexagon
- אוקטגון

לרשימה מלאה אנא בדוק את [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) מעמד.

{{% /alert %}}
