---
title: עקבו אחרי Content Control SDT
second_title: Aspose.Words עבור .NET
articleTitle: עקבו אחרי Content Control SDT
linktitle: עקבו אחרי Content Control SDT
description: "ניהול תוכן מתקדם מסמך, כיצד ליצור ולתפעל בקרת תוכן (Structured Documents) באמצעות שימוש C#."
type: docs
weight: 390
url: /he/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In In In Microsoft Word, אתה יכול ליצור טופס על ידי החל עם תבנית והוספת בקרת תוכן, כולל Checkboxes, תיבות טקסט, בוחרים תאריך ורשימות ירידה. In In In <span notrans="<span notrans=" Aspose.Words"=""></span>" מסמך מובנה או בקרת תוכן מכל מסמך טעון לתוך Aspose.Words הוא מיובא כצומת מובנה. תגי מסמך ממובנים (SDT או בקרת תוכן) מאפשרים להטמיע סמנטיקה מוגדרת של הלקוח, כמו גם התנהגותו והופעתו במסמך.

מבנה Tag יכול להופיע במסמך במקומות הבאים:

- רמת בלוק - בין פסקאות וטבלאות, כילד של גוף, HeaderFooter, Comment, Footnote או a Shape node
- שם הסרטון: Row-level - Among שורות בטבלה, as a Child of a Table node
- רמת תאים - בין תאים בשורה של שולחן, כילד של רו נדה
- Inline-level - בין תוכן Inline בפנים, כילד של Paragraph
- נחטף בתוך עוד מבנה Tag Tag

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

הדוגמה הבאה לקוד מראה כיצד ליצור בקרת תוכן ב- Type Checkbox:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

הדוגמה הבאה לקוד מראה כיצד ליצור בקרת תוכן של תיבת טקסט עשירה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

הדוגמה הבאה לקוד מראה כיצד ליצור שליטה בתוכן של תיבת ה-Combo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## כיצד לעדכן את בקרת התוכן

סעיף זה מסביר כיצד לעדכן את ערכי SDT או בקרת תוכן באופן מתודולוגי.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המצב הנוכחי של תיבת הסימון:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

דוגמה הקוד הבא מראה כיצד לשנות את בקרת התוכן של תיבת טקסט פשוטה, רשימת ירידה ותמונה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## בקרת התוכן של Custom XML Parts

באפשרותך לקשור בקרות תוכן עם נתוני XML (*פרט XML חלק*) במסמכים Word.

הדוגמה הבאה של הקוד מראה כיצד לקשור את השליטה בתוכן לחלקים של XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## המונחים: Structured Document tag

אתה יכול לקבל את המיפוי של תג מסמך מובנה זה טווח נתוני XML בחלק XML מותאם אישית של המסמך הנוכחי באמצעות שימוש ב- **מבנה ה-DocumentTagRangeStart.XmlMapping נכסים**. אבל, [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) ניתן להשתמש בשיטה כדי למפות טווח תג מסמך מובנה לנתונים של XML.

דוגמה לקוד הבא מראה כיצד להגדיר מיפוי XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## המונחים: a content control

אתה יכול לנקות את התוכן של שליטה תוכן עם הצגת בעל מקום. The The The **StructuredDocumentTag.Clear** שיטה מנקה תוכן של תג מסמך מובנה זה ומציגה בעל מקום אם הוא מוגדר. עם לא ניתן לנקות את התוכן של בקרת תוכן אם יש לו תיקונים. אם לפקד תוכן אין בעל מקום, חמישה חללים מוכנסים כמו Microsoft Word (מלבד חזרות על חלקים, חזרה על פריטים, קבוצות, תיבות צ'ק, ציטוטים). אם בקרת תוכן ממפה ל-XML מותאם אישית, הצומת של XML הוא ברור.

הדוגמה הבאה של הקוד מראה כיצד לנקות את התוכן של בקרת תוכן:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## שינוי בקרת תוכן וצבעי גבולות

The The The `StructuredDocumentTag.Color` הנכס מאפשר לך לקבל או להגדיר את צבע בקרת התוכן. הצבע משפיע על בקרת התוכן בשני מצבים:

1.1 1. MS Word מדגיש את הרקע של בקרת התוכן כאשר העכבר עובר על שליטה התוכן. זה עוזר לזהות את בקרת התוכן. צבע הדגשה הוא מעט "רך" מאשר *Color*. לדוגמה, MS Word מדגיש את הרקע עם צבע ורוד, כאשר *Color* אדום.
2. כאשר אתה אינטראקציה (מדיטציה, בחירת וכו ') עם בקרת התוכן, הגבול של בקרת תוכן הוא צבע עם *Color*.

לדוגמה הקוד הבא מראה כיצד לשנות את צבע בקרת התוכן:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## כיצד להגדיר סגנון כדי לעצב טקסט הקלד לתוך בקרת התוכן

אם אתה רוצה להגדיר את סגנון בקרת התוכן, אתה יכול להשתמש `StructuredDocumentTag.Style` או `StructuredDocumentTag.StyleName` תכונות. כאשר אתה מקליד את הטקסט לתוך בקרת תוכן במסמך הפלט, הטקסט המסוגד יהיה את הסגנון "Quote".

{{% alert color="primary" %}}

הערה כי רק קישורים וסגנונות אופי יכולים להיות מיושם על בקרת תוכן. ניתוח לא חוקי ("לא יכול ליישם את הסגנון הזה ל-SDT") נזרק כאשר סגנון קיים אך אינו מקושר או סגנון אופי מוחל.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להגדיר את הסגנון של בקרת תוכן:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## עבודה עם תיקון תוכן

בקרת התוכן חוזרת מאפשרת חזרה על התוכן הכלול בתוכו. שימוש Aspose.Words, תג המסמך המובנה של הסעיף החוזר על עצמו ועל סוגי הפריט החוזרים ניתן ליצור ולתכלית זו, [סוג SdtType enumeration](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) מספק **RepeatingSectionItem** רכוש.

הדוגמה הבאה של הקוד מראה כיצד לקשור שלט תוכן חוזר לשולחן.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
