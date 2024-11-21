---
title: אפשרויות בעת המרת PDF
second_title: Aspose.Words עבור Python via .NET
articleTitle: "המונחים: Rendering Options When Converting to PDF"
linktitle: "המונחים: Rendering Options When Converting to PDF"
description: "המרת מסמך ל- PDF עם אפשרויות מתקדמות Python. השתמש באפשרות PdfSaveOptions כדי לשנות את התוצאה של שמירת מסמך לפורמט PDF."
type: docs
weight: 20
url: /he/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

פורמט PDF הוא פורמט קבוע עמודים פופולרי מאוד בקרב משתמשים ונתמכת על ידי יישומים שונים, כי מסמך PDF נראה אותו הדבר על כל מכשיר. לכן, המרת PDF היא תכונה חשובה. Aspose.Words.

PDF הוא פורמט מורכב. כמה שלבים של חישובים נדרשים בתהליך של המרת מסמך ל- PDF, כולל חישוב הפריסה. מאז שלבים אלה כוללים חישובים מורכבים, הם זמניים. כמו כן, פורמט ה- PDF מורכב מעצמו. יש לו מבנה קובץ ספציפי, מודל גרפיקה ופונטו להטביע. יתר על כן, זה כולל פונקציונליות פלט מורכבת, כגון תגי מבנה מסמך, הצפנה, חתימות דיגיטליות וצורות ניתנות לעריכה.

Aspose.Words מנוע הפריסה מחק את הדרך Microsoft Wordמנוע פריסת העמוד עובד. לכן, Aspose.Words מסמכי הנפקת PDF נראים קרובים ככל האפשר למה שניתן לראות Microsoft Word. לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך בפורמט PDF. אפשרויות אלה ניתן להגדיר על ידי שימוש [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) שיעור, המכיל את התכונות שקובעות כיצד תוצג תפוקה PDF.

כמה דוגמאות לשימוש [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) הם מסופקים למטה.

{{% alert color="primary" %}}

כיום ניתן גם לשמור על פורמטים PDF/A-1 ו- PDF/A-2. שימו לב כי עם פורמט PDF / A, גודל קובץ פלט גדול יותר בגודל קובץ PDF רגיל.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) ו [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) הם מסומנים כמו מיושן.

לקבלת מידע נוסף על PDF/A, ראה את המאמר הבא, " למד תכונות של הדבקה ל- PDF/A".

{{% /alert %}}

## יצירת PDF מסמך עם טפסים מלאים

ניתן גם לייצא טפסים מלאים מ Microsoft Word מסמך לפלט PDF, שיש לו טפסים מלאים במקום טקסט רגיל. השתמש [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) נכס כדי לשמור מסמך PDF עם טפסים מלאים.

שים לב כי בניגוד <span notrans="<span notrans=" Microsoft Word"=""></span>" לפורמט PDF יש מספר מוגבל של אפשרויות לצורות ניתנות לעריכה, כגון תיבת טקסט, תיבת קומבווקס ו- Checkbox. Microsoft Word יש יותר סוגים של טפסים, למשל, לוח השנה. באופן כללי, לא ניתן לחקות באופן מלא Microsoft Word התנהגות ב- PDF לכן, במקרים מורכבים, תפוקה של PDF עשויה להיות שונה ממה שאתה רואה. Microsoft Word.

דוגמה קוד להלן מראה כיצד לשמור מסמך PDF עם טפסים מלאים עם דחיסה Jpeg מוגדרת ואיכות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## ייצוא מבנה המסמכים ונכסי המכס

The The The [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) הנכס מאפשר לך לייצא מבנה מסמך ל- PDF.

מתקני מבנה לוגי PDF מספקים מנגנון לשילוב מידע, לגבי מבנה התוכן של המסמך, לקובץ PDF. Aspose.Words לשמור מידע על המבנה מ Microsoft Word מסמך, כגון פסקאות, רשימות, טבלאות, הערות/הערות, וכו '.

הדוגמה הבאה מציגה כיצד לשמור מסמך לפורמט PDF, שמירה על מבנה המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words כמו כן, מאפשר לך לייצא תכונות מותאמות אישית ל- PDF, אשר מוצג על ידי הדוגמה הבאה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## ייבוא מחוץ ל- Bookmarks and Headings in Output PDF

אם אתה רוצה לייצא סממנים כקווים מנחים בפלט PDF, אתה יכול להשתמש [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) רכוש. נכס זה משקף את רמת ברירת המחדל בתיאור המסמך, שבו Microsoft Word הערות ספרים מוצגות. אם המסמך מכיל סימני ספר בראש / מ"ר המסמך, באפשרותך להגדיר את [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) רכוש [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) או [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) על מנת לציין כיצד הם מייצאים בפלט PDF. סימני הספר ב Headers/footers אינם מייצאים כאשר הערך של [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) הוא [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

לדוגמה הקוד להלן מראה כיצד לייצא סימני ספר מהראש / מטר הראשון של סעיף:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

ה- PDF של דוגמה זו מוצג להלן:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

מתי [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) מוגדר [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) ואת המסמך יש אפילו ומצליחים / רגלים מוזרים או ראש דף ראשון אחר / רגל, סימני ספר מייצאים עבור ראשי התיבות / המרגל הייחודיים הראשונים בסעיף.

ניתן גם לייצא כותרות בפלט PDF, תוך שימוש ב- PDF, [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) רכוש. נכס זה מפרט כמה רמות של כותרות כלולות בתחילת המסמך.

לדוגמה הקוד להלן מראה כיצד לייצא כותרות עם שלוש רמות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

הפלט PDF של דוגמה זו מתואר להלן:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

הערה או ניווט כותרות עשויים להופיע הופעות שונות ב- PDF צופים. יתר על כן, ביישומים מסוימים, סמנים וניווט כותרות אינם זמינים ב UI.

{{% /alert %}}

## תמונות למטה כדי להפחית את גודל המסמך

Aspose.Words מספק יכולת להוריד תמונות על מנת להפחית את גודל ה- PDF של התפוקה, באמצעות שימוש בגודל PDF. [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) רכוש. Downsampling ניתן על ידי ברירת מחדל [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) רכוש.

חשוב לציין כי ניתן גם לקבוע החלטה מסוימת ב [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) רכוש או סף החלטה ב [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) רכוש. במקרה השני, אם רזולוציה התמונה היא פחות מערך הסף, אז ירידה לא תחול.

לדוגמה הקוד להלן מציג כיצד לשנות את ההחלטה של תמונות במסמך PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

ההחלטה מחושבת בהתאם לגודל התמונה האמיתי בעמוד.

## עקבו אחרי Adobe PDF Format

Aspose.Words כמו כן, מאפשר לך לשלוט כיצד גופנים מוטבעים לתוך מסמכי PDF וכתוצאה מכך. פונטים צריכים להיות מוטבעים בכל מסמך PDF של Adobe כדי להבטיח כי המסמך יכול להיות מוצג כראוי על כל מכונה (ראה פרטים נוספים על גרוטאות בסעיף. [שימוש אמיתי סוגפונטים](/words/he/python-net/using-truetype-fonts/)). כברירת מחדל, Aspose.Words מטביעה תת-קבוצה של גופנים המשמשים במסמך ל- PDF שנוצר. במקרה זה, רק glyphs (characters) בשימוש במסמך נשמר ל- PDF.

### מתי להשתמש בפונטים מלאים ומתי להתחיל

יש דרך לציין אפשרות Aspose.Words להטמיע גופנים מלאים. פרטים נוספים, יחד עם כמה יתרונות וחסרונות של כל הגדרה מתוארים בטבלה שמתחת.

| Embedd Fonts Mode |  יתרונות | חסרונות |
|  :-  |  :-  |  :-  |
|  `Full`  | שימושי כאשר אתה רוצה לערוך את PDF וכתוצאה מכך על ידי הוספת או שינוי הטקסט. כל הגופנים כלולים, ומכאן כל glyphs הם נוכחים. | מכיוון שחלק מהפונטים הם גדולים (מגבתים משניים), הטמיעו אותם ללא חתרנות יכולים לגרום לקבצי פלט גדולים. |
|  `Subset`  | סובייקט הוא שימושי אם אתה רוצה לשמור על גודל קובץ הפלט קטן יותר. | <p>המשתמש אינו יכול להוסיף או לערוך טקסט באופן מלא באמצעות הגופן המצופה במסמך PDF. כי לא הכל glyphהגופן קיים.</p>

<p>אם קובצי PDF מרובים נשמרים עם גופנים מסובכים ומקובצים יחד, אז מסמך PDF המשולב עשוי להיות בעל גופן המכיל הרבה תת-קרקעיים מיותרים.</p>
 |

### עקבו אחרי Full Fonts in PDF

The The The [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) הנכס מאפשר לך לציין כיצד Aspose.Words הטמיעו את הפונטים במסמך PDF.

- - כדי להטביע גופנים מלאים במסמך הפלט PDF, להגדיר [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) to to *True*
- - כדי לפתח גופנים בעת שמירת PDF, להגדיר [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) to to *False*

הדוגמה הבאה ממחישה כיצד להטמיע גופנים מלאים במסמך PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

הדוגמה הבאה מראה כיצד להגדיר Aspose.Words כדי להגדיר את הפונטים בפלט PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית עבור דוגמאות אלה [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## כיצד לשלוט על Core Fonts Windows המונחים:

גופנים ו Windows גופנים סטנדרטיים הם ערכות "סטנדרטיות" של גופן, אשר בדרך כלל נוכחים על מכונת היעד או מסופקים על ידי קורא המסמך, ולכן הם אינם צריכים להיות מוטבעים בפלט PDF. על ידי לא הטמעת גופנים אלה, אתה יכול להפחית את הגודל של מסמכי PDF שניתנו ועדיין לשמור על יציבות.

Aspose.Words מספק אפשרויות לבחור כיצד גופנים ייצוא ל- PDF. באפשרותך לבחור להטביע גופנים ליבה וסטנדרטיים לתוך הפלט PDF או לדלג להטביע אותם ולהשתמש בפונטים הליבה סטנדרטיים PDF הליבה או גופן מערכת על מכונת היעד במקום. שימוש באחת האפשרויות הללו בדרך כלל מביא לירידה משמעותית בגודל הקובץ עבור מסמכי PDF שנוצרו על ידי Aspose.Words.

- מכיוון שאפשרויות אלה הן בלעדיות הדדית, עליך לבחור רק אחת בכל פעם.
- בעת שמירת תאימות PDF/A-1, יש להטמיע את כל הפונטים המשמשים במסמך PDF. בעת שמירת הציות, [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) רכוש חייב להיות מוגדר *False* וה [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) רכוש חייב להיות מוגדר [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### עקבו אחרי Core Fonts

את האפשרות להטמיע גופנים ליבה ניתן להשתמש או להיות מוגבל על ידי שימוש [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) רכוש. כאשר הוא מוגדר true, הפונטים הפופולריים ביותר "טיפוס אמיתי" (Base 14 גופן) אינם מוטבעים במסמך PDF הפלט:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

גופנים אלה מוחלפים עם גופן מסוג הליבה המתאים, אשר מסופקים על ידי קורא כאשר PDF נפתח.

הדוגמה המוצגת להלן מראה כיצד להגדיר Aspose.Words כדי למנוע הטמעת גופנים מרכזיים ולתת לקורא להחליף אותם עם PDF סוג 1 גופנים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

באפשרותך להוריד את קובץ התבנית לדוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

מכיוון ש- PDF צופים מספקים גופנים ליבה בכל פלטפורמה נתמכת, אפשרות זו מועילה גם כאשר נדרשת ניידות מסמך גדולה יותר. עם זאת, גופן ליבה עשוי להיראות שונה מפונטים במערכת.

{{% alert color="primary" %}}

הגדרה זו עובדת רק עבור ANSI (Windows-1252) טקסט. כתיבת טקסט לא-ANSI ל- PDF תמיד ידרוש מהגופנים התואמים להיות מוטבעים.

{{% /alert %}}

### מערכת Embedding System Fonts

אפשרות זו יכולה להיות זמינה או זמינה באמצעות שימוש [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). כאשר הנכס הזה מוגדר [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), "Arial" ו-"Times New Roman" true גופן מסוג אינו מוטבע במסמך PDF. במקרה זה, הצופה לקוח מסתמך על הגופנים המותקנים על מערכת ההפעלה של הלקוח. מתי [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) הנכס נקבע [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words אל הטמיעו גופנים.

הדוגמה הבאה מראה כיצד להגדיר Aspose.Words כדי לדלג על הטמעת אריאל וטיימס חדש גופן רומי לתוך מסמך PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

מצב זה הוא שימושי ביותר כאשר אתה רוצה להציג את המסמכים שלך באותו פלטפורמה, שמירה על המראה המדויק של גופנים בפלט PDF.

{{% alert color="primary" %}}

הגדרה זו עובדת רק עבור ANSI (Windows-1252) טקסט. כתיבת טקסט לא-ANSI ל- PDF מחייבת את הפונט המתאים להיות מוטבע.

{{% /alert %}}
