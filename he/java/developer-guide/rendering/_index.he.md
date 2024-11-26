---
title: בורחים Java
second_title: Aspose.Words עבור Java
articleTitle: Rendering
linktitle: Rendering
description: "שימוש בשימוש Aspose.Words עבור Java להפוך את התכונה כדי לעצב מסמך עיכוב זרימה לתוך דפים להמיר מסמך כזה או דפים נבחרים מסמך אחר (PDF, HTML, HTML, XPS, וכו ') או תמונה (TIFF, PNG, SVG וכו ') פורמטים לצפייה, המרות נוספות, או הדפסה."
type: docs
weight: 30
url: /he/java/rendering/
timestamp: 2024-01-27-14-07-04
---

אנו משתמשים במונח "rendering" ב Aspose.Words כדי לתאר את התהליך של המרת מסמך לתבנית קובץ או מדיום שדמיינו או שיש לו מושג של דפים. אנחנו מדברים על הגשת מסמך לדפים. הדיאגרמה הבאה מראה מה עושה Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

התכונות של Aspose.Words ניתן לבצע את הפעולות הבאות:

- להמיר מסמך או דפים נבחרים ל- PDF, XPS, HTML, XAML, PostScript ו- PCL.
- להמיר מסמך לתעודה מרובת עמודים, או להמיר כל דף לדימוי raster ולהציל אותו כמו BMP, PNG או JPEG.
- המרת דף מסמך לתוך תמונה של Scalable Vector Graphics (SVG), או להמיר לתוך תמונה וקטור ולהציל אותו כמו EMF.
- Render (נסיגה) דף מסמך בגודל מסוים או בקנה מידה על `Graphics` להתנגד ליצירת אגודל, תמונות בגודל מלא או בקנה מידה של דפי מסמך.
- Render a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) אובייקט בנפרד מן המסמך לכל פורמט תמונה או `Graphics` אובייקט
- הצגת כל דף של מסמך ב-Swing Component.
- דפי הדפסה או תצוגה מקדימה באמצעות תקן Java תשתיות הדפסה

## Flow-layout או קבוע פורמט המסמכים {#flow-layout-or-fixed-layout-document-formats}

רוב פורמטי המסמך שניתן לטעון בהם Aspose.Words הם ידועים פורמטים "זרימה-עיכוב". פורמטי Flow-layout כוללים DOC, OOXML, RTF, ODT ו- HTML. מסמכים בפורמטים אלה מורכבים מאלמנטים שונים כגון פסקאות, טבלאות, ראשים, הולכי רגל, תמונות, שדות, ואת הפורמט שלהם, למשל, נועז, אתי, גופן, גודל. עם זאת, פורמטי זרימה אינם מכילים מידע על המיקום שבו כל סעיף או אופי מסוים מוצג בדף.

לעומת זאת, פורמטים "תיקון" (הידועים גם כ"עמוד מקולם") כגון PDF ו- PDF. XPS מכיל מידע מיקום מדויק עבור כל רכיבי המסמך. פורמטים אלה משמרים את המראה המקורי של מסמך לאחר שהוגדר לדפים, ומספקים דיוק גבוה יותר של המידע המוצג.

## תגית: Layout Engine {#page-layout-engine}

Aspose.Words ליישם את מנוע פריסת הדף שלה פורמט מסמך זרימה לתוך דפים. Aspose.Words הטמיע מספר עונים אשר מייצרים מסמך קבוע כגון PDF או PDF XPS, או דפי פלט לתוך אמצעי אחר כגון הדפסה או ציור. שים לב כי היצוא ניתן גם לדמיין עבור HTML ו- XAML. משמעות הדבר היא כי מסמך ניתן לשמור כ-HTML רגיל או XAML (תבנית עיכוב זרימה), או כ-"מדמיין" HTML ו- XAML, אשר כוללים עמדות מוחלטות של אלמנטים.

היתרון החשוב ביותר של שימוש Aspose.Words מנוע פריסת דף הוא שהוא מחקה את הדרך Microsoft Wordמנוע פריסת העמוד עובד. לכן, כאשר אתה ממיר Microsoft Word מסמך PDF, XPS, או להדפיס אותו באמצעות Aspose.Wordsהפלט יופיע כמעט בדיוק כפי שנעשה על ידי Microsoft Word. שימו לב Aspose.Words לא לנצל Microsoft Word.
