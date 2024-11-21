---
title: עבודה עם טווחים Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם טווחים
linktitle: עבודה עם טווחים
description: "מבוא ל- Range Aspose.Words עבור Java."
type: docs
weight: 130
url: /he/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In In In Aspose.Words, טווח הוא "חלון מנופח" למודל דמוי עץ אחר של המסמך.

{{% /alert %}}

אם עבדת עם Microsoft Word אוטומציה, אתה כנראה יודע שאחד הכלים העיקריים לבחון ולשנות את תוכן המסמך הוא `Range` אובייקט טווח הוא כמו "חלון" לתוך תוכן המסמך ותבנית.

Aspose.Words יש גם את [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) מעמד והוא נועד להיראות ולפעול באופן דומה **Range** פנימה Microsoft Word. למרות **Range** לא יכול לכסות חלק שרירותי של מסמך ואין לו **Start** ו **End**, אתה יכול לגשת לטווח מכוסה על ידי כל מסמך node כולל [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) עצמו. במילים אחרות, לכל צומת יש טווח משלו. The The The **Range** האובייקט מאפשר לך לגשת ולשנות טקסט, סימניות ושדות טופס בטווח.

## Retrieving Plain Text

השתמש [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) רכוש כדי לאחזר את הטקסט הפשוט, הלא מתואם של הטווח.

הדוגמה הבאה של הקוד מראה כיצד לקבל טקסט פשוט, לא מתואם של טווח:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## למחוק טקסט

The The The `Range` הכיתה מאפשרת מחיקה של כל הדמויות של הטווח על ידי קריאה [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

הדוגמה הבאה של הקוד מראה כיצד למחוק את כל הדמויות של טווח:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 
