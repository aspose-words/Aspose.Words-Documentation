---
title: המרת מסמך ל-HTML
second_title: Aspose.Words עבור Python via .NET
articleTitle: להמיר מסמך ל- HTML, MHTML או EPUB
linktitle: להמיר מסמך ל- HTML, MHTML או EPUB
description: "להמיר מסמך כמעט מכל פורמט ל- HTML או MHTML, כמו גם לתבנית EPUB באמצעות Python. ניתן גם לציין אפשרויות הצלה לניהול מסמך הפלט."
type: docs
weight: 20
url: /he/python-net/convert-a-document-to-html-mhtml-or-epub/
---

מסמכים ב- HTML ו- MHTML Flow-layout הם גם מאוד פופולריים וניתן להשתמש בהם בכל פלטפורמה באינטרנט. מסיבה זו, המרת מסמכים ל- HTML ו- MHTML היא תכונה חשובה. Aspose.Words.

EPUB (קיצור "פרסום אלקטרוני") הוא פורמט מבוסס HTML המשמש בדרך כלל להפצת ספרים אלקטרוניים. פורמט זה נתמך במלואו Aspose.Words לייצא ספרים אלקטרוניים שמתאימים לרוב מכשירי הקריאה.

## המרת מסמך

עבור המרה פשוטה ל- HTML, MHTML או EPUB, אחד [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שימוש overloads. באפשרותך לשמור את המסמך לקובץ או לזרם ולהגדיר במפורש את מסמך הפלט לשמור פורמט או להגדיר אותו מהסיומת שם הקובץ.

הדוגמה הבאה מראה כיצד להמיר את DOCX ל-HTML עם ציון פורמט הצלה:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

כדי להמיר מסמך MHTML או EPUB, השתמש [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) או [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) בהתאמה.

## המרת מסמך עם מידע עגול

פורמט HTML אינו תומך ברבים Microsoft Word תכונות, ואם אנחנו צריכים לשחזר מודל מסמך קרוב ככל האפשר למקור, אנו צריכים לחסוך מידע נוסף בתוך קובץ HTML. מידע זה נקרא גם "מידע מקיף". למטרה זו, Aspose.Words מספק את היכולת לייצא מידע עגול בעת שמירת HTML, MHTML, או EPUB באמצעות שימוש **לייצא_roundtrip_מידע** רכוש. שמירת המידע העגול מאפשר לשחזר תכונות מסמך כגון כרטיסיות, הערות, ראשים, ו Footers במהלך מסמכי הטעינה של הפורמטים המפורטים בחזרה לתוך a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) אובייקט.

ערך ברירת המחדל הוא *True* עבור HTML ו *False* MHTML ו- EPUB:

- מתי *True*, המידע העגול ייצוא כמו - Aw - * תכונות CSS של רכיבי HTML המקבילים
- מתי *False*, אין מידע עגול כדי להיות פלט לתוך קבצים המיוצרים

דוגמה הקוד הבא מראה כיצד לייצא מידע עגול בעת המרת מסמך מ- DOCX ל- HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## המונחים: save Options when Conversion to HTML

Aspose.Words מאפשר להמיר מסמך Word ל- HTML באמצעות ברירת מחדל או אפשרויות תחזוקה מותאמות אישית. כמה דוגמאות של אפשרויות חיסכון מותאם אישית מתוארות להלן.

### עקבו אחרי Saving Resources

שימוש Aspose.Words אנו יכולים לציין תיקיה פיזית שבה כל המשאבים, כגון תמונות, גופן ו- CSS חיצוני, נשמרים כאשר מסמך מומר ל- HTML. כברירת מחדל, זהו מחרוזת ריקה.

מציג את [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) הנכס הוא הדרך הפשוטה ביותר לקבוע את התיקיה שבה יש לכתוב את כל המשאבים. אנו יכולים להשתמש בתכונות אישיות, כגון [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) אשר חוסך גופנים לתיקיה המפורטת [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) זה חוסך תמונות לתיקיה מסוימת. כאשר דרך יחסית מוגדרת, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) ו [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) מתייחס לתיקיה שבה ממוקם ה-code. [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ו [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) מתייחס לתיקיית הפלט שבה ממוקם מסמך HTML.

בדוגמה זו, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) מתאר את הדרך היחסית. נתיב זה מתייחס לתיקיית הפלט שבה נשמר מסמך HTML. הערך של [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) הנכס משמש ליצירת כתובות לכל המשאבים.

דוגמה לקוד הבא מראה כיצד לעבוד עם תכונות אלה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

באמצעות [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) נכס, אנו יכולים גם לציין את שם התיקיה המשמש לבניית URIs של כל המשאבים הכתובים במסמך HTML. זוהי הדרך הפשוטה ביותר לציין כיצד URIs צריך להיות מיוצר עבור כל קבצי משאבים. אותו מידע ניתן להציג עבור תמונות וגופנים בנפרד באמצעות [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) ו [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) תכונות, בהתאמה.

עם זאת, אין רכוש פרטי עבור CSS. ההתנהגות של [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) ו [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) תכונות אינן משתנות. תגית: The [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) הנכס משמש גם כדי לציין שם תיקיה ושם הקובץ.

- - [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) יש עדיפות נמוכה יותר מאשר תיקיות המפורטות באמצעות [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), ו [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). אם התיקיה המפורטת בתיקיה [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) לא קיים, הוא ייברא באופן אוטומטי.
- - [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) יש עדיפות נמוכה יותר מאשר [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) ו [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). אם [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) ריק, הערך של [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) הנכס ישמש ליצירת משאב URIs. אם [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) הוא מוגדר ל" (Dot), משאב URIs רק מכיל שמות קבצים מבלי לציין דרך.

### המונחים: Base64 Encoding Fonts Resources

Aspose.Words מספק את היכולת לציין אם משאבים גופניים צריך להיות מוטבע לתוך HTML בבסיס64 encodings. כדי לבצע זאת, השתמש [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) רכוש – זהו הרחבה של [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) רכוש. כברירת מחדל, ערכו הוא *False*, ופונטים כתובים בקבצים נפרדים. אבל אם אפשרות זו נקבעת *True*, גופנים יוטבעו לתוך ה- CSS של המסמך בבסיס64 encoding. The The The [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) רכוש משפיע רק על פורמט HTML ואינו משפיע על EPUB ו- MHTML.

הדוגמה הבאה לקוד מראה כיצד לייצא מגופנים ממוקודים ל-HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## עקבו אחרי EPUB

Aspose.Words מאפשר להמיר מסמך Word לתוך פורמט EPUB באמצעות ברירת מחדל או אפשרויות שמירת מותאם אישית. אתה יכול לציין מספר אפשרויות על ידי עובר מקרה של [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) אל [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך Word ל- EPUB עם מפרט כמה אפשרויות תחזוקה מותאמות אישית:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

