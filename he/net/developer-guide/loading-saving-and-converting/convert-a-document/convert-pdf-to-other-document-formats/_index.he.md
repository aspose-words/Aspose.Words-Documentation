---
title: להמיר PDF לפורמטים אחרים של מסמכים C#
second_title: Aspose.Words עבור .NET
articleTitle: להמיר PDF לפורמטים אחרים
linktitle: להמיר PDF לפורמטים אחרים
type: docs
description: "להמיר PDF לפורמטי Word כגון DOCX, DOC, פורמטי תמונות כגון JPG או PNG, או כל פורמטים אחרים הנתמכות על ידי Aspose.Words באמצעות שימוש C#."
keywords: convert pdf to other formats c#
weight: 45
url: /he/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words ניתן לטעון אפילו פורמט מורכב כמו PDF. זה פותח הזדמנויות חדשות: ניתן להמיר PDF ל- Word או פורמטים אחרים שמביאים את המשתמשים רחוק יותר לפתרון בעיות רבות.

## Prerequisites

* המונחים: Aspose.Words חבילה ***OR*** to Aspose.WordsPdf2Word.dll.
* לפחות .NET Framework 4.6.1 או .NET Standard 2.0 מטרות כמו .NET Core 2.x או 3.0 .NET 5 ו Xamarin גם נתמך באמצעות תאימות עם .NET Standard.

## להמיר PDF לפורמטים שונים {#convert-pdf-to-other-formats}

המרה הפופולרית ביותר מ- PDF היא מעבר Microsoft Word פורמטים כגון DOCX, DOC, כמו גם פורמטי תמונות כגון JPG או PNG. עם זאת, המרת מסמך מתבנית אחת לאחר מבצע בצורה מוכרת.

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך מ- PDF ל- DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## מפרט אפשרויות טעינה בעת ייבוא PDF {#specify-load-options-when-importing-pdf}

Aspose.Words מספק לך את [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) שיעור, המאפשר שליטה מדויקת יותר על האופן שבו מסמכי PDF טעונים.

רוב התכונות יורשות או עומס נכסים שכבר קיימים `LoadOptions` מעמד. בנוסף לכך, מספר תכונות מוגדרות לפורמט PDF. לדוגמה, אתה יכול להשתמש [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) ו [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) תכונות להגדיר את טווח הדף להיות טעון מ מסמך PDF, ואת ה- PDF, [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) תכונות כדי לשלוט אם יש לדלג על תמונות בעת טעינה PDF. פרמטר נתמך נוסף הוא [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), אשר חייב להיות מסופק [מסמכים מוגנים](/words/net/protect-documents-and-parts-of-documents/).

## תמיכה PDF תוכן {#supported-pdf-content}

תוסף PDF2Word תומך כיום בסוגי הנתונים הבאים:

* פסקאות טקסט
* תמונות
* שולחנות
* רשימות
* ראשים והולכי רגל
*הערות
* מספרי דפים
* טקסט מימין לשמאל (עם כמה מגבלות)
* PDFs (תמונות קודמות יוסרו לטובת טקסט רקע)

## תכונות עתידיות {#planned-features}

תכונות מסוימות עדיין בפיתוח מוקדם או נכללות במפת הדרכים לפיתוח:

* שולחן של תוכן
* OCR for Searchable and non-Searchable PDFs
* דוח התקדמות
* טקסט Multicolumn
* נוסחאות מתמטיקה
* שדות אוטומטיים נוספים (Besides) `PAGE` NUMPAGES

## PDF המונחים:

במהלך המרת מסמך PDF, אחד החריגים הבאים עשוי לקרות:

|  למעט |  תיאור תיאור |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  קובץ PDF אינו יכול להיות מעובד מסיבה כלשהי.<br/>{{% alert color="primary" %}}אתה יכול לדווח על הבעיה לצוות הפיתוח לחקירה מפורטת. [תמיכה טכנית](/words/he/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  קובץ PDF מוגן על ידי Adobe DRM ולא ניתן לפענח על ידי Pdf2Word |
|  `PasswordProtectedFileException`  |  את הסיסמה הנכונה יש לספק PDF מוגן סיסמה |

## ראה גם

* [Nuget התייחסות Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

