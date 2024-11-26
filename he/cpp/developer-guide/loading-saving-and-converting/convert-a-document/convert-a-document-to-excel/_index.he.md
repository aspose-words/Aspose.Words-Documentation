---
title: המר Word להצטיין ב C++
second_title: Aspose.Words עבור C++
articleTitle: המרת מסמך לאקסל
linktitle: המרת מסמך לאקסל
description: "המר PDF להצטיין, XML להצטיין, DOCX להצטיין C++. שמור מסמך בפורמטים שונים ל XLSX באמצעות C++."
type: docs
weight: 15
url: /he/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

המרת מסמכים מתבנית אחת לאחרת היא תכונת הדגל של Aspose.Words. אתה יכול להמיר מסמכים בכל זמין [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) גם ל XLSX פוּרמָט.

## המרת מסמך ל - XLSX

המרת מסמך ל XLSX היא תהליך מסובך למדי. כדי לשמור את המסמך בתבנית XLSX באמצעות Aspose.Words, השתמש בכיתה **XlsxSaveOptions** ובאלמנט `Xlsx` החדש בספירה [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). כאמור לעיל, ניתן לשמור את המסמך בכל פורמט עומס הנתמך על ידי Aspose.Words ל XLSX.

דוגמת הקוד הבאה מראה כיצד לשמור PDF ל XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## חיפוש והחלפה בעת שמירה ל - XLSX

גם באמצעות Aspose.Words, אתה יכול למצוא מחרוזת או ביטוי רגולרי ספציפי במסמך שלך ולהחליף אותו במסמך התואם שאתה צריך. לאחר מכן תוכל גם לשמור את התוצאה בפורמט XLSX.

דוגמת הקוד הבאה מראה כיצד לבצע פעולת חיפוש והחלפה ולשמור תוצאה ל - XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## ציין רמת דחיסה בעת שמירה ל - XLSX

ניתן גם לציין את רמת הדחיסה בעת שמירה באמצעות המאפיין **CompressionLevel**.

דוגמת הקוד הבאה מראה כיצד לציין את רמת הדחיסה בעת שמירה בפורמט XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## ראה גם

- סעיף תיעוד [הגנה או הצפנה של מסמך](/words/cpp/protect-or-encrypt-a-document/) למידע נוסף על הגנה והצפנה של מסמך
- המאמר [מצא והחלף](/words/cpp/find-and-replace/) לקבלת מידע נוסף על מציאת והחלפת התוכן הרצוי
