---
title: עבודה עם גופנים ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם גופנים
linktitle: עבודה עם גופנים
description: "עיצוב גופן בפרטים באמצעות C++."
type: docs
weight: 230
url: /he/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

גופן הוא קבוצה של תווים עם גודל מסוים, צבע ועיצוב. Aspose.Words מאפשר לך לעבוד עם גופנים באמצעות [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) מרחב שמות וה [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) כיתה.

## עיצוב גופן

עיצוב הגופן הנוכחי מיוצג על ידי האובייקט **Font** שהוחזר על ידי המאפיין [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). הכיתה **Font** מכילה מגוון רחב של מאפייני גופן, המשכפלים את אלה הזמינים ב Microsoft Word.

דוגמת הקוד הבאה מראה כיצד להגדיר עיצוב גופן:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

מאפייני מילוי עכשיו זמינים גם עבור גופנים להגדיר עיצוב מילוי של טקסט. זה נותן יכולת לשנות, למשל, את צבע החזית או שקיפות מילוי הטקסט.

## קבלת מרווח שורות גופן

מרווח שורות גופן הוא המרחק האנכי בין קווי הבסיס של שתי שורות טקסט רצופות. אז המרווח בין השורות כולל את החלל הריק בין השורות יחד עם גובה הדמות עצמה.

המאפיין [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) הוצג לכיתה **Font** כדי לקבל ערך זה, כפי שמוצג בדוגמה הבאה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## גופן EmphasisMark

כמה שפות מזרח אסיה משתמשות בסימן דגש מיוחד כדי לציין דגש. המחלקה **Font** מספקת את המאפיין [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) כדי לקבל או להגדיר את ערכי הספירה `EmphasisMark` שיוחלו בעת העיצוב.

דוגמת הקוד הבאה מראה כיצד להגדיר את המאפיין **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
