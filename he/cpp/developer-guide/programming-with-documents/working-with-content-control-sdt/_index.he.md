---
title: עבודה עם בקרת תוכן SDT
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם בקרת תוכן SDT
linktitle: עבודה עם בקרת תוכן SDT
type: docs
description: "ניהול תוכן מסמכים מתקדם, כיצד ליצור ולתפעל בקרות תוכן (תגי מסמך מובנים) באמצעות C++."
weight: 390
url: /he/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

ב Microsoft Word, אתה יכול ליצור טופס על ידי התחלה בתבנית והוספת פקדי תוכן, כולל תיבות סימון, תיבות טקסט, בוחרי תאריכים ורשימות נפתחות. ב Aspose.Words, תג מסמך מובנה או בקרת תוכן מכל מסמך שנטען ב Aspose.Words מיובא כצומת StructuredDocumentTag. תגי מסמך מובנים (SDT או בקרת תוכן) מאפשרים להטמיע סמנטיקה המוגדרת על ידי הלקוח, כמו גם את התנהגותה ומראהה במסמך. StructuredDocumentTag יכול להופיע במסמך במקומות הבאים:

- רמת בלוק - בין פסקאות וטבלאות, כילד של גוף, HeaderFooter, הערה, הערת שוליים או צומת צורה
- רמת שורה - בין שורות בטבלה, כילד של צומת טבלה
- רמת תאים - בין תאים בשורת טבלה, כילד של צומת שורה
- רמה מוטבעת - בין תוכן מוטבע בפנים, כילד של פסקה
- מקונן בתוך עוד StructuredDocumentTag

## כיצד להגדיר סגנון לעיצוב טקסט שהוקלד בבקרת התוכן

אם ברצונך להגדיר את סגנון בקרת התוכן, תוכל להשתמש במאפיינים `StructuredDocumentTag.Style` או `StructuredDocumentTag.StyleName`. כאשר אתה מקליד את הטקסט לבקרת תוכן במסמך הפלט, הטקסט שהוקלד יהיה בסגנון "ציטוט".

{{% alert color="primary" %}}

שים לב שניתן להחיל רק סגנונות מקושרים ותווים על בקרת תוכן. InvalidOperationException ("לא ניתן להחיל סגנון זה על SDT") נזרק כאשר סגנון שקיים אך אינו מקושר או סגנון תווים מוחל.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להגדיר את סגנון בקרת התוכן:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## עבודה עם בקרת תוכן חוזרת

החלק החוזר בקרת תוכן מאפשר לחזור על התוכן הכלול בתוכו. באמצעות Aspose.Words, ניתן ליצור את הצמתים המובנים של תג המסמך של סוגי הפריטים החוזרים על עצמם ואת סוגי הפריטים החוזרים על עצמם, ולמטרה זו, סוג הספירה SdtType מספק **RepeatingSectionItem** תכונה.

דוגמת הקוד הבאה מראה כיצד לקשור בקרת תוכן של קטע חוזר לטבלה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
