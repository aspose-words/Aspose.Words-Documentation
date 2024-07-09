---
title: להפוך מסמך ל- PDF ב Java
second_title: Aspose.Words עבור Java
articleTitle: להפוך מסמך ל- PDF
linktitle: להפוך מסמך ל- PDF
description: "המרת מסמך ב- Word או כל פורמט נתמך אחר ל- PDF, אשר משמר את המראה המקורי של מסמך במהלך יצירתו על פלטפורמות שונות. Java."
type: docs
weight: 10
url: /he/java/convert-a-document-to-pdf/
---

היכולת להמיר בקלות וביעילות מסמכים מתבנית אחת לאחרת היא תכונה מרכזית של Aspose.Words. אחד הפורמטים הפופולריים ביותר להמיר הוא PDF - פורמט קבוע עיכובים, אשר משמר את המראה המקורי של מסמך במהלך ביצועו בפלטפורמות שונות. המונח "מחדש" משמש Aspose.Words כדי לתאר את התהליך של המרת מסמך לתוך תבנית קובץ שדמיינו או יש מושג של דפים.

## להפוך מסמך Word ל- PDF {#convert-a-word-document-to-pdf}

הסחה מ- Word ל- PDF היא תהליך מורכב למדי הדורש מספר שלבים של חישוב. Aspose.Words מנוע הפריסה מחק את הדרך Microsoft Wordמנוע פריסת העמוד עובד, מה שהופך מסמכי תפוקה של PDF נראים קרובים ככל האפשר למה שאתה יכול לראות. Microsoft Word.

עם Aspose.Words באפשרותך להמיר מסמך מתבנית DOC או DOCX ל- PDF ללא שימוש Microsoft משרד. מאמר זה מסביר כיצד לבצע המרה זו.

{{% alert color="primary" %}}

שימו לב כי מספר העמודים במסמך משפיע על זמן ההמרה.

{{% /alert %}}

### המרת DOCX או DOC ל- PDF {#converting-doc-or-docx-to-pdf}

המרת פורמט מסמך DOC או DOCX לתוך פורמט PDF בפורמט PDF בפורמט PDF Aspose.Words זה מאוד קל וניתן להשיג באמצעות שני שורות קוד:

1.1 1. לטעון את המסמך שלך לתוך [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) להתנגד באמצעות אחד מבניו על ידי ציון שם המסמך עם הרחבה פורמט שלה.
1.1 1. Invoke אחד [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) שיטות על **Document** אובייקט ומציין את פורמט הפלט הרצוי כ- PDF על ידי כניסה לקובץ עם הרחבה "PDF".

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך מ- DOCX ל- PDF באמצעות שימוש ב- PDF. `Save` שיטה:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך כ- PDF. אפשרויות אלה ניתן להגדיר על ידי השימוש [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) שיעור, המכיל תכונות הקובעות כיצד תוצג תפוקה PDF.

שים לב כי עם אותה טכניקה, אתה יכול להמיר כל מסמך פורמט זרימה לתבנית PDF.

{{% /alert %}}

### המרת PDF שונה סטנדרטים {#converting-to-various-pdf-standards}

Aspose.Words מספק [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)תמיכה בהמרה של DOC או DOCX לסטנדרטים שונים של פורמט PDF (כגון PDF1.7, PDF וכו ').

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך ל- PDF1.7 באמצעות שימוש ב- PDF [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) בהתאם ל- PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## המרת תמונות ל- PDF

המרת PDF אינה מוגבלת Microsoft Word פורמטי מסמך כל פורמט נתמך על ידי Aspose.Words, כולל שנוצר באופן מתודולוגי, ניתן להמיר גם ל- PDF. לדוגמה, אנו יכולים להמיר תמונות בעמוד אחד, כגון JPEG, PNG, BMP, EMF או WMF, כמו גם תמונות מרובות עמודים, כגון TIFF ו- GIF, ל- PDF.

דוגמה לקוד הבא מראה כיצד להמיר תמונות JPEG ו- TIFF ל- PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

כדי להפוך את עבודת הקוד, עליך להוסיף הפניות Aspose.Words, Javaתמונה ו-Jvax חבילות כיתה לפרוייקט שלך.

## הקטנת PDF גודל בחוץ

בעת שמירת PDF, באפשרותך לציין אם ברצונך לייעל את התפוקה. כדי לעשות זאת, עליך להגדיר את [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) דגל true, ולאחר מכן יוסרו הבדים הנטושים והבדים הריקים, השכנים glyphs עם אותו פורמט יהיה מתואם.

הדוגמה הבאה של הקוד מראה כיצד לייעל את הפלט:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

באמצעות **OptimizeOutput** רכוש עשוי להשפיע על הדיוק של תצוגת תוכן.

{{% /alert %}}

## ראה גם

- המאמר [Rendering](/words/he/java/rendering/) לקבלת מידע נוסף על פורמטים קבועים של דף וזרימה
- המאמר [המרת פורמט קבוע-עמוד](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) למידע נוסף על פריסת הדף
- המאמר [תגית: PDF](/words/he/java/specify-rendering-options-when-converting-to-pdf/) למידע נוסף על השימוש `PdfSaveOptions` הכיתה
