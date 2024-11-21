---
title: המרת פורמט קבוע-עמוד
second_title: Aspose.Words עבור Python via .NET
articleTitle: המרת פורמט קבוע-עמוד
linktitle: המרת פורמט קבוע-עמוד
description: "שמור מסמכים ל- PDF XPS, HTML, XAML, PostScript ופורמטי PCL באמצעות Python."
type: docs
weight: 10
url: /he/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words ליישם את מנוע הפריסה של הדף שלו. לפני להעמיק את המפרט שלה, כדאי לדון תחילה מסמך ברמה גבוהה. כאשר חושבים על מסמך, משתמשים בדרך כלל לדמיין מספר של דפי נייר המכילים מילים, תמונות, טבלאות ו charts. מסמכים יכולים להיות מסוגים שונים, כגון טקסט, גליונות התפשטות, שקופיות, רישומים CAD, זרימות, ולכן, יכולים להיות פריסות שונות לחלוטין. רוב היישומים מאפשרים לשלוח מסמכים למדפסת; זה כאשר משתמש יכול באמת להציג את המראה הסופי של המסמך המיועד.

## הצגת מסמך בבקשות שונות

יישומים שונים של צפייה במסמך או פרסום מאפשרים למשתמשים לפתוח (Adobe Acrobat, XPS תצוגה), ולפעמים לערוך (Adobe InDesign) מסמכים של פורמטים ספציפיים. יישומים אלה מייצרים בדרך כלל מסמך פורמט שנקרא "תיקון דפי". פורמט מסמך כזה מתאר בדיוק היכן מונח התוכן של מסמך על כל דף. באופן פנימי, PDF או XPS פורמט מכיל תיאור של כל דף, כמו גם הוראות ציור, המציין את הפריסה של התוכן בדף. זה דומה פורמטי תמונה, מתאר היכן התוכן מוצג או בצורת raster או וקטור.

לעומת זאת, כמה יישומי עריכת טקסט אינם תומכים בצפייה בדפים של מסמך. למשל, Microsoft Notepad תומך מעט מאוד פונקציות אחרות מאשר רק להציג, עריכה וטקסט הדפסה. התצפית החשובה כאן היא שיישומים כאלה לא יכולים להציג דפים של המסמך ולא לספר למשתמש כמה מהם יודפסו, רק לאפשר להציג את תוכן המסמך. ניתן לשמור את המסמך בפורמט טקסט רגיל וניתן לפתוח אותו על ידי יישומים רבים אחרים. באמצעות יישום המאפשר צפייה בתוכן בינארי של קובץ שרירותי ניתן לראות מה מאוחסן בקובץ המסמך - זה פשוט טקסט פשוט, אין בו שום דבר אחר.

יישומים מתוחכמים יותר של טקסט, כגון Microsoft Wordפד, שמור את המסמך בפורמט טקסט עשיר (RTF), אשר תומך יותר פונקציות פורמט, כגון הוספת תמונות, עיצוב אופי, פיסקה שולי וספאם. עם זאת, פורמט RTF מכיל גם את התוכן של המסמך, ללא מידע על דפים.

Microsoft Word הוא היישום המתקדם ביותר לעריכת טקסט ב Windows היום. זה פורמטים בפורמט DOCX, המתאר את התוכן של המסמך באופן גמיש ובהרחבה, ומאפשר למשתמשים לציין גודל דף, אוריינטציה לסעיף מסמך, ו, להיות יישום WYSIWYG אפילו להציג דפי מסמך על המסך. עם זאת, עדיין אין מידע לגבי האופן שבו התוכן של המסמך מוצג בעמודים הזמינים בקובץ המסמך. קובץ המסמך מתאר רק את התוכן עצמו, ואת הקשר של מסמך אובייקטים זה לזה, יחד עם כמה מגבלות גיאומטריות. כתוצאה מכך, לפני הצגת מסמך, Microsoft Word קובע את המידע הזה עצמו. זה המקום שבו פריסת דף נכנסת למשחק.

## מה זה Page Layout

פריסת דף מסמך היא מבנה נתונים, המתאר איפה אובייקט מסוים ממוקם על דפים עבור כל אובייקטי המסמך. בנוסף, מכיוון שלאובייקטים יש תכונות המשפיעות על המראה שלהם, כגון גודל גופן, גילוח או ציור אפקטים, אתה צריך לא רק לדעת איפה האובייקט הוא, אלא גם איזה שטח (s) של הדף הוא תופסת, ואם זה יחול על דפים מרובים כך שאובייקטים אחרים לא חופפים את אותו אזור (s)).

Aspose.Words יישום פריסת דף פונקציונליות פנימית המאפשרת לו לייצר את כל פורמטי העמוד הקבועים, כגון PDF, PDF, XPS, פורמטים שונים של תמונות. ללא פריסת דף, המידע המאוחסן בקובץ מסמך העמוד הקבוע לא יהיה זמין וכל הפורמטים האלה לא יתמכו.

היחס בין מסמך לבין פריסת דף הוא די פשוט. בעוד מסמך מתאר את התוכן, פריסת העמוד המקביל מתארת את הגיאומטריה של תוכן זה. הערה, כי פריסת דף לא יכולה להתקיים ללא מסמך שכן לא יהיה שום תוכן למחשוב הגיאומטריה, אבל מסמך יכול להתקיים ללא פריסת דף. לדוגמה, כאשר מסמך DOCX מומר במסמך RTF, בדרך כלל מיותר לדעת את הגיאומטריה, שכן אף פורמט לא מאחסן אותה.

## יצירת Page Layout

יצירת פריסת דף יכולה להיות הליך יקר, הן מבחינת מהירות וזיכרון. זה נובע ממספר סיבות:

- - המסמך עשוי להיות כמות גדולה של תוכן, אשר עשוי להיות מוצג על אלפי דפים. הגיאומטריה של כל אובייקט על כל דף צריך להיות מתואר, צריכת משאבי זיכרון.
- - המסמך עשוי להיות כללים רבים, הצבת מגבלות על גיאומטריה. זמן חישובי סביר יכול להיות בילה, להבטיח כל אימון הוא מרוצה
- כמה תכונות מסמך, למשל `NUMPAGES` שדה, יצירת תלות חוזרת לערכי נכסים עתידיים, שאינם זמינים בעת חישוב. זה מוביל חישובים חוזרים ומוסיף בזמן חישוב.

בשל הסיבות הנ"ל, Aspose.Words ליצור פריסת דף רק כאשר זה הכרחי. סיבה טיפוסית לכך תהיה בקשה להפוך דפי מסמך או להשיג ערך שדה תלוי במידע הזמין בפריסה בעמוד. סיבה פחות ברורה יכולה לייצא מסמך ל-HTML. אף על פי ש-HTML אינו פורמט קבוע של עמודים והוא אינו מתאר גיאומטריה של האובייקטים, הוא עדיין תומך בתמונות. תמונות כאלה עשויות להיות בצורת צורות שנוצרו Microsoft Word עם טקסט בפנים. לדוגמה, תרשים עם תוויות ציר ניתן לייצא ל- HTML כתמונה, אבל לפני שניתן לעשות זאת. Aspose.Words צריך להפוך את התמונה הזו, ולכן צריך לדעת איפה להציג את התווית. ראה את הדוגמא למטה:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### Non-Geometric נכסים

בנוסף לטיפול במידע גיאומטרי, פריסת דף אחראית גם לחישוב צבעים וסגנונות גבול. In In In Microsoft Word, צבע טקסט יכול להיות מוגדר כאוטומטי, מרמז כי בחירת הצבעים צריך להיות מבוסס על צבע הגילוח של התא או פסקה, או מבוסס על צבע הדף, שבו הטקסט מופיע.

הפריסה בעמוד מתארת איפה הטקסט יופיע ומה התוכן יימסר מאחורי זה, המאפשר חישוב צבע. ישנם חישובים ספציפיים אחרים שבוצעו על ידי פריסת הדף. לדוגמה, גבול אופקי בטבלה תלוי אם שורת שולחן נמשכת בעמודה של טקסט, ואם הוא שבור על פני עמודות. אם רצף ניתן אחרון בעמודה, הגבול התחתון משמש במקום אופקי.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In In In <span notrans="<span notrans=" Aspose.Words"=""></span>" משתמש יכול לבקש אם לבנות פריסת דף חדשה, או לעדכן קיים. שניהם יכולים להתבצע על ידי [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) שיטה, המסופקת על ידי [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) מעמד. אם פריסת דף אינה קיימת, אך יש צורך בה (לדוגמה, כאשר המסמך יושק לתבנית דפית קבועה), Aspose.Words באופן אוטומטי נקרא שיטה זו. עם זאת, אם קיימת כבר פריסת דף, Aspose.Words תשתמשו במשאבים הקיימים כדי להימנע מצריכת המשאבים הדרושים כדי לעדכן אותם. במקרה זה, המשתמש צריך להתקשר [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) שיטה, על מנת להבטיח כי פריסת העמוד היא עדכנית עם מודל המסמך.

### מבנה דינמי

תהליך יצירת פריסת העמוד כולל את השלבים הבאים:

- - *Conversion* - enumerating התוכן של מודל המסמך והכנת אובייקטים מקבילים של הפריסה.
- - *Build* - סידור אובייקטים הפריסה לייצג את התוכן של המסמך על דפים.
- - *Reflow* עדכון סידור אובייקטים כדי לספק מגבלות גיאומטריה.
- • יצירת אובייקטים פריסה לתוך הצגת דף קבועה והשלמת מידע צבע *.
- בניית וזרימה של תוכן צורה * - צעד נדרש אם המסמך מכיל צורות עם תוכן טקסט מקונן.

הערה, כי פריסת העמוד היא מבנה דינמי, אשר ניתן לבנות באופן חלקי. הדבר נחוץ במיוחד כאשר אי אפשר לחשב ערכי שדה מבלי לבנות מחדש את מבנה הפריסה של המסמך. השדה יכול להתייחס למיקום של אובייקט בעמוד, ובמקביל ערך השדה עצמו ניתן גם על הדף, המשפיע על המיקום של האובייקט הנזכר. פריסת דף לא ניתן לבנות בהליכה אחת, כי ערכי שדה עדיין לא יהיו זמינים בעת מיקום בדף.

שקול את התרחיש האופייני כאשר `NUMPAGES` שדה מופיע למרגלות העמוד הראשון במסמך. הערך של שדה זה הוא המספר הכולל של דפים. על מנת למקם את השדה בדף, יש לדעת את ערכו. אם רק העמוד הראשון נבנה כעת, המספר הכולל של דפים עדיין לא ידוע. במקרה זה, פריסת העמוד צריכה להשתמש בערך ברירת המחדל ולאחר מכן לחזור לשדה זה ולשנות את ערכו על פי חישובים בפועל. עם זאת, שינוי ערך השדה עשוי להשפיע על תוכן מסמך אחר בדף ובסופו של דבר לגרום דף חדש להיות נספח או דף קיים הוסר, ובכך להפוך את הערך המובא מיושן. בעיה זו ניתן לפתור על ידי הפיכתה לאפשרית לעדכן את פריסת הדף הקיימת.

בעת יצירת פריסה, ניתן גם להגדיר [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) תכונות המשפיעות על הפלט של המסמך בדפים.

## חיסכון בפורמט קבוע

לאחר פריסת העמוד בנויה והגאומטריה של אובייקטים ומיקומה על הדף מחושבים, ניתן לשמור את המסמך בפורמט קבוע בעמוד נתמך על ידי Aspose.Words. בעת שמירת מסמכים לפורמטי דף קבועים, ניתן להשתמש באפשרויות הניתוק המשותף לכל הפורמטים הללו. הם מאפשרים לשלוט:

- - מספר וטווח העמודים הכלולים במסמך הפלט ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- קבוצה של דמויות המשמשות למספרים[numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- שחקן metafile ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). לפרטים נוספים, ראה [Handling Windows Metafiles](/words/he/python-net/handling-windows-metafiles/) מאמר.
- שיעור איכות עבור דיכוי תמונות JPEG, הערך של אשר עשוי להיות שונה במקצת, בהתאם לתבנית שמירת שנבחרה ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- אופטימיזציה של גרפיקה וקטורית ב Aspose.Words תפוקה ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- אפשרויות גרפיות בעת שמירת Tiff, Png, Bmp, Jpeg, Emf פורמטים ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- שמור את המסמך באפורה ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- מעבר בין עריכת צורות של DrawingML וצורות נפילה ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- מעבר בין DML אפקטים להפוך מודים ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

הדוגמה להלן ממחישה כיצד לחסוך מסמך בפורמט JPEG באמצעות פורמט JPEG. [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטה וקביעת אפשרויות:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
