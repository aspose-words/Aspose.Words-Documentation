---
title: ציין אפשרויות עיבוד בעת המרה ל - PDF
second_title: Aspose.Words עבור C++
articleTitle: ציין אפשרויות עיבוד בעת המרה ל - PDF
linktitle: ציין אפשרויות עיבוד בעת המרה ל - PDF
description: "המרת מסמך ל PDF עם אפשרויות מתקדמות באמצעות C++. השתמש ב PdfSaveOptions כדי לשנות את התוצאה של שמירת מסמך ל PDF פוּרמָט."
type: docs
weight: 30
url: /he/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

פורמט PDF הוא פורמט עמוד קבוע הפופולרי מאוד בקרב משתמשים ונתמך באופן נרחב על ידי יישומים שונים מכיוון שמסמך PDF נראה זהה בכל מכשיר. מסיבה זו, המרה ל PDF היא תכונה חשובה של Aspose.Words.

PDF הוא פורמט מורכב. נדרשים מספר שלבי חישובים בתהליך המרת מסמך ל - PDF, כולל חישוב הפריסה. מכיוון ששלבים אלה כוללים חישובים מורכבים, הם גוזלים זמן. כמו כן, פורמט PDF מורכב למדי בפני עצמו. יש לו מבנה קובץ ספציפי, מודל גרפי והטבעת גופן. יתר על כן, הוא כולל כמה פונקציונליות פלט מורכבת, כגון תגי מבנה מסמכים, הצפנה, חתימות דיגיטליות וטפסים הניתנים לעריכה.

Aspose.Words מנוע הפריסה מחקה את האופן שבו מנוע פריסת העמודים של Microsoft Word עובד. לכן, Aspose.Words גורם PDF מסמכי הפלט נראים קרוב ככל האפשר למה שאתה יכול לראות ב Microsoft Word. לפעמים יש צורך לציין אפשרויות נוספות, אשר יכולות להשפיע על התוצאה של שמירת מסמך בפורמט PDF. ניתן לציין אפשרויות אלה על ידי שימוש בכיתה [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), המכילה את המאפיינים הקובעים כיצד יוצג הפלט PDF.

כמה דוגמאות לשימוש **PdfSaveOptions** מובאות להלן.

{{% alert color="primary" %}}

נכון לעכשיו, אתה יכול לשמור ל PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, ו PDF/UA-1 פורמטים. השתמש בספירה [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) כדי להגדיר את רמת תאימות התקנים PDF. שים לב שעם PDF/A פוּרמָט, גודל קובץ פלט גדול מגודל קובץ רגיל PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) ו [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) מסומנים כמיושנים.

למידע נוסף על PDF/A, עיין במאמר הבא,"למד תכונות של המרה ל PDF/A".

{{% /alert %}}

## יצירת מסמך PDF עם טפסים הניתנים למילוי

ניתן גם לייצא טפסים הניתנים למילוי ממסמך Microsoft Word לפלט PDF, שיש בו טפסים הניתנים למילוי במקום טקסט רגיל. השתמש במאפיין [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) כדי לשמור מסמך כ PDF עם טפסים הניתנים למילוי.

שימו לב שבניגוד ל Microsoft Word, לפורמט PDF יש מספר מוגבל של אפשרויות לטפסים הניתנים לעריכה, כגון תיבת טקסט, combobox ו checkbox. Microsoft Word יש יותר סוגים של טפסים, למשל, בורר תאריך לוח שנה. באופן כללי, לא ניתן לחקות באופן מלא את התנהגות Microsoft Word ב PDF. לכן, במקרים מורכבים מסוימים, PDF הפלט עשוי להיות שונה ממה שאתה רואה ב Microsoft Word.

דוגמת הקוד שלהלן מציגה כיצד לשמור מסמך בשם PDF עם טפסים הניתנים למילוי עם דחיסה ואיכות של ג ' יפג שצוין:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## ייצוא מבנה מסמכים ומאפיינים מותאמים אישית

המאפיין [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) מאפשר לך לייצא מבנה מסמך לפלט PDF.

PDF מתקני מבנה לוגי מספקים מנגנון לשילוב מידע, בנוגע למבנה תוכן המסמך, בקובץ PDF. Aspose.Words שומר מידע על המבנה ממסמך Microsoft Word, כגון פסקאות, רשימות, טבלאות, הערות שוליים/הערות סיום וכו'.

הדוגמה הבאה מראה כיצד לשמור מסמך בפורמט PDF, תוך שמירה על מבנה המסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words מאפשר לך גם לייצא מאפיינים מותאמים אישית של מסמך ל PDF, מה שמודגם בדוגמה הבאה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## ייצוא קווי מתאר מסימניות וכותרות בפלט PDF

אם ברצונך לייצא סימניות כקווי מתאר בפלט PDF, תוכל להשתמש במאפיין [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). מאפיין זה מציין את רמת ברירת המחדל במתווה המסמך, שבה מוצגות סימניות Microsoft Word. אם המסמך מכיל סימניות בכותרת העליונה / התחתונה של המסמך, באפשרותך להגדיר את המאפיין [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) ל [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) או [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) כדי לציין כיצד הם מיוצאים בפלט PDF. הסימניות בכותרות עליונות / תחתונות אינן מיוצאות כאשר הערך של **HeaderFooterBookmarksExportMode** הוא [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

דוגמת הקוד שלהלן מציגה כיצד לייצא סימניות מהכותרת העליונה / התחתונה הראשונה של קטע:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

הפלט PDF של הדוגמה הזו מוצג למטה:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

כאשר **HeaderFooterBookmarksExportMode** מוגדר לראשון ולמסמך יש כותרות עליונות / תחתונות זוגיות ומוזרות או כותרת עליונה/תחתונה אחרת בעמוד הראשון, הסימניות מיוצאות לכותרות/תחתונות הייחודיות הראשונות בקטע.

ניתן גם לייצא כותרות בפלט PDF, באמצעות המאפיין [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). מאפיין זה מציין כמה רמות של כותרות כלולות במתווה המסמך.

דוגמת הקוד שלהלן מראה כיצד לייצא כותרות בשלוש רמות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

הפלט PDF של הדוגמה הזו מתואר להלן:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

סימניה או ניווט בכותרת עשויים להיות בעלי הופעות שונות בצופים שונים PDF. יתר על כן, ביישומים מסוימים, סימניות וניווט כותרות אינם זמינים ב UI.

{{% /alert %}}

## דגימת תמונות כדי להקטין את גודל המסמך

Aspose.Words מספק יכולת לדגום תמונות כדי להקטין את הפלט PDF גודל, באמצעות המאפיין [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). הדגימה למטה מופעלת כברירת מחדל במאפיין [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

שימו לב כי ניתן גם להגדיר רזולוציה ספציפית במאפיין [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/), או סף רזולוציה במאפיין [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). במקרה השני, אם רזולוציית התמונה קטנה מערך הסף, אז הדגימה למטה לא תחול.

דוגמת הקוד שלהלן מציגה כיצד לשנות את רזולוציית התמונות בפלט PDF מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

הרזולוציה מחושבת בהתאם לגודל התמונה האמיתי בדף.

## הטמעת גופנים בפורמט אדובי PDF

Aspose.Words גם מאפשר לך לשלוט איך גופנים מוטבעים לתוך המסמכים PDF וכתוצאה מכך. יש להטמיע גופנים בכל מסמך אדובי PDF כדי להבטיח שניתן יהיה להציג את המסמך בצורה נכונה בכל מכונה (ראה פרטים נוספים על עיבוד גופנים בסעיף [שימוש בגופנים TrueType ](/words/cpp/using-truetype-fonts/)). כברירת מחדל, Aspose.Words מטביע קבוצת משנה של גופנים המשמשים במסמך לתוך PDF שנוצר. במקרה זה, רק הגליפים (התווים) המשמשים במסמך נשמרים ב PDF.

### מתי להשתמש בגופנים מלאים ומתי תת-קבוצה

יש דרך לציין אפשרות עבור Aspose.Words להטמעת גופנים מלאים. פרטים נוספים, יחד עם כמה יתרונות וחסרונות של כל הגדרה מתוארים בטבלה הבאה.

| מצב הטמעת גופנים | יתרונות | חסרונות |
| :- | :- | :- |
| `Full` | שימושי כאשר ברצונך לערוך את התוצאה PDF מאוחר יותר על ידי הוספה או שינוי של הטקסט. כל הגופנים כלולים, ולכן כל הגליפים נמצאים. | מכיוון שחלק מהגופנים גדולים (כמה מגה-בייט), הטמעתם ללא תת-קבוצה עלולה לגרום לקבצי פלט גדולים. |
| `Subset` | הגדרת משנה שימושית אם ברצונך להקטין את גודל קובץ הפלט. | <p>המשתמש אינו יכול להוסיף או לערוך את הטקסט באופן מלא באמצעות הגופן המוגדר במסמך הפלט PDF. הסיבה לכך היא שלא כל הגליפים של הגופן קיימים.</p><p>אם מספר PDFs נשמר עם גופן תת-קבוצה ומורכב יחד, אז המסמך המשולב PDF עשוי להיות בעל גופן המכיל הרבה תת-קבוצות מיותרות.</p> |

### הטמעת גופנים מלאים ב PDF

המאפיין [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) מאפשר לך לציין כיצד Aspose.Words מטביע גופנים בפלט PDF מסמך.

- כדי להטמיע גופנים מלאים במסמך הפלט PDF, הגדר **EmbedFullFonts** לאמת
- לגופני משנה בעת שמירה ל PDF, הגדר **EmbedFullFonts** לשקר

הדוגמה הבאה מדגימה כיצד להטמיע גופנים מלאים במסמך הפלט PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

הדוגמה הבאה מדגימה כיצד להגדיר Aspose.Words לגופני תת-קבוצה בפלט PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית עבור דוגמאות אלה מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## כיצד לשלוט על הטמעת גופני ליבה ו Windows גופנים סטנדרטיים

גופני ליבה ו Windows גופנים סטנדרטיים הם קבוצות הגופנים "הסטנדרטיות", הנמצאות בדרך כלל במכונת היעד או מסופקות על ידי קורא המסמכים, ולכן אין צורך להטמיע אותן בפלט PDF. על ידי אי הטמעת גופנים אלה, תוכל להקטין את גודל המסמכים שניתנו PDF ובכל זאת לשמור על ניידות.

Aspose.Words מספק אפשרויות לבחירת אופן ייצוא הגופנים ל PDF. אתה יכול לבחור להטמיע גופנים ליבה וגופנים סטנדרטיים בפלט PDF או לדלג על הטבעתם ולהשתמש במקום זאת בגופנים ליבה סטנדרטיים PDF או בגופני מערכת במחשב היעד. שימוש באחת מהאפשרויות הללו בדרך כלל מביא להפחתת גודל קובץ משמעותית עבור PDF מסמכים שנוצרו על ידי Aspose.Words.

- מכיוון שאפשרויות אלה סותרות זו את זו, עליך לבחור רק אחת בכל פעם.
- בעת שמירה עם תאימות PDF/A-1, יש להטמיע את כל הגופנים המשומשים במסמך PDF. בעת שמירה עם תאימות זו, יש להגדיר את המאפיין [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) כזוי ולהגדיר את המאפיין [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) ל [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### הטמעת גופני ליבה

ניתן להפעיל או להשבית את האפשרות להטמיע גופני ליבה באמצעות המאפיין `UseCoreFonts`. כאשר הוא מוגדר כנכון, הגופנים הפופולריים ביותר "סוג אמיתי" (גופנים בסיסיים 14) אינם מוטבעים במסמך הפלט PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

גופנים אלה מוחלפים בגופני הליבה המתאימים מסוג 1, המסופקים על ידי קורא כאשר PDF נפתח.

הדוגמה המוצגת להלן מראה כיצד להגדיר Aspose.Words כדי למנוע הטמעת גופני ליבה ולתת לקורא להחליף אותם בגופני PDF סוג 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית עבור דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

מכיוון שצופים PDF מספקים גופני ליבה בכל פלטפורמה נתמכת, אפשרות זו שימושית גם כאשר נדרשת ניידות מסמכים גדולה יותר. עם זאת, גופני ליבה עשויים להיראות שונים מגופני מערכת.

{{% alert color="primary" %}}

הגדרה זו פועלת רק עבור ANSI (Windows-1252) קידוד טקסט. כתיבת טקסט שאינוANSI ל PDF תמיד תדרוש את הטמעת הגופנים המתאימים.

{{% /alert %}}

### הטמעת גופני מערכת

ניתן להפעיל או להשבית אפשרות זו באמצעות המאפיין [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). כאשר תכונה זו מוגדרת ל [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), הפונטים "אריאל" ו "טיימס ניו רומן" לא מוטמעים במסמך PDF. במקרה זה, צופה הלקוח מסתמך על הגופנים המותקנים במערכת ההפעלה של הלקוח. כאשר המאפיין **FontEmbeddingMode** מוגדר ל [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words אל תטמיע גופנים כלשהם.

הדוגמה שלהלן מראה כיצד להגדיר Aspose.Words לדלג על הטמעת גופנים רומיים חדשים של אריאל וטיימס למסמך PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

מצב זה שימושי ביותר כאשר ברצונך להציג את המסמכים שלך באותה פלטפורמה, תוך שמירה על המראה המדויק של הגופנים בפלט PDF.

{{% alert color="primary" %}}

הגדרה זו פועלת רק עבור ANSI (Windows-1252) קידוד טקסט. כתיבת טקסט שאינוANSI ל PDF דורשת את ההטמעה של הגופן המתאים.

{{% /alert %}}
