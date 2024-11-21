---
title: המרת Word ל- Excel Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: המרת מסמך ל- Excel
linktitle: המרת מסמך ל- Excel
description: "להמיר PDF ל- Excel, XML ל- Excel, DOCX ל- Excel Python. שמור מסמך בפורמטים שונים כדי XLSX Python."
type: docs
weight: 15
url: /he/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

המרת מסמכים מתבנית אחת לאחרת היא תכונה הדגל של Aspose.Words. ניתן להמיר מסמכים בכל זמין [המונחים](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) גם בפורמט XLSX.

## להפוך מסמך ל- XLSX

המרת מסמך ל- XLSX הוא תהליך מסובך למדי. כדי לשמור את המסמך שלך בפורמט XLSX <span notrans="<span notrans=" Aspose.Words"=""></span>" שימוש [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) הכיתה והחדשה `Xlsx` אלמנט ב [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) אזהרה. כאמור, באפשרותך לשמור את המסמך בכל תבנית עומס הנתמך על ידי Aspose.Words XLSX

דוגמה לקוד הבא מראה כיצד לשמור PDF ל- XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, שיכולות להשפיע על התוצאה של שמירת מסמך כ- XLSX. אפשרויות אלה ניתן להגדיר על ידי השימוש [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג פלט XLSX.

{{% /alert %}}

## עקבו אחרי XLSX

גם באמצעות Aspose.Words, אתה יכול למצוא מחרוזת מסוימת או ביטוי קבוע במסמך שלך ולהחליף אותו עם ההתאמה שאתה צריך. ניתן גם לחסוך את התוצאה לתבנית XLSX.

הדוגמה הבאה של הקוד מראה כיצד לבצע את הפעולה ולהחליפם ל- XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## המונחים: Compression Level When Saving to XLSX

ניתן גם לציין את רמת הדחיסה בעת שמירת השימוש [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לציין את רמת הדחיסה בעת שמירת פורמט XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## ראה גם

- מסמך סעיף [הגנה או הצפנה של מסמך](/words/he/python-net/protect-or-encrypt-a-document/) למידע נוסף על הגנה והצפיפה מסמך
- המאמר [מצא והחלפת](/words/he/python-net/find-and-replace/) לקבלת מידע נוסף על מציאת והחלפת התוכן שאתה רוצה
