---
title: המרת Word ל- Excel Java
second_title: Aspose.Words עבור Java
articleTitle: המרת מסמך ל- Excel
linktitle: המרת מסמך ל- Excel
description: "להמיר PDF ל- Excel, XML ל- Excel, DOCX ל- Excel Java. שמור מסמך בפורמטים שונים כדי XLSX Java."
type: docs
weight: 15
url: /he/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

המרת מסמכים מפורמט אחד למשנהו היא תכונה הדגל של Aspose.Words. ניתן להמיר מסמכים בכל זמין [המונחים](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) גם בפורמט XLSX.

## להפוך מסמך ל XLSX

המרת מסמך ל- XLSX הוא תהליך מסובך למדי. כדי לשמור את המסמך שלך בפורמט XLSX <span notrans="<span notrans=" Aspose.Words"=""></span>" שימוש [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) הכיתה והחדשה `Xlsx` אלמנט ב [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) אזהרה. כפי שצוין לעיל, אתה יכול לשמור את המסמך בכל תבנית עומס נתמך על ידי Aspose.Words תגית: XLSX

דוגמה לקוד הבא מראה כיצד לשמור PDF ל- XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך כ- XLSX. אפשרויות אלה ניתן להגדיר על ידי השימוש [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג פלט XLSX.

{{% /alert %}}

## עקבו אחרי XLSX

גם באמצעות Aspose.Words, אתה יכול למצוא מחרוזת מסוימת או ביטוי קבוע במסמך שלך ולהחליף אותו עם ההתאמה שאתה צריך. ניתן גם לחסוך את התוצאה לתבנית XLSX.

הדוגמה הבאה של הקוד מראה כיצד לבצע את הפעולה ולהחליפם ל- XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## המונחים: Compression Level When Saving to XLSX

ניתן גם לציין את רמת הדחיסה בעת שמירת השימוש [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לציין את רמת הדחיסה בעת שמירת פורמט XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ראה גם

- מסמך סעיף [הגנה או הצפנה של מסמך](/words/he/java/protect-or-encrypt-a-document/) למידע נוסף על הגנה והצפיפה מסמך
- המאמר [מצא והחלפת](/words/he/java/find-and-replace/) לקבלת מידע נוסף על מציאת והחלפת התוכן שאתה רוצה
