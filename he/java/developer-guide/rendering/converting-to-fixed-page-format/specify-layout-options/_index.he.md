---
title: "המונחים: Layout Options Java"
second_title: Aspose.Words עבור Java
articleTitle: "המונחים: Layout Options"
linktitle: "המונחים: Layout Options"
description: "צור מסמכי פלט עם פריסות שונות, בהתאם הפרמטרים המפורטים במסמך באמצעות שימוש Java."
type: docs
weight: 10
url: /he/java/specify-layout-options/
---

Aspose.Words מאפשר לך ליצור מסמכי פלט עם פריסות שונות, בהתאם הפרמטרים המפורטים ב הפרמטרים המפורטים ב [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) רכוש **Document**. נכס זה דומה לחלק Microsoft Word אפשרויות לממשק המשתמש המתוארות במאמר זה.

לרשימה מלאה של פרמטרים כגון [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) כדי לחשב מספרי דף בסעיף מתמשך שמשחזר את מספר העמוד, או [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) להתעלם "מדדי המדפסת של Use כדי להניח מסמך" אפשרות תאימות, ראה את האפשרות [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) דף הכיתה

## עיצוב Marks

Aspose.Words מאפשר לנהל סימני עיצוב באמצעות התכונות הבאות:

- - [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - A `Boolean` ערך, אשר מציין אם הטקסט הנסתר ניתן.
- - [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - A `Boolean` ערך, המצביע על כך שהדמויות בסימן פסקה ניתנות.

העמוד המתואר בדוגמה למטה מכיל שלוש פסקאות. השני נסתר. משתמש יכול לשנות את **ShowHiddenText** אפשרות להציג טקסט חבוי זה בדף. כמו כן, לכל פסקה יש סימן סעיף בסוף. סימן הסעיף בדרך כלל אינו גלוי אלא אם כן **ShowParagraphMarks** הנכס נועד להפוך אותו.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In In In Microsoft Word, פרמטרים אלה נקבעים באמצעות תיבת הדו-שיח "File" כלהלן:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## הערות וחידושים

עם Aspose.Words, באפשרותך לנסח הערות מסמך שיראו אותו הדבר Microsoft Word. כדי לציין אם הערות ניתנות, השתמש [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) רכוש.

In In In Microsoft Word, פרמטר זה מוגדר באמצעות תיבת הדו-שיח "Track Change Options", כפי שמוצג להלן:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

גם, Aspose.Words מאפשר לך להציג תיקונים במסמך. השתמש [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) רכוש **LayoutOptions** שיעור כדי לקבוע אם המסמכים מוצגים. כדי לשלוט במראה שלהם (revision מדגיש צבע, שינוי צבע בר, וכו '), השתמש בתבנית. [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) מעמד.

ניתן גם לקבל תיקונים המוצגים כהערות לתוכן. לשם כך, השתמש [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) רכוש ו [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) ערך.

הדוגמה הבאה של הקוד מראה כיצד להתאים אישית את תצוגת השיפוץ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

התמונה למטה מראה כיצד Aspose.Words הערות ועדכונים:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## שם הסרטון: Advanced Typography Rendering

The The The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) הנכס מאפשר לך להגדיר את פונקציית עיצוב הטקסט, כמו גם את `OpenType` תכונות תמיכה

השתמש בעיצוב טקסט לעיבוד מסמכים במקרים העיקריים הבאים:

- מסמך משתמש Kerning, Numeral Shaping, Numeral Forms, או Ligatures.
- מסמך משתמש בתסריטאים מורכבים, כגון ערבית, חמר, תאילנד וכו'.

{{% alert color="primary" %}}

עיצוב טקסט יופעל רק כאשר ייצוא מסמך ל- PDF או PDF או XPS.

{{% /alert %}}
