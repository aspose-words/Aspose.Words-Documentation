---
title: המרת Word ל- Excel C#
second_title: Aspose.Words עבור .NET
articleTitle: המרת מסמך ל- Excel
linktitle: המרת מסמך ל- Excel
description: "להמיר PDF ל- Excel, XML ל- Excel, DOCX ל- Excel C#. שמור מסמך בפורמטים שונים כדי XLSX C#."
type: docs
weight: 15
url: /he/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

המרת מסמכים מתבנית אחת לאחרת היא תכונה הדגל של Aspose.Words. ניתן להמיר מסמכים בכל זמין [המונחים](https://reference.aspose.com/words/net/aspose.words/loadformat/) גם בפורמט XLSX.

## להפוך מסמך ל- XLSX

המרת מסמך ל- XLSX הוא תהליך מסובך למדי. כדי לשמור את המסמך שלך בפורמט XLSX <span notrans="<span notrans=" Aspose.Words"=""></span>" שימוש [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) הכיתה והחדשה `Xlsx` אלמנט ב [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) אזהרה. כאמור, באפשרותך לשמור את המסמך בכל תבנית עומס הנתמך על ידי Aspose.Words XLSX

דוגמה לקוד הבא מראה כיצד לשמור PDF ל- XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, שיכולות להשפיע על התוצאה של שמירת מסמך כ- XLSX. אפשרויות אלה ניתן להגדיר על ידי השימוש [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג פלט XLSX.

{{% /alert %}}

## עקבו אחרי XLSX

גם באמצעות Aspose.Words, אתה יכול למצוא מחרוזת מסוימת או ביטוי קבוע במסמך שלך ולהחליף אותו עם ההתאמה שאתה צריך. ניתן גם לחסוך את התוצאה לתבנית XLSX.

הדוגמה הבאה של הקוד מראה כיצד לבצע את הפעולה ולהחליפם ל- XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## המונחים: Compression Level When Saving to XLSX

ניתן גם לציין את רמת הדחיסה בעת שמירת השימוש [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לציין את רמת הדחיסה בעת שמירת פורמט XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ראה גם

- מסמך סעיף [הגנה או הצפנה של מסמך](/words/he/net/protect-or-encrypt-a-document/) למידע נוסף על הגנה והצפיפה מסמך
- המאמר [מצא והחלפת](/words/he/net/find-and-replace/) לקבלת מידע נוסף על מציאת והחלפת התוכן שאתה רוצה
