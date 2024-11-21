---
title: קבל מסמך Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: הצפנה מסמך
linktitle: הצפנה מסמך
description: "הצפנה המסמך שלך באמצעות אלגוריתמי הצפנה מתאימים לפורמטים ספציפיים של מסמך Python."
type: docs
weight: 20
url: /he/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

הצפנה היא התהליך המתורגם טקסט קריא לרצף חסר משמעות של עציצים כך שניתן לקרוא רק על ידי האדם שיש לו מפתח פענוח או קוד סודי. תהליך זה ממלא תפקיד חשוב בהשגת התוכן שלך. זה עוזר לפענח את התוכן, לאמת את מקור המסמך, להוכיח כי התוכן לא שונה לאחר שנשלחה, ולהבטיח כי הנתונים מן המסמך בטוח.

מאמר זה מסביר כיצד Aspose.Words מאפשר לך להצפין מסמך וכיצד לבדוק אם מסמך יש הצפנה או לא.

## הצפנה עם סיסמה

כדי להצפין מסמך, השתמש **סיסמה** נכס לספק סיסמה שפועלת כמפתח הצפנה. זה ישנה את התוכן של המסמך שלך ולהפוך אותו לבלתי קריא. המסמך המוצפן ידרוש שהסיסמה הזו תיכנס לפני שניתן לפתוח אותה.

{{% alert color="primary" %}}

אתה יכול למצוא את המתאים **סיסמה** נכס לתבנית הנדרשת כל מסמך שומר פורמט [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) מודול יש מחלקה מתאימה המכילה אפשרויות הצלה עבור פורמט זה. לדוגמה, [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) רכוש ב [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) שיעור עבור DOC, או [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) רכוש ב [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) קטגוריה: DOCX, DOCM DOTX, DOTM ו- FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

שים לב שרק פורמטי מסמך מסוימים תומכים בהצפנה. RTF אינו תומך בהצפנה.

{{% /alert %}}

הטבלה מתחת לרשימות את הפורמטים והאלגוריתמים ההצפנה הנתמכות על ידי Aspose.Words:

| פורמט |  תמיכה הצפנה תוך טעינה |  תמיכה הצפנה תוך חיסכון |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR הצפנה 40-bit RC4 הצפנהAPI RC4 הצפנה |  RC4 הצפנה (40 סיביות) |
|  DOCX, DOTX, DOCM DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpc טמפlate MacroEnabled |  ECMA-376 הצפנה סטנדרטית של ECMA-376 Encryption |  ECMA-376 הצפנה סטנדרטית (AES128 + SHA1) |
|  ODT, OTT |  ODF הצפנה (Blowfish/AES) |  ODF הצפנה (AES256 + SHA256) |
|  PDF |                                                          |  RC4 הצפנה (40/128 bit) |

הדוגמה הבאה של הקוד מראה כיצד להצפין מסמך עם סיסמה:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## בדוק אם מסמך מוצג

במקרים מסוימים, ייתכן שיהיה לך מסמך בלתי קריא ורוצה להיות בטוח כי המסמך מוצפן ולא מושחת או דחוס.

כדי לזהות אם מסמך מוצפן ואם נדרש סיסמה, אתה יכול להשתמש [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) רכוש [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) מעמד. נכס זה גם יאפשר לך לבצע פעולה מסוימת לפני הגשת מסמך, לדוגמה, להודיע למשתמש לספק סיסמה.

דוגמה לקוד הבא מראה כיצד לזהות את ההצפנה של המסמך:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## פתח מסמך עם או בלי סיסמה

כאשר אנו דואגים כי מסמך מוצפן, אנו יכולים לנסות לפתוח מסמך זה ללא סיסמה, אשר צריך להוביל יוצא דופן.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן ללא סיסמה:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

לאחר שראינו כי לא ניתן לפתוח מסמך מוצפן ללא סיסמה, אנו יכולים לנסות לפתוח אותו באמצעות כניסה לסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן עם סיסמה:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
