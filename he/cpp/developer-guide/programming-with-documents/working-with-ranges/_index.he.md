---
title: עבודה עם טווחים ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם טווחים
linktitle: עבודה עם טווחים
description: "מבוא לתכונת הטווח ב Aspose.Words עבור C++."
type: docs
weight: 130
url: /he/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

ב Aspose.Words, טווח הוא "חלון שטוח"למודל דמוי עץ של המסמך.

{{% /alert %}}

אם עבדת עם אוטומציה Microsoft Word, אתה בטח יודע שאחד הכלים העיקריים לבחינה ושינוי תוכן המסמך הוא האובייקט **Range**. **Range** הוא כמו "חלון"לתוכן המסמך ולעיצוב.

Aspose.Words יש גם את הכיתה [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) והוא נועד להיראות ולפעול באופן דומה ל **Range** ב Microsoft Word. למרות ש **Range** לא יכול לכסות חלק שרירותי של מסמך ואין לו **Start** ו **End**, אתה יכול לגשת לטווח המכוסה על ידי כל צומת מסמך כולל [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) עצמו. במילים אחרות, לכל צומת יש טווח משלו. האובייקט **Range** מאפשר לך לגשת ולשנות שדות טקסט,סימניות וטופס בטווח.

## אחזר טקסט רגיל

השתמש במאפיין [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) כדי לאחזר טקסט רגיל ולא מעוצב של הטווח.

דוגמת הקוד הבאה מראה כיצד לקבל טקסט פשוט ולא מעוצב של טווח:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## מחיקת טקסט

טווח מאפשר את מחיקת כל האותיות של הטווח על ידי קריאה [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

דוגמת הקוד הבאה מראה כיצד למחוק את כל התווים בטווח:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
