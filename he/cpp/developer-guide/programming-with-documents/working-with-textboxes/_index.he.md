---
title: עבודה עם TextBoxes ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם TextBoxes
linktitle: עבודה עם TextBoxes
description: "מבוא לתיבות טקסט מקושרות תכונה ב Aspose.Words עבור C++."
type: docs
weight: 250
url: /he/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

ב Aspose.Words, ה [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) מחלקה משמשת לציון אופן הצגת הטקסט בתוך צורה. הוא חושף נכס ציבורי בשם **Parent** כדי לקבל את צורת האב עבור תיבת הטקסט כך שהלקוח יוכל למצוא את המקושר [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) מהמשויך **TextBox**.

## צור קישור

הכיתה **TextBox** מספקת שיטה [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) כדי לבדוק אם ניתן לקשר את **TextBox** למטרה **Textbox**.

דוגמת הקוד הבאה מראה כיצד לבדוק אם ניתן לקשר את `TextBox` לתיבת הטקסט היעד:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## בדוק TextBox רצף

ישנן מספר דרכים להציג טקסט בצורה. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) יכול להיות הראש, האמצע או הזנב של רצף.

דוגמת הקוד הבאה מראה כיצד לבדוק אם **TextBox** הוא ראש, זנב או אמצע הרצף:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## לשבור קישור

באמצעות שיטת [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) אתה יכול לשבור את הקישור הבא **TextBox**.

דוגמת הקוד הבאה מראה כיצד לשבור קישור עבור **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
