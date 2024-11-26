---
title: "המונחים: Layout Options Python"
second_title: Aspose.Words עבור Python via .NET
articleTitle: "המונחים: Layout Options"
linktitle: "המונחים: Layout Options"
description: "המונחים: Layout אפשרויות עבור פריסות מסמך שונות Python."
type: docs
weight: 10
url: /he/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר לך ליצור מסמכי פלט עם פריסות שונות, בהתאם הפרמטרים המפורטים בתכונות של [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) מעמד. חלק מהנכסים האלה דומים לחלק Microsoft Word אפשרויות לממשק משתמשים - הם יתוארו במאמר זה.

לרשימה מלאה של פרמטרים כגון [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) כדי לחשב מספרי דף בסעיף מתמשך שמשחזר את מספר העמוד, או [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) להתעלם "מדדי המדפסת של Use כדי להניח מסמך" אפשרות תאימות, ראה את האפשרות תאימות. [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) דף הכיתה

## עיצוב Marks

Aspose.Words מאפשר לנהל סימני עיצוב באמצעות התכונות הבאות:

- - [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) - A `Boolean` ערך, אשר מציין אם הטקסט הנסתר ניתן.
- - [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - A `Boolean` ערך, המצביע על כך שהדמויות בסימן פסקה ניתנות.

העמוד המתואר בדוגמה למטה מכיל שלוש פסקאות. השני נסתר. משתמש יכול לשנות את [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) אפשרות להציג טקסט חבוי זה בעמוד. כמו כן, לכל פסקה יש סימן סעיף בסוף. סימן הסעיף בדרך כלל אינו גלוי אלא אם כן [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) הנכס נועד להפוך אותו.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

In In In Microsoft Word, פרמטרים אלה נקבעים באמצעות תיבת הדו-שיח "File" כלהלן:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## הערות וחידושים

עם Aspose.Words, באפשרותך לנסח הערות מסמך שיראות אותו הדבר Microsoft Word. כדי לציין אם הערות ניתנות, השתמש [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) רכוש.

In In In Microsoft Word, פרמטר זה מוגדר באמצעות תיבת הדו-שיח "Track Change Options", כפי שמוצג להלן:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

גם, Aspose.Words מאפשר לך להציג תיקונים במסמך. השתמש [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) רכוש [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) שיעור כדי לקבוע אם המסמכים מוצגים. כדי לשלוט במראה שלהם (revision מדגיש צבע, שינוי צבע בר, וכו '), השתמש בתבנית. [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) מעמד.

ניתן גם לקבל תיקונים המוצגים כהערות לתוכן. לשם כך, השתמש [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) רכוש ו [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) ערך.

הדוגמה הבאה של הקוד מראה כיצד להתאים אישית את תצוגת השיפוץ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

התמונה למטה מראה כיצד Aspose.Words הערות ועדכונים:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
