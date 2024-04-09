---
title: להמיר PDF לפורמטים אחרים
second_title: Aspose.Words עבור Python via .NET
articleTitle: להמיר PDF לפורמטים אחרים
linktitle: להמיר PDF לפורמטים אחרים
type: docs
description: "להמיר PDF לפורמטים Word כגון DOCX, DOC, פורמטי תמונות כגון JPG או PNG, או כל פורמטים אחרים הנתמכות על ידי As נניח באמצעות שימוש `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /he/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words ניתן לטעון אפילו פורמט מורכב כמו PDF. זה פותח הזדמנויות חדשות: ניתן להמיר PDF ל- Word או פורמטים אחרים שמביאים את המשתמשים רחוק יותר לפתרון בעיות רבות.

## להמיר PDF לפורמטים אחרים {#convert-pdf-to-other-formats}

המרה הפופולרית ביותר מ- PDF היא מעבר Microsoft Word פורמטים כגון DOCX, DOC, כמו גם פורמטי תמונות כגון JPG או PNG. עם זאת, המרת מסמך מתבנית אחת לאחר מבצע בצורה מוכרת.

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך מ- PDF ל- DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## מפרט אפשרויות טעינה בעת ייבוא PDF {#specify-load-options-when-importing-pdf}

Aspose.Words מספק לך את [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) שיעור, המאפשר שליטה מדויקת יותר על האופן שבו מסמכי PDF טעונים.

רוב התכונות יורשות או עומס נכסים שכבר קיימים [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) מעמד. בנוסף לכך, מספר תכונות מוגדרות לפורמט PDF. לדוגמה, אתה יכול להשתמש [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) ו [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) תכונות להגדיר את טווח הדף להיות טעון מ מסמך PDF, ואת ה- PDF, [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) תכונות כדי לשלוט אם יש לדלג על תמונות בעת טעינה PDF. פרמטר נתמך נוסף הוא [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), זה חייב להיות מסופק עבור מסמכים מוגן סיסמה.

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

## תכונות מתוכננות {#planned-features}

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
|   *FileLoadException*               |  קובץ PDF אינו יכול להיות מעובד מסיבה כלשהי.<br/>{{% alert color="primary" %}}אתה יכול לדווח על הבעיה לצוות הפיתוח לחקירה מפורטת. [תמיכה טכנית](/words/he/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  קובץ PDF מוגן על ידי Adobe DRM ולא ניתן לפענח על ידי Pdf2Word |
|   *PasswordProtectedFileException*  |  את הסיסמה הנכונה יש לספק PDF מוגן סיסמה |


