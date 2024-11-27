---
title: ציין אפשרויות פריסה ב C++
second_title: Aspose.Words עבור C++
articleTitle: ציין אפשרויות פריסה
linktitle: ציין אפשרויות פריסה
description: "ציין אפשרויות פריסה עבור פריסות מסמכים שונות."
type: docs
weight: 20
url: /he/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר לך ליצור מסמכי פלט עם פריסות שונות, בהתאם לפרמטרים שצוינו במאפיין [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) של **Document**. מאפיין זה דומה לחלק מאפשרויות תפריט ממשק המשתמש Microsoft Word המתוארות במאמר זה.

לקבלת רשימה מלאה של פרמטרים כגון [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) לחישוב מספרי עמודים בקטע רציף שמפעיל מחדש את מספור העמודים, או [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) כדי להתעלם מהאפשרות תאימות "השתמש במדדי מדפסת כדי לפרוס מסמך", עיין בדף הכיתה [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## סימני עיצוב

Aspose.Words מאפשר לנהל סימני עיצוב באמצעות המאפיינים הבאים:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - ערך `Boolean`, המציין אם הטקסט הנסתר מוצג.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - ערך `Boolean`, המציין אם תווים של סימן פסקה מוצגים.

הדף המתואר בדוגמה שלהלן מכיל שלוש פסקאות. השני מוסתר. משתמש יכול לשנות את האפשרות **ShowHiddenText** כדי להציג טקסט מוסתר זה בדף. כמו כן, לכל פסקה יש סימן פסקה בסוף. סימן הפסקה בדרך כלל אינו גלוי אלא אם כן המאפיין **ShowParagraphMarks** מוגדר כדי להציג אותו.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

ב Microsoft Word, פרמטרים אלה מוגדרים באמצעות תיבת הדו-שיח "קובץ אפשרויות תצוגה" כדלקמן:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## הערות ותיקונים

עם Aspose.Words, אתה יכול לעבד הערות מסמך שייראו כמו ב Microsoft Word. כדי לציין אם מוצגות הערות, השתמש במאפיין [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

ב Microsoft Word, פרמטר זה מוגדר באמצעות תיבת הדו-שיח "אפשרויות שינוי מסלול", כפי שמוצג להלן:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

כמו כן, Aspose.Words מאפשר לך להציג תיקונים במסמך. השתמש במאפיין [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) של הכיתה **LayoutOptions** כדי להגדיר אם תיקוני המסמך מוצגים. כדי לשלוט במראה שלהם (הצבע המדגיש את השינוי, צבע שורת השינוי, וכו').), השתמש בכיתה [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

אתה יכול גם להציג תיקונים כהערות לתוכן. למטרה זו, השתמש במאפיין [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) ובערך [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

דוגמת הקוד הבאה מראה כיצד להתאים אישית את תצוגת התיקונים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

התמונה למטה מראה כיצד Aspose.Words מעביר תגובות ומחיקת התיקונים:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## מעצב טקסט לעיבוד טיפוגרפיה מתקדם

המאפיין [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) מאפשר לך להגדיר את הפונקציונליות של עיצוב הטקסט, כמו גם את התמיכה בתכונות `OpenType`.

השתמש בעיצוב טקסט לעיבוד מסמכים במקרים העיקריים הבאים:

- מסמך משתמש בקרנינג, עיצוב מספרים, צורות מספרים או ליגטורות.
- מסמך משתמש בתסריטים מורכבים, כגון ערבית, חמר, תאילנדית וכו'.

{{% alert color="primary" %}}

עיצוב טקסט יופעל רק בעת ייצוא מסמך ל - PDF או XPS.

{{% /alert %}}
