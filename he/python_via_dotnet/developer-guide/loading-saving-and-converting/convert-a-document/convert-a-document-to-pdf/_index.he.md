---
title: להפוך מסמך ל- PDF ב Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: להפוך מסמך ל- PDF
linktitle: להפוך מסמך ל- PDF
description: "להמיר מסמך ל- PDF באמצעות Python. פורמטי קלט שונים נתמכת, כולל Word, OpenOffice, Image ו- eBook."
type: docs
weight: 10
url: /he/python-net/convert-a-document-to-pdf/
---

היכולת להמיר בקלות וביעילות מסמכים מתבנית אחת לאחרת היא תכונה מרכזית של Aspose.Words. אחד הפורמטים הפופולריים ביותר להמיר הוא PDF - פורמט קבוע עיכובים, אשר משמר את המראה המקורי של מסמך במהלך עריכתו על פלטפורמות שונות. המונח "rendering" משמש Aspose.Words כדי לתאר את התהליך של המרת מסמך לתבנית קובץ שדמיינו או שיש לו מושג של דפים.

## להפוך מסמך Word ל- PDF {#convert-a-word-document-to-pdf}

הסחה מ- Word ל- PDF היא תהליך מורכב למדי הדורש מספר שלבים של חישוב. Aspose.Words מנוע הפריסה מחק את הדרך Microsoft Wordמנוע הפריסה בעמוד עובד, מה שהופך מסמכי תפוקה של PDF להיראות קרובים ככל האפשר למה שאתה יכול לראות. Microsoft Word.

עם Aspose.Words אתה יכול להמיר מסמך מפורמטי Word, כגון DOC או DOCX, ל- PDF ללא שימוש Microsoft משרד. מאמר זה מסביר כיצד לבצע המרה זו.

{{% alert color="primary" %}}

שימו לב כי מספר העמודים במסמך משפיע על זמן ההמרות.

{{% /alert %}}

### המרת DOC או DOCX ל- PDF {#convert-doc-or-docx-to-pdf}

המרת פורמט מסמך DOC או DOCX לתוך פורמט PDF בפורמט PDF ב Aspose.Words זה מאוד קל וניתן להשיג באמצעות שני שורות קוד:

1.1 1. לטעון את המסמך שלך לתוך [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) להתנגד באמצעות אחד מבניו על ידי ציון שם המסמך עם הרחבה פורמט שלה.
1.1 1. Invoke אחד [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטות על [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) אובייקט ומפרט את פורמט הפלט הרצוי כ- PDF על ידי כניסה לקובץ עם הרחבה "PDF".

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך מ- DOCX ל- PDF באמצעות שימוש ב- PDF. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) שיטה:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך כ- PDF. אפשרויות אלה ניתן להגדיר על ידי השימוש [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג תפוקה PDF.

שים לב כי עם אותה טכניקה, אתה יכול להמיר כל מסמך פורמט זרימה לתבנית PDF.

{{% /alert %}}

### המרת PDF סטנדרטים {#convert-to-various-pdf-standards}

Aspose.Words מספק [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) תמיכה בהמרות DOC או DOCX לסטנדרטים שונים של פורמט PDF (כגון PDF1.7, PDF וכו').

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך ל- PDF1.7 באמצעות שימוש ב- PDF [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) לציית [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## המרת תמונות ל- PDF

המרת PDF אינה מוגבלת Microsoft Word פורמטי מסמך כל פורמט נתמך על ידי Aspose.Words, כולל שנוצר באופן מתודולוגי, ניתן להמיר גם ל- PDF. לדוגמה, אנו יכולים להמיר תמונות בעמוד אחד, כגון JPEG, PNG, BMP, EMF או WMF, כמו גם תמונות מרובות עמודים, כגון TIFF ו- GIF, ל- PDF.

הדוגמה הבאה של הקוד מראה כיצד להמיר תמונות JPEG ו- TIFF ל- PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

כדי להפוך את קוד זה לעבוד, עליך להוסיף הפניות Aspose.Words ו `aspose.pydrawing` לפרויקט שלך.

## הקטנת PDF גודל בחוץ

בעת שמירת PDF, באפשרותך לציין אם ברצונך לייעל את התפוקה. כדי לעשות זאת, עליך להגדיר את [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) דגל true, ולאחר מכן יוסרו הבדים הנטושים והבדים הריקים, השכנים glyphs עם אותו פורמט יהיה מתואם.

{{% alert color="primary" %}}

באמצעות **OptimizeOutput** רכוש עשוי להשפיע על הדיוק של תצוגת תוכן.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## הקטנת PDF גודל בחוץ

בעת שמירת PDF, באפשרותך לציין אם ברצונך לייעל את התפוקה. כדי לעשות זאת, עליך להגדיר את [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) דגל true, ולאחר מכן יוסרו הבדים הנטושים והבדים הריקים, השכנים glyphs עם אותו פורמט יהיה מתואם.

{{% alert color="primary" %}}

באמצעות **OptimizeOutput** רכוש עשוי להשפיע על הדיוק של תצוגת תוכן.

{{% /alert %}}

## ראה גם

- המאמר [Rendering](/words/he/python-net/rendering/) לקבלת מידע נוסף על פורמטים קבועים של דף וזרימה
- המאמר [המרת פורמט קבוע-עמוד](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) למידע נוסף על פריסת הדף
- המאמר [המונחים: Rendering Options When Converting to PDF](/words/he/python-net/specify-rendering-options-when-converting-to-pdf/) למידע נוסף על השימוש [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) הכיתה
