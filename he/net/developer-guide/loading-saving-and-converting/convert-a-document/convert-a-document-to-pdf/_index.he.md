---
title: המרת Word ל- PDF C#
second_title: Aspose.Words עבור .NET
articleTitle: להפוך מסמך ל- PDF
linktitle: להפוך מסמך ל- PDF
description: "להמיר מסמך ל- PDF באמצעות C#. המרת DOCX ל- PDF C#. פורמטי קלט שונים נתמכת, כולל Word, OpenOffice, Image ו- eBook."
type: docs
weight: 10
url: /he/net/convert-a-document-to-pdf/
---

היכולת להמיר בקלות וביעילות מסמכים מתבנית אחת לאחרת היא תכונה מרכזית של Aspose.Words. אחד הפורמטים הפופולריים ביותר להמיר הוא PDF - פורמט קבוע עיכובים, אשר משמר את המראה המקורי של מסמך במהלך עריכתו על פלטפורמות שונות. המונח "rendering" משמש Aspose.Words כדי לתאר את התהליך של המרת מסמך לתבנית קובץ שדמיינו או שיש לו מושג של דפים.

## להפוך מסמך Word ל- PDF

הסחה מ- Word ל- PDF היא תהליך מורכב למדי הדורש מספר שלבים של חישוב. Aspose.Words מנוע הפריסה מחק את הדרך Microsoft Wordמנוע הפריסה בעמוד עובד, מה שהופך מסמכי תפוקה של PDF להיראות קרובים ככל האפשר למה שאתה יכול לראות. Microsoft Word.

עם Aspose.Words אתה יכול להמיר מסמך מפורמטי Word, כגון DOC או DOCX, ל- PDF ללא שימוש Microsoft משרד. מאמר זה מסביר כיצד לבצע המרה זו.

{{% alert color="primary" %}}

שימו לב כי מספר העמודים במסמך משפיע על זמן ההמרות.

{{% /alert %}}

### המרת DOCX או DOC ל- PDF

המרת פורמט מסמך DOC או DOCX לתוך פורמט PDF בפורמט PDF ב Aspose.Words זה מאוד קל וניתן להשיג באמצעות שני שורות קוד:

1.1 1. לטעון את המסמך שלך לתוך [Document](https://reference.aspose.com/words/net/aspose.words/document/) להתנגד באמצעות אחד מבניו על ידי ציון שם המסמך עם הרחבה פורמט שלה.
1.1 1. Invoke אחד [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) שיטות על **Document** אובייקט ומפרט את פורמט הפלט הרצוי כ- PDF על ידי כניסה לקובץ עם הרחבה "PDF".

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך מ- DOCX ל- PDF באמצעות שימוש ב- PDF. [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) שיטה:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך כ- PDF. אפשרויות אלה ניתן להגדיר על ידי השימוש [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג תפוקה PDF.

שים לב כי עם אותה טכניקה, אתה יכול להמיר כל מסמך פורמט זרימה לתבנית PDF.

{{% /alert %}}

### המרת PDF שונה סטנדרטים

Aspose.Words מספק [PdfCompliace](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)תמיכה בהמרות DOC או DOCX לסטנדרטים שונים של פורמט PDF (כגון PDF1.7, PDF וכו').

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך ל- PDF1.7 באמצעות שימוש ב- PDF [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) בהתאם ל- PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## המרת תמונות ל- PDF

המרת PDF אינה מוגבלת Microsoft Word פורמטי מסמך כל פורמט נתמך על ידי Aspose.Words, כולל שנוצר באופן מתודולוגי, ניתן להמיר גם ל- PDF. לדוגמה, אנו יכולים להמיר תמונות בעמוד אחד, כגון JPEG, PNG, BMP, EMF או WMF, כמו גם תמונות מרובות עמודים, כגון TIFF ו- GIF, ל- PDF.

הדוגמה הבאה של הקוד מראה כיצד להמיר תמונות JPEG ו- TIFF ל- PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

כדי להפוך את קוד זה לעבוד, עליך להוסיף הפניות Aspose.Words ו `System.Drawing` לפרויקט שלך.

## הקטנת PDF גודל בחוץ

בעת שמירת PDF, באפשרותך לציין אם ברצונך לייעל את התפוקה. כדי לעשות זאת, עליך להגדיר את [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) דגל true, ולאחר מכן יוסרו הבדים הנטושים והבדים הריקים, השכנים glyphs עם אותו פורמט יהיה מתואם.

הדוגמה הבאה של הקוד מראה כיצד לייעל את הפלט:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

באמצעות **OptimizeOutput** רכוש עשוי להשפיע על הדיוק של תצוגת תוכן.

{{% /alert %}}

## ראה גם

- המאמר [Rendering](/words/he/net/rendering/) לקבלת מידע נוסף על פורמטים קבועים של דף וזרימה
- המאמר [המרת פורמט קבוע-עמוד](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) למידע נוסף על פריסת הדף
- המאמר [המונחים: Rendering Options When Converting to PDF](/words/he/net/specify-rendering-options-when-converting-to-pdf/) למידע נוסף על השימוש `PdfSaveOptions` הכיתה
- המאמר [למד תכונות של הסכמה ל- PDF/A ו- PDF/UA](/words/he/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) תיאור תקן PDF והרלוונטי ISO תמיכה ב- PDF Aspose.Words
- המאמר [תקן PDF עדיף לבחור](/words/he/net/which-pdf-standard-is-better-to-choose/) כדי לקבוע אילו תקני PDF הגיוניים באילו מקרים

- המאמר [עבודה עם PDF/A או PDF/UA](/words/he/net/working-with-pdfa-or-pdfua/) מתאר את הדרישות לתוכן המסמך בפורמטים PDF/A ו- PDF/UA – בעיקר את הדרישות למבנה ולפונטים

- המאמר [אזהרות בנושא נגישות בעת שמירת PDF/A ו- PDF/UA](/words/he/net/warnings-when-saving-to-pdfa-and-pdfua/) מתאר מה דרישות נגישות תוכן PDF/A ו- PDF/UA
