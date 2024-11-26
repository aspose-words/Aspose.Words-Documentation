---
title: עקבו אחרי Content Control SDT Java
second_title: Aspose.Words עבור Java
articleTitle: עקבו אחרי Content Control SDT
linktitle: עקבו אחרי Content Control SDT
type: docs
description: "ניהול תוכן מתקדם של מסמך, כיצד ליצור ולתפעל בקרת תוכן (Structured Documents) באמצעות שימוש Java."
weight: 390
url: /he/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In In In Microsoft Word, אתה יכול ליצור טופס על ידי החל עם תבנית והוספת בקרת תוכן, כולל תיבות של Checkboxes, תיבות טקסט, בוחרים תאריך ורשימות ירידה. In In In Aspose.Words מסמך מובנה או בקרת תוכן מכל מסמך טעון לתוך Aspose.Words הוא מיובא כצומת מובנה. תגי מסמך ממובנים (SDT או בקרת תוכן) מאפשרים הטמעת סממנטיקה מוגדרת של הלקוח, כמו גם התנהגותו והופעתו במסמך.

מבנה Tag יכול להופיע במסמך במקומות הבאים:

- רמת בלוק - בין פסקאות וטבלאות, כילד של גוף, HeaderFooter, Comment, Footnote או a Shape node.
- רו-דרג - בין שורות בטבלה, כילד של צומת שולחן.
- ברמה התאית - בין התאים בשורה שולחן, כילד של רו.
- Inline-level - בין תוכן Inline בפנים, כילד של Paragraph.
- נחטף בתוך מערכה נוספת.

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

הדוגמה הבאה לקוד מראה כיצד ליצור בקרת תוכן של תיבת סימון מסוג:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

הדוגמה הבאה של הקוד מראה כיצד ליצור בקרת תוכן של תיבת טקסט עשירה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

הדוגמה הקודית הבאה מראה כיצד ליצור בקרת תוכן של תיבת קובו מסוג:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## כיצד לעדכן בקרת תוכן

סעיף זה מסביר כיצד לעדכן את ערכי SDT או בקרת תוכן באופן מתודולוגי.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המצב הנוכחי של תיבת הסימון:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

הדוגמה הקודית הבאה מראה כיצד לשנות את בקרת התוכן של תיבת טקסט פשוטה, רשימת ירידה ותמונה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמאות אלה [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## ביקורת תוכן עבור Custom XML Parts

באפשרותך לחבר בקרות תוכן עם נתוני XML (*פרט XML חלק*) במסמכים Word

הדוגמה הקודית הבאה מראה כיצד לקשור את השליטה בתוכן לחלקים תואמים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## המונחים: content control

אתה יכול לנקות את התוכן של שליטה תוכן עם הצגת בעל מקום. **StructuredDocumentTag.clear()** שיטה מנקה תוכן של תג מסמך מובנה זה ומציגה בעל מקום אם הוא מוגדר. עם לא ניתן לנקות את התוכן של בקרת תוכן אם יש לו תיקונים. אם לפקד תוכן אין בעל מקום, חמישה חללים מוכנסים כמו ב-MS Word (מלבד סעיפים חוזרים, חזרה על פריטים, קבוצות, תיבות בדיקה, ציטוטים). אם בקרת תוכן ממפה ל-XML מותאם אישית, הצומת של XML הוא ברור.

הדוגמה הבאה של הקוד מראה כיצד לנקות את התוכן של בקרת תוכן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## שינוי בקרת תוכן וצבעי גבולות

The The The `StructuredDocumentTag.Color` הנכס מאפשר לך לקבל או להגדיר את צבע בקרת התוכן. הצבע משפיע על בקרת התוכן בשני מצבים:

1.1 1. MS Word מדגיש את הרקע של בקרת התוכן כאשר העכבר עובר על שליטה התוכן. זה עוזר לזהות את בקרת התוכן. צבע הדגשה הוא קצת "רך" מאשר *Color*. לדוגמה, MS Word מדגיש את הרקע עם צבע ורוד, כאשר *Color* אדום.
2. כאשר אתה אינטראקציה (מדיטציה, בחירת וכו ') עם בקרת התוכן, הגבול של בקרת תוכן הוא צבע עם *Color*.

לדוגמה הקוד הבא מראה כיצד לשנות את צבע בקרת התוכן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## כיצד להגדיר סגנון כדי לעצב טקסט הקלד לתוך בקרת התוכן

אם אתה רוצה להגדיר את הסגנון של בקרת תוכן, אתה יכול להשתמש `StructuredDocumentTag.Style` או `StructuredDocumentTag.StyleName` תכונות. כאשר אתה מקליד את הטקסט לתוך בקרת תוכן במסמך הפלט, הטקסט המסוגד יהיה את הסגנון "Quote".

{{% alert color="primary" %}}

שים לב שרק קישורים וסגנונות אופי יכולים להיות מוחלים על בקרת תוכן. ניתוח לא חוקי ("לא יכול ליישם את הסגנון הזה ל-SDT") נזרק כאשר סגנון קיים אך אינו מקושר או סגנון אופי הוא מיושם.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להגדיר את הסגנון של בקרת תוכן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## עבודה עם ביקורת תוכן חוזרת

בקרת התוכן חוזרת מאפשרת חזרה על התוכן הכלול בתוכו. שימוש Aspose.Words, תג המסמך המובנה של הסעיף החוזר על עצמו ועל סוגי הפריט חוזרים ניתן ליצור ולמטרה זו, [המונחים: המונחים:](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) מספק REPEAING_SECTIONM חבר.

הדוגמה הבאה של הקוד מראה כיצד לקשור שלט תוכן חוזר לשולחן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

