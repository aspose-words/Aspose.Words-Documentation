---
title: המרת מסמך ל PDF ב C++
second_title: Aspose.Words עבור C++
articleTitle: המרת מסמך ל - PDF
linktitle: המרת מסמך ל - PDF
description: "המרת מסמך ל PDF באמצעות C++. פורמטים שונים של קלט נתמכים, כולל פורמטים Word, OpenOffice, תמונה ו eBook."
type: docs
weight: 10
url: /he/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

היכולת להמיר מסמכים בקלות ובאמינות מתבנית אחת לאחרת היא תכונה מרכזית של Aspose.Words. אחד הפורמטים הפופולריים ביותר להמרה הוא PDF - פורמט פריסה קבועה, השומר על המראה המקורי של מסמך במהלך עיבודו בפלטפורמות שונות. המונח" הדגמה " משמש ב - Aspose.Words כדי לתאר את תהליך ההמרה של מסמך לפורמט קובץ שמונח או שיש לו את המושג של דפים.

## המרת מסמך Word ל PDF {#convert-a-word-document-to-pdf}

המרה מ Word ל PDF הוא תהליך מורכב למדי הדורש מספר שלבי חישוב. Aspose.Words מנוע הפריסה מחקה את האופן שבו פועל מנוע פריסת העמודים של Microsoft Word, מה שגורם למסמכי הפלט PDF להיראות קרוב ככל האפשר למה שאתה יכול לראות ב Microsoft Word.

עם Aspose.Words אתה יכול להמיר מסמך באופן פרוגרמטי מ DOC או DOCX פורמט ל PDF מבלי להשתמש Microsoft משרד. מאמר זה מסביר כיצד לבצע המרה זו.

{{% alert color="primary" %}}

שים לב שמספר העמודים במסמך משפיע על זמן ההמרה.

{{% /alert %}}

### המרה DOCX או DOC ל PDF {#converting-doc-or-docx-to-pdf}

המרה מתבנית המסמך DOC או DOCX לתבנית PDF ב Aspose.Words היא קלה מאוד וניתן להשיג אותה עם שתי שורות קוד בלבד:

1. טען את המסמך שלך לאובייקט [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) באמצעות אחד מהבנאים שלו על ידי ציון שם המסמך עם סיומת הפורמט שלו.
1. הפעל אחת מהשיטות [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) על האובייקט **Document** וציין את פורמט הפלט הרצוי כ PDF על ידי הזנת שם קובץ עם ".PDF " הרחבה.

דוגמת הקוד הבאה מראה כיצד להמיר מסמך מ - DOCX ל - PDF באמצעות שיטת `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

לפעמים יש צורך לציין אפשרויות נוספות, אשר יכול להשפיע על התוצאה של שמירת מסמך כמו PDF. ניתן לציין אפשרויות אלה על ידי שימוש בכיתה [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), המכילה מאפיינים הקובעים כיצד יוצג הפלט PDF.

שים לב שבאותה טכניקה, אתה יכול להמיר כל מסמך בפורמט פריסת זרימה ל PDF פוּרמָט.

{{% /alert %}}

### המר לסטנדרטים שונים PDF {#converting-to-various-pdf-standards}

Aspose.Words מספק את הספירה [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) כדי לתמוך בהמרה של DOC או DOCX לתקני פורמט שונים PDF (כגון PDF 1.7, PDF 1.5, וכו'.).

דוגמת הקוד הבאה מדגימה כיצד להמיר מסמך ל - PDF 1.7 באמצעות [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) עם תאימות ל - PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## המרת תמונות ל PDF {#convert-an-image-to-pdf}

ההמרה ל PDF אינה מוגבלת על ידי Microsoft Word פורמטים של מסמכים. כל פורמט הנתמך על ידי Aspose.Words, כולל שנוצר באופן פרוגרמטי, יכול גם להיות מומר ל PDF. לדוגמה, אנו יכולים להמיר תמונות של עמוד אחד, כגון JPEG, PNG, BMP, EMF, או WMF, כמו גם תמונות מרובות עמודים, כגון TIFF ו GIF, ל PDF.

דוגמת הקוד הבאה מראה כיצד להמיר JPEG ו TIFF תמונות ל PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

כדי לגרום לקוד זה לעבוד, עליך להוסיף הפניות ל Aspose.Words ו `System.Drawing` לפרויקט שלך.

## ראה גם

- המאמר [עיבוד](/words/cpp/rendering/) למידע נוסף על הפורמטים של דף קבוע ופריסת זרימה
- המאמר [המרה לפורמט דף קבוע](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) לקבלת מידע נוסף על פריסת הדף
- המאמר [ציין אפשרויות עיבוד בעת המרה ל PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) למידע נוסף על השימוש בכיתה `PdfSaveOptions`
