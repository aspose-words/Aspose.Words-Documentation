---
title: "המונחים: save Options Python"
second_title: Aspose.Words עבור Python via .NET
articleTitle: "המונחים: save Options"
linktitle: "המונחים: save Options"
description: "בקרה מדויקת יותר על תהליך החיסכון באמצעות Python."
type: docs
weight: 10
url: /he/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

בעת שמירת מסמך, באפשרותך להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) מעמד, המאפשר שליטה מדויקת יותר של תהליך החיסכון. יש עומסים של [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטה שמקבלת [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) אובייקט - זה צריך להיות אובייקט של מעמד נגזר מן [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) מעמד. לכל פורמט שמור יש מעמד מתאים המחזיק אפשרויות לתבנית זו, לדוגמה, יש. [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) שמירה על פורמט PDF או [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) להציל תמונה מאמר זה מספק דוגמאות של עבודה עם כמה אפשרויות כיתות נגזרות [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

לדוגמה הקוד הבא מראה כיצד להגדיר את אפשרויות החיסכון לפני שמירת המסמך ל- HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

המאמר מתאר כמה תכונות אתה יכול לשלוט בעת שמירת מסמך.

## הצפנה מסמך עם סיסמה

השתמש **סיסמה** רכוש כדי לקבל או להגדיר סיסמה עבור מסמך מוצפן. השתמש **סיסמה** נכס של הכיתה המקבילה לעבוד עם פורמט המסמך שנבחר.

לדוגמה, בעת שמירת מסמך DOC או DOT פורמט, השתמש [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) רכוש [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד להגדיר סיסמה להצפין מסמך באמצעות שיטת הצפנה של ה-RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

בעת שמירת מסמך לתבנית Docx, השתמש [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) רכוש [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) מעמד.

הדוגמה הקודית הבאה מראה כיצד לטעון ולחסוך דוקקס מוצפנת עם סיסמה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

לא כל הפורמטים תומכים הצפנה והשימוש **סיסמה** רכוש.

## עדכון זמן יצירת המסמכים

Aspose.Words מספק יכולת להשתמש [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) לרכוש או להגדיר את תאריך יצירת המסמך ב- UTC. אתה יכול גם לעדכן את הערך הזה לפני שמירת השימוש [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) אפשרות.

דוגמה לקוד הבא מראה כיצד לעדכן את זמן יצירת המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## עדכון אחרון

Aspose.Words מספק יכולת להשתמש [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) לרכוש או לקבוע ערך לקבוע אם [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) הנכס מעודכן לפני החיסכון.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הנכס הזה ולהציל את המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## שמור שחור ולבן תמונה עם אחד bit Per Pixel

כדי לשלוט באפשרויות שמירת תמונות, [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) הכיתה משמשת. לדוגמה, אתה יכול להשתמש [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) רכוש להגדיר את פורמט פיקסל עבור התמונות שנוצרו. אנא שימו לב כי פורמט פיקסל של תמונת הפלט עשוי להיות שונה מהערך הסט בגלל העבודה של סקיה.

הדוגמה הבאה של הקוד מראה כיצד להציל תמונה שחורה ולבן עם קצת לתבנית פיקסל:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
