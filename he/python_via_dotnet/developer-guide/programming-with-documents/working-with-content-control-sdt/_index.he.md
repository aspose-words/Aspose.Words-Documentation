---
title: עקבו אחרי Content Control SDT
second_title: Aspose.Words עבור Python via .NET
articleTitle: עקבו אחרי Content Control SDT
linktitle: עקבו אחרי Content Control SDT
description: "באמצעות python אתה יכול להטמיע סמנטיקה מוגדרת לקוח, כמו גם את התנהגותו והופעתו במסמך."
type: docs
weight: 390
url: /he/python-net/working-with-content-control-sdt/
---

In In In Microsoft Word, אתה יכול ליצור טופס על ידי החל עם תבנית והוספת בקרת תוכן, כולל Checkboxes, תיבות טקסט, בוחרים תאריך ורשימות ירידה. In In In <span notrans="<span notrans=" Aspose.Words"=""></span>" מסמך מובנה או בקרת תוכן מכל מסמך טעון לתוך Aspose.Words הוא מיובא כמו [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) צומת. תגי מסמך ממובנים (SDT או בקרת תוכן) מאפשרים להטמיע סמנטיקה מוגדרת של הלקוח, כמו גם התנהגותו והופעתו במסמך. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) יכול להופיע במסמך במקומות הבאים:

- רמת בלוק - בין פסקאות וטבלאות, כילד של [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) או [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Node
- רו-דרג - בין שורות בטבלה, כילד של ילד [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Node
- רמת תאים - בין תאים בשורה שולחן, כילד של [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) Node
- Inline-level - בין תוכן Inline בפנים, כילד של [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- נסמט בתוך אחר [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## הכנסת בקרת תוכן לתוך מסמך

בגרסה זו של Aspose.Words, סוגים הבאים של SDT או בקרת תוכן ניתן ליצור:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

הדוגמה הבאה לקוד ממחישה כיצד ליצור בקרת תוכן ב- Type Checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

הדוגמה הבאה של הקוד ממחישה כיצד ליצור בקרת תוכן של תיבת טקסט עשירה.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

הדוגמה הבאה של הקוד ממחישה כיצד ליצור בקרת תוכן של תיבת ה-Combo מסוג.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## כיצד לעדכן את בקרת התוכן

סעיף זה מסביר כיצד לעדכן את ערכי SDT או בקרת תוכן באופן מתודולוגי

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המצב הנוכחי של תיבת הסימון:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

דוגמה הקוד הבא מראה כיצד לשנות את בקרת התוכן של תיבת טקסט פשוטה, רשימת ירידה ותמונה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמאות אלה [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## בקרת התוכן של Custom XML Parts

באפשרותך לקשור בקרות תוכן עם נתוני XML (*פרט XML חלק*) במסמכים Word.

הדוגמה הבאה של הקוד מראה כיצד לקשור את השליטה בתוכן לחלקים של XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## המונחים: Structured Document tag

אתה יכול לקבל את המיפוי של תג מסמך מובנה זה טווח נתוני XML בחלק XML מותאם אישית של המסמך הנוכחי באמצעות שימוש ב- [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) רכוש. אבל, [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) ניתן להשתמש בשיטה כדי למפות טווח תג מסמך מובנה לנתונים של XML.

דוגמה לקוד הבא מראה כיצד להגדיר מיפוי XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## המונחים: a content control

אתה יכול לנקות את התוכן של שליטה תוכן עם הצגת בעל מקום. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) שיטה מנקה תוכן של תג מסמך מובנה זה ומציגה בעל מקום אם הוא מוגדר. עם לא ניתן לנקות את התוכן של בקרת תוכן אם יש לו תיקונים. אם לפקד תוכן אין בעל מקום, חמישה חללים מוכנסים כמו ב-MS Word (מלבד סעיפים חוזרים, חזרה על פריטים, קבוצות, תיבות בדיקה, ציטוטים). אם בקרת תוכן ממפה ל-XML מותאם אישית, הצומת של XML הוא ברור.

הדוגמה הבאה של הקוד מראה כיצד לנקות את התוכן של בקרת תוכן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## שינוי בקרת תוכן וצבעי גבולות

The The The [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) הנכס מאפשר לך לקבל או להגדיר את צבע בקרת התוכן. הצבע משפיע על בקרת התוכן בשני מצבים:

1.1 1. MS Word מדגיש את הרקע של בקרת התוכן כאשר העכבר עובר על שליטה התוכן. זה עוזר לזהות את בקרת התוכן. צבע הדגשה הוא מעט "רך" מאשר *color*. לדוגמה, MS Word מדגיש את הרקע עם צבע ורוד, כאשר *color* אדום.
2. כאשר אתה אינטראקציה (מדיטציה, בחירת וכו ') עם בקרת התוכן, הגבול של בקרת תוכן הוא צבע עם *color*.

לדוגמה הקוד הבא מראה כיצד לשנות את צבע בקרת התוכן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## כיצד להגדיר סגנון כדי לעצב טקסט הקלד לתוך בקרת התוכן

אם אתה רוצה להגדיר את סגנון בקרת התוכן, אתה יכול להשתמש [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) או [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) תכונות. כאשר אתה מקליד את הטקסט לתוך בקרת תוכן במסמך הפלט, הטקסט המסוגד יהיה את הסגנון "Quote".

{{% alert color="primary" %}}

הערה כי רק קישורים וסגנונות אופי יכולים להיות מיושם על בקרת תוכן. יוצא דופן ("לא יכול ליישם את הסגנון הזה ל-SDT") נזרק כאשר סגנון קיים אך אינו מקושר או סגנון אופי מוחל.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להגדיר את הסגנון של בקרת תוכן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## עבודה עם תיקון תוכן

בקרת התוכן חוזרת מאפשרת חזרה על התוכן הכלול בתוכו. שימוש Aspose.Words, תג המסמך המובנה של הסעיף החוזר על עצמו ועל סוגי הפריט החוזרים ניתן ליצור ולתכלית זו, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) סוג ההארה מספק [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לקשור שלט תוכן חוזר לשולחן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
