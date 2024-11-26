---
title: עבודה עם טקסט מקושר Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם טקסט מקושר
linktitle: עבודה עם טקסט מקושר
description: "מבוא לתיבת טקסט מקושרת Aspose.Words עבור Java."
type: docs
weight: 250
url: /he/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In In In Aspose.Words, The The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) הכיתה משמשת כדי לציין כיצד טקסט מוצג בתוך צורה. זה מספק נכס ציבורי בשם ההורה כדי לקבל את הצורה ההורה עבור תיבת הטקסט כדי לאפשר ללקוח למצוא מקושר [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) מקושר **TextBox**.

## ליצור קישור

The The The **TextBox** הכיתה מספקת [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) שיטה כדי לבדוק אם **TextBox** יכול להיות קשור למטרה **Textbox**.

דוגמה לקוד הבא מראה כיצד לבדוק אם `TextBox` ניתן לקשר לתיבת טקסט היעד:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## בדוק טקסט Box Sequence

ישנן מספר דרכים להציג טקסט בצורה. The The The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) יכול להיות ראש, ביניים או Tail של רצף.

דוגמה לקוד הבא מראה כיצד לבדוק אם **TextBox** הוא ראש, Tail או Middle of theרצף:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## לשבור קישור

באמצעות [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) שיטה שאתה יכול לשבור את הקישור הבא **TextBox**.

דוגמה לקוד הבא מראה כיצד לשבור קישור **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
