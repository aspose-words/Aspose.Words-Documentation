---
title: עבודה עם מסמך טקסט
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם מסמך טקסט
linktitle: עבודה עם מסמך טקסט
description: "לעבוד עם מסמך טקסט ולשנות את אובייקטים באמצעות Python."
type: docs
weight: 430
url: /he/python-net/working-with-text-document/
---

במאמר זה, נלמד אילו אפשרויות יכולות להיות שימושיות עבור עבודה עם מסמך טקסט דרך Aspose.Words. שימו לב כי זו אינה רשימה מלאה של אפשרויות זמינות, אלא רק דוגמא לעבודה עם חלק מהן.

## תגית: Bi-Directional מארקס

אתה יכול להשתמש [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) רכוש כדי לציין אם להוסיף סימנים דו-כי-כיוניים לפני כל BDi לרוץ כאשר ייצוא בפורמט טקסט רגיל. Aspose.Words הוסף את האופי Unicode "Rnight-TO-LEFT MARK" (U+200F) לפני כל אחד מהם [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) בטקסט. אפשרות זו תואמת את האפשרות "Add bi-directional" בדיאלוג של MS Word, כאשר אתה מייצא לתבנית טקסט פשוטה. שימו לב כי הוא מופיע בדיאלוג רק אם יש שפות עריכת ערבית או עברית נוספו ב-MS Word.

דוגמה לקוד הבא מראה כיצד להשתמש [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) רכוש. ערך ברירת המחדל של הנכס הזה הוא `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## פריטים נבחרים במהלך טעינה

Aspose.Words ניתן לייבא פריט רשימה של קובץ טקסט כמספרי רשימה או טקסט פשוט במודל אובייקט המסמך שלה. The The The [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) הנכס מאפשר לציין כיצד פריטים ברשימה ממוספרים מוכרים כאשר מסמך מיובא מתבנית טקסט פשוטה:

* אם אפשרות זו נקבעת `True`, חללים לבנים משמשים גם כמספר מספר רשימה: אלגוריתם זיהוי רשימה לסגנון הערבי מספר (1., 1.1.2).
* אם אפשרות זו נקבעת `False`, אלגוריתם זיהוי מציין את פסקאות הרשימה, כאשר מספרים מספרים מסתיים עם אוט, סמלים הימניים או הקליעיים (כגון "ד", "או").

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## אזורי מוביל וטיול במהלך טעינה TXT

אתה יכול לשלוט על הדרך של טיפול בחללים מובילים וכבישים במהלך טעינה TXT. החללים המובילים יכולים להיות מזורים, נשמרים או מומרים למקומות עכורים וכבישים יכולים להיות מפורצים או נשמרים.

הדוגמה הבאה של הקוד מראה כיצד לקצץ חללים מובילים וכבישים תוך ייבוא קובץ TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## מסמך Detect כיוון טקסט

Aspose.Words מספק [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) רכוש [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) שיעור כדי לזהות את כיוון הטקסט (RTL / LTR) במסמך. נכס זה קובע או מקבל הוראות טקסט מסמכים הניתנים ב [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) אזהרה. ערך ברירת המחדל נשאר נכון.

הדוגמה הבאה של הקוד מראה כיצד לזהות כיוון טקסט של המסמך תוך ייבוא קובץ TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## ייצוא Header and Footer in Output TXT

אם אתה רוצה לייצא Header ו Footer במסמך ProT, אתה יכול להשתמש [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) רכוש. נכס זה מפרט את הדרך שבה ראשים והולכי רגל מיוצאים לתבנית טקסט פשוטה.

הדוגמה הבאה של הקוד מראה כיצד לייצא ראשים והולכי רגל לתבנית טקסט פשוטה:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## מכירת הרשימה ב Output TXT

Aspose.Words הציג [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) שיעור המאפשר לציין כיצד רמות הרשימה מוזנחות תוך הייצוא לתבנית טקסט פשוטה. בזמן עבודה עם [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), The The [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) הנכס מסופק כדי לציין את הדמות שיש להשתמש עבור רמות הרשימה indenting וספירה המציין כמה דמויות להשתמש כ indentation לרמה אחת של רשימה. ערך ברירת המחדל לקניין אופי הוא '\0' המציין כי אין רתיעה. עבור ספירת רכוש, ערך ברירת המחדל הוא 0, כלומר לא התמדה.

### המונחים: tab Character

הדוגמה הבאה של הקוד מראה כיצד לייצא את רמות הרשימה באמצעות דמויות לשוניות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### שימוש בטבע

לדוגמה הקוד הבא מראה כיצד לייצא את רמות הרשימה באמצעות דמויות חלל:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

