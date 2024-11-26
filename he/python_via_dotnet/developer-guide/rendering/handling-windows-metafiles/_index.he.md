---
title: Handling Windows Metafiles
second_title: Aspose.Words עבור Python via .NET
articleTitle: Handling Windows Metafiles
linktitle: Handling Windows Metafiles
description: "Aspose.Words עבור Python via .NET ליישם את עצמו Windows שחקן metafile לשחק פורמט Metafile על כל הפלטפורמות ותומכת בטיפול של תכונות metafile בסיסיות ויכול לבצע נפילה לסוג אחר של שחקן metafile."
type: docs
weight: 30
url: /he/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows פורמט metafile הוא פורמט קובץ תמונה שיכול להכיל הן וקטור גרפיקה. פורמט זה משמש לאחסון נתונים גרפיים בזיכרון או בקבצים על-דיסק. metafile שומרת רשימה של שיחות פונקציה Windows Graphics Device Interface (GDI) יש לבצע כדי להציג את התמונה על המסך. המערכת מפרשת ומוציאה פקודות אלה בהקשר התצוגה.

בעבר, Windows Metafile היה פורמט התמונה הווקטורית היחיד נתמך על ידי Microsoft Word. Microsoft Word עכשיו גם תומך פורמט SVG, אבל פורמט metafile עדיין בשימוש נפוץ מסמכי Word. כמו כן, Metafile יכול להיות פורמט שינוי עבור יישומים אחרים, כגון: Microsoft Visio למעשה, המטרה העיקרית של Metafile היא להבטיח את החלפת המידע הגרפי בין Windows יישומים.

ישנן 3 גרסאות של Windows Metafile:

- WMF - חנויות נקראות 16bit GDI.
- EMF - חנויות קוראות Win32/GDI.
- חנויות EMF+ Metafile קוראות GDI+. EMF+ Metafile עשוי גם להיות כפול, המתאר את אותה גרפיקה עם שני חלקי EMF ו- EMF+.

הבעיה הקיימת עם Windows Metafile הוא כי הוא אינו נתמך על ידי רוב פורמטים שאינם מילים, אשר מסמכים נשמרים בדרך כלל. לכן, יש צורך להמיר את פורמט Metafile לפורמטים אחרים של הרסטר או וקטור. קל להמיר Windows Metafile to raster image .NET על ידי פשוט לעבור את זה GDI+, אבל זה לא אפשרי על פלטפורמות אחרות מאז אפילו GDI+ אינו מספק את הפונקציונליות כדי לחלץ את הגרפיקה הווקטורית מ Metafile. כדי לפתור את הבעיות הללו, Aspose.Words ליישם את עצמו Windows שחקן metafile, אשר מסוגל לשחק פורמט Metafile הן וקטור וגרפיקהraster על כל הפלטפורמות.

## שליטה על Aspose.Words משחק Metafile Player

The The The [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) הכיתה מאפשרת לך לשלוט בשחקן metafile. לדוגמה, אתה יכול לקבוע כיצד ניתן להפוך תמונות metafile באמצעות [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) הנכס, שיש לו משמעות מיוחדת כאשר הוא ממיר ל bitmaps (ראה גם [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) רכוש).

חיסכון ל bitmap עובד אחרת על פלטפורמות אחרות מאשר .NET. בזמן .NET GDI+ הופך הוא הפניה שעובדת כמעט מושלמת גם עבור פורמט metafile המורכב ביותר, על פלטפורמות אחרות זה עלול לגרום בעיות או לא להיות נתמך בכלל.

## תמיכה במבצעי Raster

פעילות Raster היא תכונה metafile מורכבת, אשר כרגע יש תמיכה מוגבלת. פעולות Raster זמינות בפורמטים WMF ו-EMF metafile. פורמט metafile של EMF+ אינו משתמש בפעולות raster ישירות אבל יכול להכיל חלקי EMF, מוטבע WMF או EMF metafiles.

יש פעילות בינארית וחנית:

- פעולות raster בינאריות מוחלות לפקודות ציור עט, כגון קווי ציור ועקום. בעת ציור קו, צבע העט משולב עם צבע מפת היעד (צבע פיקסל המתאים על פני השטח המכשיר) על ידי שימוש פעולות לוגיות bitwise שצוין עם ערכי צבע hex. דוגמה תמונה להלן ממחישה את ההשפעה של כל 16 פעולות raster בינאריות החל 20 ברים צבעים שונים. הסורגים הצבעוניים נמשכים ראשון, הסורגים האופקיים נמשכים לאחר כל פעולת הרסטר בינארית מוחלת. במקרים פשוטים, R2שחור מושך שחור R2הרבה מעל צבע, R2לא משנה את הרקע, R2לבן.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- פעולות raster טרנר מוחלות בעת ציור תמונות bitmap. הם משלבים צבעים של פיקסלים תמונה של bitmap , את המברשת ואת מפת היעד על ידי שימוש בפעולות לוגיות bitwise עם ערכי צבע ה-hex מוגדרים. אחת המטרות הנפוצות ביותר של שימוש בפעילות ternary raster היא חיקוי של שקיפות. התמונה המוצגת בדוגמה להלן ממחישה כיצד ניתן לחקות שקיפות אייקון. ישנם שני סוגים של bitmaps: B/w Mask bitmap ו- Color bitmap. ראשית, מסכת bitmap נמשכת עם פעולת SRCAND raster. היא משנה את אזור האייקון האופאק לשחור ולבן, והותירה את האזור השקוף ללא שינוי. לאחר מכן, המפה השנייה נמשכת עם פעולת ה-SRCINVERT. הוא מציג את פיקסלים הצבעים על האזור השחור, מה שמשאיר את האזור השקוף ללא שינוי.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

פעולות Raster לא ניתן להמיר לגרפיקה וקטור ישירות. Aspose.Words מחקה פעולות של raster על ידי raster באופן חלקי את פני השטח של המכשיר מושפע מפעילותraster. למטרה זו, [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) רכוש משמש.

{{% alert color="primary" %}}

בעוד שפעולות raster בינאריות אינן נתמכות כיום והמספר המוגבל של פעולות ternary raster נתמך על ידי Aspose.Words, זה יכול לטפל במקרים הבסיסיים של המרה לגרפיקה וקטורית ישירות, למשל, R2שחור, R2לבן R2NO כמו כן, rasterizing של פני השטח של המכשיר משפיע באופן משמעותי על הביצועים, במיוחד כאשר מספר משמעותי של רשומות ניתוח raster מעורבים.

{{% /alert %}}

הדוגמה המוצגת להלן מראה כיצד Aspose.Words הופך metafile ל bitmap כאשר זה לא אפשרי להפוך נכון כמה רשומות metafile לגרפיקה וקטור:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Metafile Fallback Settings

Aspose.Words לא תומך במספר תכונות metafile שהן מורכבות או נדירות ביותר. במקרה זה Aspose.Words יכול להופיע נפילה לסוג אחר של שחקן metafile

ראשית, Aspose.Words מבצע נפילה משחקן המטאפורה הווקטור ל-raster, אשר נשלט על ידי [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) רכוש. אם תכונת הנפילה זמינה, Aspose.Words מנסה להפוך כמה גרפיקה החלפת במקום התכונות שאינן נתמכות.

Aspose.Words בהצלחה משחק metafile to raster באמצעות GDI+ על .NET, מה שהופך את האפשרות הזו בטוחה.

שנית, יש אפשרות ל-EMF+ metafile כפול ליפול ממשחק EMF+ חלק לחלק EMF. הוא נשלט על ידי [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). אם יש כמה בעיות להתרחש בעת משחק חלק EMF, אז נפילה ל-raster יכול להתבצע גם כן.

לגבי פעולות raster, אם [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) הוא נכים, ולאחר מכן פעולות הרסטר נחשבים לא נתמך, אשר גורם לירידה לשחקן bitmap metafile אם הוא מופעל. לכן, אם יש לך metafile עם פעולות raster, אבל אתה לא רוצה להשתמש raster פעולות חיקוי ועדיין רוצה לקבל את הפלט הווקטור עם גרפיקה החלפת, ולאחר מכן לבחור את הגרפיקה, ולאחר מכן לבחור את [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
