---
title: עבודה עם TextBoxs C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם SMS
linktitle: עבודה עם SMS
description: "מבוא לתיבת טקסט מקושרת Aspose.Words עבור .NET."
type: docs
weight: 250
url: /he/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In In In Aspose.Words, The The [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) הכיתה משמשת כדי לציין כיצד טקסט מוצג בתוך צורה. הוא חושף נכס ציבורי בשם **Parent** כדי לקבל את הצורה של ההורה עבור תיבת הטקסט כך הלקוח יכול למצוא את המקושר [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) מתוך קשורות **TextBox**.

## יצירת קישור

The The The **TextBox** מעמד מספק [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) שיטה כדי לבדוק אם **TextBox** יכול להיות קשור למטרה **Textbox**.

הדוגמה הבאה מראה כיצד לבדוק אם `TextBox` ניתן לקשר לתיבת טקסט היעד:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## בדוק טקסט Box Sequence

ישנן מספר דרכים להציג טקסט בצורה. The The The [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) יכול להיות ראש, ביניים או Tail של רצף.

דוגמה לקוד הבא מראה כיצד לבדוק אם **TextBox** הוא ראש, Tail או Middle of theרצף:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## שוברים קישור

באמצעות [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) שיטה שאתה יכול לשבור את הקישור הבא **TextBox**.

דוגמה לקוד הבא מראה כיצד לשבור קישור **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
