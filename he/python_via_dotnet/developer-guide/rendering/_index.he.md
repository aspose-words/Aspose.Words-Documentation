---
title: בורחים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: Rendering
linktitle: Rendering
description: "שימוש בשימוש Aspose.Words עבור Python via .NET להפוך את התכונה כדי לעצב מסמך עיכוב זרימה לתוך דפים ולהפוך מסמך כזה או דפים נבחרים למסמכים אחרים (PDF, HTML, HTML, XPS, וכו ') או תמונות (TIFF, PNG, SVG וכו ') פורמטים לצפייה, המרות נוספות, או הדפסה."
type: docs
weight: 20
url: /he/python-net/rendering/
timestamp: 2024-01-27-14-07-04
---

אנו משתמשים במונח "rendering" ב Aspose.Words כדי לתאר את התהליך של המרת מסמך לתבנית קובץ או מדיום שדמיינו או שיש לו מושג של דפים. אנחנו מדברים על הגשת מסמך לדפים. הדיאגרמה הבאה מראה מה עושה Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

התכונות של Aspose.Words ניתן לבצע את הפעולות הבאות:

- להמיר מסמך או דפים נבחרים ל- PDF, XPS, HTML, XAML, PostScript ו- PCL.
- להמיר מסמך במסמך Multi-Page TIFF, או להמיר כל דף לדימוי raster ולהציל אותו כמו BMP, PNG או JPEG.
- להמיר דף מסמך לתוך תמונה של Scalable Vector Graphics (SVG), או להמיר לתוך תמונה וקטור ולהציל אותו כמו EMF.
- Render a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) להתנגד בנפרד מן המסמך לכל פורמט תמונה.

## Flow-Layout או קבוע-Layout Document Formats

רוב פורמטי המסמך שניתן לטעון בהם Aspose.Words הם ידועים פורמטים "זרימה-עיכוב". פורמטי Flow-layout כוללים DOC, OOXML, RTF, ODT ו- HTML. מסמכים בפורמטים אלה מורכבים מאלמנטים שונים כגון פסקאות, טבלאות, ראשים, הולכי רגל, תמונות, שדות ופורמט שלהם, למשל, נועז, אתי, גופן, גודל. עם זאת, פורמטי זרימה אינם מכילים מידע על מיקום שבו כל סעיף או אופי מסוים מוצג בדף.

לעומת זאת, פורמטים "תיקון" (הידועים גם כ"עמוד מקולם") כגון PDF ו- PDF. XPS מכיל מידע מיקום מדויק עבור כל רכיבי המסמך. פורמטים אלה משמרים את המראה המקורי של מסמך לאחר שהוגדר לדפים, ומספקים דיוק גבוה יותר של מידע המוצג.

## תגית: Layout Engine

Aspose.Words ליישם את מנוע הפריסה של הדף שלה כי פורמט מסמך זרימה לתוך דפים. Aspose.Words הטמיע מספר עונים אשר מייצרים מסמך קבוע כגון PDF או PDF XPS, או דפי פלט לתוך אמצעי אחר כגון הדפסה או ציור. שים לב כי היצוא ניתן גם לדמיין עבור HTML ו- XAML. משמעות הדבר היא שניתן לשמור על מסמך כ-HTML רגיל או XAML (תבנית עיכוב זרימה), או כ-"מדמיין" HTML ו- XAML שמרכיבים עמדות מוחלטות של אלמנטים.

היתרון החשוב ביותר של שימוש Aspose.Words מנוע פריסת דף הוא שהוא מחק את הדרך Microsoft Wordמנוע פריסת העמוד עובד. לכן, כאשר אתה ממיר Microsoft Word מסמך PDF, XPS, או להדפיס אותו באמצעות Aspose.Wordsהפלט יופיע כמעט בדיוק כפי שנעשה על ידי Microsoft Word. שימו לב Aspose.Words לא לנצל Microsoft Word.
