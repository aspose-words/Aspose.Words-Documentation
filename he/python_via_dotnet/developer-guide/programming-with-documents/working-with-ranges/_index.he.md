---
title: עבודה עם טווחים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם טווחים
linktitle: עבודה עם טווחים
description: "עבודה עם טווחים במסמך באמצעות Python."
type: docs
weight: 130
url: /he/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In In In Aspose.Words, A A A A [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) הוא "חלון מנופח" למודל דמוי עץ אחר של המסמך.

{{% /alert %}}

אם עבדת עם Microsoft Word אוטומציה, אתה כנראה יודע שאחד הכלים העיקריים לבחון ולשנות את תוכן המסמך הוא [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) אובייקט. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) זה כמו "חלון" לתוך תוכן המסמך ותבנית. Aspose.Words יש גם את [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) מעמד והוא נועד להיראות ולפעול באופן דומה **Range** פנימה Microsoft Word. למרות **Range** לא יכול לכסות חלק שרירותי של מסמך ואין לו **Start** ו **End**, אתה יכול לגשת לטווח מכוסה על ידי כל מסמך node כולל [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) עצמו. במילים אחרות, לכל צומת יש טווח משלו. The The The [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) האובייקט מאפשר לך לגשת ולשנות טקסט, סימניות ושדות טופס בטווח.

## Retrieve Plain Text

השתמש [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) רכוש כדי לשחזר טקסט פשוט, לא מתואם של הטווח.

הדוגמה הבאה של הקוד מראה כיצד לקבל טקסט ברור ולא מתואם של טווח:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## מחיקת טקסט

טווח מאפשר מחיקה של כל הדמויות של הטווח על ידי קריאה [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

הדוגמה הבאה של הקוד מראה כיצד למחוק את כל הדמויות של טווח:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
