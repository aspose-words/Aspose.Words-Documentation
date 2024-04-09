---
title: אפשרויות בעת המרת PDF
second_title: Aspose.Words עבור .NET
articleTitle: "המונחים: Rendering Options When Converting to PDF"
linktitle: "המונחים: Rendering Options When Converting to PDF"
description: "המרת מסמך ל- PDF עם אפשרויות מתקדמות C#. המרת טפסים ל- PDF C#. השתמש ב- PdfSaveOptions כדי לשנות את התוצאה של שמירת מסמך ל- PDF."
type: docs
weight: 20
url: /he/net/specify-rendering-options-when-converting-to-pdf/
---

פורמט PDF הוא פורמט קבוע עמודים פופולרי מאוד בקרב משתמשים ונתמכת על ידי יישומים שונים, כי מסמך PDF נראה אותו הדבר על כל מכשיר. לכן, המרת PDF היא תכונה חשובה. Aspose.Words.

PDF הוא פורמט מורכב. כמה שלבים של חישובים נדרשים בתהליך של המרת מסמך ל- PDF, כולל חישוב הפריסה. מאז שלבים אלה כוללים חישובים מורכבים, הם זמניים. כמו כן, פורמט ה- PDF מורכב מעצמו. יש לו מבנה קובץ ספציפי, מודל גרפיקה ופונטו להטביע. יתר על כן, זה כולל פונקציונליות פלט מורכבת, כגון תגי מבנה מסמך, הצפנה, חתימות דיגיטליות וצורות ניתנות לעריכה.

Aspose.Words מנוע הפריסה מחק את הדרך Microsoft Wordמנוע פריסת העמוד עובד. לכן, Aspose.Words מסמכי הנפקת PDF נראים קרובים ככל האפשר למה שניתן לראות Microsoft Word. לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך בפורמט PDF. אפשרויות אלה ניתן להגדיר על ידי שימוש [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) שיעור, המכיל את התכונות שקובעות כיצד תוצג תפוקה PDF.

כמה דוגמאות לשימוש **PdfSaveOptions** הם מסופקים למטה.

{{% alert color="primary" %}}

כיום ניתן לחסוך ל- PDF1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u ו- PDF/UA-1. השתמש [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) הגדרה לקביעת רמת תאימות של PDF. שימו לב כי עם פורמט PDF / A, גודל קובץ פלט גדול יותר בגודל קובץ PDF רגיל.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) ו [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) הם מסומנים כמו מיושן.

לקבלת מידע נוסף על PDF/A, ראה את המאמר הבא, " למד תכונות של הדבקה ל- PDF/A".

{{% /alert %}}

## יצירת PDF מסמך עם טפסים מלאים

ניתן גם לייצא טפסים מלאים מ Microsoft Word מסמך לפלט PDF, שיש לו טפסים מלאים במקום טקסט רגיל. השתמש [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) נכס כדי לשמור מסמך PDF עם טפסים מלאים.

שים לב כי בניגוד <span notrans="<span notrans=" Microsoft Word"=""></span>" לפורמט PDF יש מספר מוגבל של אפשרויות לצורות ניתנות לעריכה, כגון תיבת טקסט, תיבת קומבווקס ו- Checkbox. Microsoft Word יש יותר סוגים של טפסים, למשל, לוח השנה. באופן כללי, לא ניתן לחקות באופן מלא Microsoft Word התנהגות ב- PDF לכן, במקרים מורכבים, תפוקה של PDF עשויה להיות שונה ממה שאתה רואה. Microsoft Word.

דוגמה קוד להלן מראה כיצד לשמור מסמך PDF עם טפסים מלאים עם דחיסה Jpeg מוגדרת ואיכות:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## ייצוא מבנה המסמכים ונכסי המכס

המאפיין [https:reference.לדוגמה.com/words/net/ aspose.words.saving/pdfsaveoptions/properties/exportdocument) מאפשר לך לייצא את מבנה המסמך ל- PDF.

מתקני מבנה לוגי PDF מספקים מנגנון לשילוב מידע, לגבי מבנה התוכן של המסמך, לקובץ PDF. Aspose.Words לשמור מידע על המבנה מ Microsoft Word מסמך, כגון פסקאות, רשימות, טבלאות, הערות/הערות, וכו '.

הדוגמה הבאה מציגה כיצד לשמור מסמך לפורמט PDF, שמירה על מבנה המסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words כמו כן, מאפשר לך לייצא תכונות מותאמות אישית ל- PDF, אשר מוצג על ידי הדוגמה הבאה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## ייבוא מחוץ ל- Bookmarks and Headings in Output PDF

אם אתה רוצה לייצא סממנים כקווים מנחים בפלט PDF, אתה יכול להשתמש [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) רכוש. נכס זה משקף את רמת ברירת המחדל בתיאור המסמך, שבו Microsoft Word הערות ספרים מוצגות. אם המסמך מכיל סימני ספר בראש / מ"ר המסמך, באפשרותך להגדיר את [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) רכוש [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) או [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) על מנת לציין כיצד הם מייצאים בפלט PDF. סימני הספר ב Headers/footers אינם מייצאים כאשר הערך של **HeaderFooterBookmarksExportMode** הוא [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

לדוגמה הקוד להלן מראה כיצד לייצא סימני ספר מהראש / מטר הראשון של סעיף:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

ה- PDF של דוגמה זו מוצג להלן:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

מתי **HeaderFooterBookmarksExportMode** מוגדר [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) ואת המסמך יש אפילו ומצליחים / רגלים מוזרים או ראש דף ראשון אחר / רגל, סימני ספר מייצאים עבור ראשי התיבות / המרגל הייחודיים הראשונים בסעיף.

ניתן גם לייצא כותרות בפלט PDF, תוך שימוש ב- PDF, [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) רכוש. נכס זה מפרט כמה רמות של כותרות כלולות בתחילת המסמך.

לדוגמה הקוד להלן מראה כיצד לייצא כותרות עם שלוש רמות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

הפלט PDF של דוגמה זו מתואר להלן:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

הערה או ניווט כותרות עשויים להופיע הופעות שונות ב- PDF צופים. יתר על כן, ביישומים מסוימים, סמנים וניווט כותרות אינם זמינים ב UI.

{{% /alert %}}

## תמונות למטה כדי להפחית את גודל המסמך

Aspose.Words מספק יכולת להוריד תמונות על מנת להפחית את גודל ה- PDF של התפוקה, באמצעות שימוש בגודל PDF. [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) רכוש. Downsampling ניתן על ידי ברירת מחדל [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) רכוש.

חשוב לציין כי ניתן גם לקבוע החלטה מסוימת ב [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) רכוש או סף החלטה ב [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) רכוש. במקרה השני, אם רזולוציה התמונה היא פחות מערך הסף, אז ירידה לא תחול.

לדוגמה הקוד להלן מציג כיצד לשנות את ההחלטה של תמונות במסמך PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

ההחלטה מחושבת בהתאם לגודל התמונה האמיתי בעמוד.

## עקבו אחרי Adobe PDF Format

Aspose.Words כמו כן, מאפשר לך לשלוט כיצד גופנים מוטבעים לתוך מסמכי PDF וכתוצאה מכך. פונטים צריכים להיות מוטבעים בכל מסמך PDF של Adobe כדי להבטיח כי המסמך יכול להיות מוצג כראוי על כל מכונה (ראה פרטים נוספים על גרוטאות בסעיף. [שימוש אמיתי סוגפונטים](/words/he/net/using-truetype-fonts/)). כברירת מחדל, Aspose.Words מטביעה תת-קבוצה של גופנים המשמשים במסמך ל- PDF שנוצר. במקרה זה, רק glyphs (characters) בשימוש במסמך נשמר ל- PDF.

### מתי להשתמש בפונטים מלאים ומתי להתחיל

יש דרך לציין אפשרות Aspose.Words להטמיע גופנים מלאים. פרטים נוספים, יחד עם כמה יתרונות וחסרונות של כל הגדרה מתוארים בטבלה שמתחת.

| Embedd Fonts Mode |  יתרונות | חסרונות |
|  :-  |  :-  |  :-  |
|  `Full`  | שימושי כאשר אתה רוצה לערוך את PDF וכתוצאה מכך על ידי הוספת או שינוי הטקסט. כל הגופנים כלולים, ומכאן כל glyphs הם נוכחים. | מכיוון שחלק מהפונטים הם גדולים (מגבתים משניים), הטמיעו אותם ללא חתרנות יכולים לגרום לקבצי פלט גדולים. |
|  `Subset`  | סובייקט הוא שימושי אם אתה רוצה לשמור על גודל קובץ הפלט קטן יותר. | <p>המשתמש אינו יכול להוסיף או לערוך טקסט באופן מלא באמצעות הגופן המצופה במסמך PDF. כי לא הכל glyphהגופן קיים.</p>

<p>אם קובצי PDF מרובים נשמרים עם גופנים מסובכים ומקובצים יחד, אז מסמך PDF המשולב עשוי להיות בעל גופן המכיל הרבה תת-קרקעיים מיותרים.</p>
 |

### עקבו אחרי Full Fonts in PDF

The The The [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) הנכס מאפשר לך לציין כיצד Aspose.Words הטמיעו את הפונטים במסמך PDF.

- - כדי להטביע גופנים מלאים במסמך הפלט PDF, להגדיר **EmbedFullFonts** to to true
- - כדי לפתח גופנים בעת שמירת PDF, להגדיר **EmbedFullFonts** to to false

הדוגמה הבאה ממחישה כיצד להטמיע גופנים מלאים במסמך PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

הדוגמה הבאה מראה כיצד להגדיר Aspose.Words כדי להגדיר את הפונטים בפלט PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית עבור דוגמאות אלה [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## כיצד לשלוט על Core Fonts Windows המונחים:

גופנים ו Windows גופנים סטנדרטיים הם ערכות "סטנדרטיות" של גופן, אשר בדרך כלל נוכחים על מכונת היעד או מסופקים על ידי קורא המסמך, ולכן הם אינם צריכים להיות מוטבעים בפלט PDF. על ידי לא הטמעת גופנים אלה, אתה יכול להפחית את הגודל של מסמכי PDF שניתנו ועדיין לשמור על יציבות.

Aspose.Words מספק אפשרויות לבחור כיצד גופנים ייצוא ל- PDF. באפשרותך לבחור להטביע גופנים ליבה וסטנדרטיים לתוך הפלט PDF או לדלג להטביע אותם ולהשתמש בפונטים הליבה סטנדרטיים PDF הליבה או גופן מערכת על מכונת היעד במקום. שימוש באחת האפשרויות הללו בדרך כלל מביא לירידה משמעותית בגודל הקובץ עבור מסמכי PDF שנוצרו על ידי Aspose.Words.

- מכיוון שאפשרויות אלה הן בלעדיות הדדית, עליך לבחור רק אחת בכל פעם.
- בעת שמירת תאימות PDF/A-1, יש להטמיע את כל הפונטים המשמשים במסמך PDF. בעת שמירת הציות, [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) רכוש חייב להיות מוגדר false וה [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) רכוש חייב להיות מוגדר [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### עקבו אחרי Core Fonts

את האפשרות להטמיע גופנים ליבה ניתן להשתמש או להיות מוגבל על ידי שימוש [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) רכוש. כאשר הוא מוגדר true, הפונטים הפופולריים ביותר "טיפוס אמיתי" (Base 14 גופן) אינם מוטבעים במסמך PDF הפלט:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

גופנים אלה מוחלפים עם גופן מסוג הליבה המתאים, אשר מסופקים על ידי קורא כאשר PDF נפתח.

הדוגמה המוצגת להלן מראה כיצד להגדיר Aspose.Words כדי למנוע הטמעת גופנים מרכזיים ולתת לקורא להחליף אותם עם PDF סוג 1 גופנים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

באפשרותך להוריד את קובץ התבנית לדוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

מכיוון ש- PDF צופים מספקים גופנים ליבה בכל פלטפורמה נתמכת, אפשרות זו מועילה גם כאשר נדרשת ניידות מסמך גדולה יותר. עם זאת, גופן ליבה עשוי להיראות שונה מפונטים במערכת.

{{% alert color="primary" %}}

הגדרה זו עובדת רק עבור ANSI (Windows-1252) טקסט. כתיבת טקסט לא-ANSI ל- PDF תמיד ידרוש מהגופנים התואמים להיות מוטבעים.

{{% /alert %}}

### מערכת Embedding System Fonts

אפשרות זו יכולה להיות זמינה או זמינה באמצעות שימוש [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) רכוש. כאשר הנכס הזה מוגדר [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), "Arial" ו-"Times New Roman" true גופן מסוג אינו מוטבע במסמך PDF. במקרה זה, הצופה לקוח מסתמך על הגופנים המותקנים על מערכת ההפעלה של הלקוח. מתי **FontEmbeddingMode** הנכס נקבע [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words אל הטמיעו גופנים.

הדוגמה הבאה מראה כיצד להגדיר Aspose.Words כדי לדלג על הטמעת אריאל וטיימס חדש גופן רומי לתוך מסמך PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

מצב זה הוא שימושי ביותר כאשר אתה רוצה להציג את המסמכים שלך באותו פלטפורמה, שמירה על המראה המדויק של גופנים בפלט PDF.

{{% alert color="primary" %}}

הגדרה זו עובדת רק עבור ANSI (Windows-1252) טקסט. כתיבת טקסט לא-ANSI ל- PDF מחייבת את הפונט המתאים להיות מוטבע.

{{% /alert %}}
