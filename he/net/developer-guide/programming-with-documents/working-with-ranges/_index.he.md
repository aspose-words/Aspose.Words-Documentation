---
title: עבודה עם טווחים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם טווחים
linktitle: עבודה עם טווחים
description: "מבוא ל- Range Aspose.Words עבור .NET."
type: docs
weight: 130
url: /he/net/working-with-ranges/
---

{{% alert color="primary" %}}

In In In Aspose.Words, טווח הוא "חלון מנופח" למודל דמוי עץ אחר של המסמך.

{{% /alert %}}

אם עבדת עם Microsoft Word אוטומציה, אתה כנראה יודע שאחד הכלים העיקריים לבחון ולשנות את תוכן המסמך הוא **Range** אובייקט. **Range** זה כמו "חלון" לתוך תוכן המסמך ותבנית.

Aspose.Words יש גם את [Range](https://reference.aspose.com/words/net/aspose.words/range/) מעמד והוא נועד להיראות ולפעול באופן דומה **Range** פנימה Microsoft Word. למרות **Range** לא יכול לכסות חלק שרירותי של מסמך ואין לו **Start** ו **End**, אתה יכול לגשת לטווח מכוסה על ידי כל מסמך node כולל [Document](https://reference.aspose.com/words/net/aspose.words/document/) עצמו. במילים אחרות, לכל צומת יש טווח משלו. The The The **Range** האובייקט מאפשר לך לגשת ולשנות טקסט, סימניות ושדות טופס בטווח.

## Retrieve Plain Text

השתמש [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) רכוש כדי לשחזר טקסט פשוט, לא מתואם של הטווח.

הדוגמה הבאה של הקוד מראה כיצד לקבל טקסט ברור ולא מתואם של טווח:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## מחיקת טקסט

טווח מאפשר מחיקה של כל הדמויות של הטווח על ידי קריאה [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

הדוגמה הבאה של הקוד מראה כיצד למחוק את כל הדמויות של טווח:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}