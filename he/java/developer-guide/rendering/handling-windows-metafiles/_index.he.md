---
title: Handling Windows metafils Java
second_title: Aspose.Words עבור Java
articleTitle: Handling Windows metafiles
linktitle: Handling Windows metafiles
description: "Aspose.Words עבור Java ליישם את עצמו Windows שחקן metafile לשחק פורמט Metafile על כל הפלטפורמות ותומך בטיפול של תכונות metafile בסיסיות ויכול לבצע נפילה לסוג אחר של שחקן metafile."
type: docs
weight: 30
url: /he/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows פורמט metafile הוא פורמט קובץ תמונה שיכול להכיל הן וקטור גרפיקה. פורמט זה משמש לאחסון נתונים גרפיים בזיכרון או בקבצים על דיסק. metafile שומרת רשימה של שיחות פונקציה Windows Graphics Device Interface (GDI) יש לבצע כדי להציג את התמונה על המסך. המערכת מפרשת ומוציאה פקודות אלה בהקשר התצוגה.

בעבר, Windows Metafile היה פורמט התמונה הווקטורי היחיד נתמך על ידי Microsoft Word. Microsoft Word עכשיו גם תומך פורמט SVG, אבל פורמט metafile עדיין בשימוש נפוץ מסמכי Word. כמו כן, Metafile יכול להיות פורמט שינוי עבור יישומים אחרים, כגון: Microsoft Visio למעשה, המטרה העיקרית של Metafile היא להבטיח את החלפת המידע הגרפי בין Windows יישומים.

ישנן 3 גרסאות של Windows Metafile:

- WMF - חנויות נקראות 16bit GDI.
- EMF - חנויות קוראות Win32/GDI.
- חנויות EMF+ Metafile קוראות GDI+. EMF+ Metafile עשוי גם להיות כפול, המתאר את אותה גרפיקה עם שני חלקי EMF ו- EMF+.

הבעיה הקיימת עם Windows Metafile הוא כי הוא אינו נתמך על ידי רוב פורמטים שאינם מילים, אשר מסמכים נשמרים בדרך כלל. לכן, יש צורך להמיר את פורמט Metafile לפורמטים אחרים או וקטור. קל להמיר Windows Metafile to araster image .NET על ידי פשוט לעבור את זה GDI+, אבל זה לא אפשרי על פלטפורמות אחרות מאז אפילו GDI+ אינו מספק את הפונקציונליות כדי לחלץ את הגרפיקה הווקטורית מ Metafile. לפתרון בעיות אלה, Aspose.Words ליישם את עצמו Windows שחקן metafile, אשר מסוגל לשחק פורמט Metafile הן וקטור וגרפיקהraster על כל הפלטפורמות.

## שליטה על Aspose.Words משחק Metafile Player

The The The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) הכיתה מאפשרת לך לשלוט בשחקן metafile. לדוגמה, אתה יכול לקבוע כיצד תמונות metafile צריך להיעשות באמצעות [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) הנכס, שיש לו משמעות מיוחדת כאשר הוא ממיר ל bitmaps (ראה גם [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) רכוש).

## תמיכה במבצעי Raster

פעילות Raster היא תכונה metafile מורכבת, אשר כרגע יש תמיכה מוגבלת. פעולות Raster זמינות בפורמטי WMF ו-EMF metafile. פורמט metafile של EMF+ אינו משתמש בפעולות raster ישירות אבל יכול להכיל חלקי EMF, מוטבע WMF או EMF metafiles.

יש פעילות בינארית וחנית:

- פעולות raster Binary מוחלות לפקודות ציור עט, כגון קווי ציור ועקום. בעת ציור קו, צבע העט משולב עם צבע מפת היעד (צבע פיקסל המתאים על פני השטח המכשיר) על ידי שימוש פעולות לוגיות bitwise שצוין עם ערכי צבע hex. דוגמה תמונה להלן ממחישה את ההשפעה של כל 16 פעולות raster בינאריות החל 20 ברים צבעים שונים. הסורגים הצבעוניים נמשכים ראשון, הסורגים האופקיים נמשכים לאחר כל פעולת הרסטר בינארית מוחלת. במקרים פשוטים, R2_BLACK שחור, R2הרבה מעל צבע, R2_NOP לא לשנות את הרקע, R2_WHITE שואב לבן

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- פעולות raster טרנר מוחלות בעת ציור תמונות bitmap. הם משלבים צבעים של פיקסלים תמונה תואמים של bitmap, המברשת, ואת יעד bitmap על ידי שימוש בפעולות לוגיות bitwise עם ערכי צבע hex מוגדרים. אחת המטרות הנפוצות ביותר של שימוש בפעילות ternary raster היא חיקוי של שקיפות. התמונה המוצגת בדוגמה להלן ממחישה כיצד ניתן לחקות שקיפות אייקון. ישנם שני סוגים של bitmaps: B/w Mask bitmap ו- Color bitmap. ראשית, מסיכה bitmap נמשכת עם פעולת SRCAND raster. היא משנה את אזור האייקון האופאק לשחור ולבן, והותירה את האזור השקוף ללא שינוי. לאחר מכן bitmap השני נמשך עם פעולת SRCINVERT. הוא מציג את פיקסלים הצבעים באזור השחור, מה שהופך את האזור שקוף ללא שינוי.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

פעולות Raster לא ניתן להמיר לגרפיקה וקטור ישירות. Aspose.Words מחקה פעולות סטרסטר על ידי raster באופן חלקי rasterizing פני השטח של המכשיר מושפע מפעילותraster. למטרה זו, [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) רכוש משמש.

{{% alert color="primary" %}}

בעוד שפעולות raster בינאריות אינן נתמכות כיום והמספר המוגבל של פעולות ternary raster נתמך על ידי Aspose.Words, זה יכול לטפל במקרים הבסיסיים של המרה לגרפיקה וקטורית ישירות, למשל, R2_BLACK, R2_WHITE, R2_NOP. כמו כן, rasterizing של פני השטח של המכשיר משפיע באופן משמעותי על הביצועים, במיוחד כאשר מספר משמעותי של רשומות ניתוח raster מעורבים.

{{% /alert %}}

הדוגמה המוצגת להלן מראה כיצד Aspose.Words הופך metafile ל bitmap כאשר זה לא אפשרי להפוך נכון כמה רשומות metafile לגרפיקה וקטור:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
