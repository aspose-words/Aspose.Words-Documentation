---
title: "המונחים: Layout Options C#"
second_title: Aspose.Words עבור .NET
articleTitle: "המונחים: Layout Options"
linktitle: "המונחים: Layout Options"
description: "המונחים: Layout אפשרויות עבור פריסות מסמך שונות C#."
type: docs
weight: 10
url: /he/net/specify-layout-options/
---

Aspose.Words מאפשר לך ליצור מסמכי פלט עם פריסות שונות, בהתאם הפרמטרים המפורטים בתכונות של [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) מעמד. חלק מהנכסים האלה דומים לחלק Microsoft Word אפשרויות לממשק משתמשים - הם יתוארו במאמר זה.

לרשימה מלאה של פרמטרים כגון [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) כדי לחשב מספרי דף בסעיף מתמשך שמשחזר את מספר העמוד, או [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) להתעלם "מדדי המדפסת של Use כדי להניח מסמך" אפשרות תאימות, ראה את האפשרות תאימות. [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) דף הכיתה

## עיצוב Marks

Aspose.Words מאפשר לנהל סימני עיצוב באמצעות התכונות הבאות:

- - [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) - A `Boolean` ערך, אשר מציין אם הטקסט הנסתר ניתן.
- - [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) - A `Boolean` ערך, המצביע על כך שהדמויות בסימן פסקה ניתנות.

העמוד המתואר בדוגמה למטה מכיל שלוש פסקאות. השני נסתר. משתמש יכול לשנות את **ShowHiddenText** אפשרות להציג טקסט חבוי זה בעמוד. כמו כן, לכל פסקה יש סימן סעיף בסוף. סימן הסעיף בדרך כלל אינו גלוי אלא אם כן **ShowParagraphMarks** הנכס נועד להפוך אותו.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

In In In Microsoft Word, פרמטרים אלה נקבעים באמצעות תיבת הדו-שיח "File" כלהלן:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## הערות וחידושים

עם Aspose.Words, באפשרותך לנסח הערות מסמך שיראות אותו הדבר Microsoft Word. כדי לציין אם הערות ניתנות, השתמש [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) רכוש.

In In In Microsoft Word, פרמטר זה מוגדר באמצעות תיבת הדו-שיח "Track Change Options", כפי שמוצג להלן:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

גם, Aspose.Words מאפשר לך להציג תיקונים במסמך. השתמש [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) רכוש **LayoutOptions** שיעור כדי לקבוע אם המסמכים מוצגים. כדי לשלוט במראה שלהם (revision מדגיש צבע, שינוי צבע בר, וכו '), השתמש בתבנית. [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) מעמד.

ניתן גם לקבל תיקונים המוצגים כהערות לתוכן. לשם כך, השתמש [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) רכוש ו [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) ערך.

הדוגמה הבאה של הקוד מראה כיצד להתאים אישית את תצוגת השיפוץ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

התמונה למטה מראה כיצד Aspose.Words הערות ועדכונים:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## שם הסרטון: Advanced Typography Rendering

The The The [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) הנכס מאפשר לך להגדיר את פונקציית עיצוב הטקסט, כמו גם את `OpenType` תכונות תמיכה

השתמש בעיצוב טקסט לעיבוד מסמכים במקרים העיקריים הבאים:

- מסמך משתמש Kerning, Numeral Shaping, Numeral Forms, או Ligatures.
- מסמך משתמש בתסריטאים מורכבים, כגון ערבית, חמר, תאילנד וכו'.

{{% alert color="primary" %}}

עיצוב טקסט יופעל רק כאשר ייצוא מסמך ל- PDF או PDF או XPS.

{{% /alert %}}
