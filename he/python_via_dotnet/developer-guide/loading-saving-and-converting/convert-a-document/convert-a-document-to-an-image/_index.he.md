---
title: להפוך מסמך לצילום
second_title: Aspose.Words עבור Python via .NET
articleTitle: להפוך מסמך לצילום
linktitle: להפוך מסמך לצילום
type: docs
description: "להמיר מסמך לתבנית תמונה (JPG, PNG וכו '). צור מסמך תצוגה מקדימה או ליצור סריקת מסמך כדי לשלוח חשבונית באמצעות Python."
weight: 43
url: /he/python-net/convert-a-document-to-an-image/
---

לפעמים נדרש לקבל תמונה במקום מסמכים בפורמטים אחרים, כגון DOCX או PDF. לדוגמה, אתה צריך להוסיף תצוגה מקדימה של כל דף מסמך לאתר או היישום שלך, או ליצור "scan" של מסמך לשלוח חשבונית. זה כאשר ייתכן שיהיה עליך להמיר מסמך בכל עת. [פורמט עומס נתמך](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) תמונה, שוב, בכל [תבנית הצלה](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## המונחים: Image Format {#convert-to-image-format}

כמו עם כל דוגמאות המרה כבר תיאר, אתה צריך ליצור מסמך חדש או לטעון קיים בכל פורמט נתמך, לעשות את השינויים הדרושים, ולשמור אותו בכל פורמט תמונה זמין, למשל, JPEG, PNG או BMP.

דוגמה לקוד הבא מראה כיצד להמיר PDF ל-JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## המונחים: save Options בעת המרת תמונה {#specify-save-options-when-converting-to-an-image}

Aspose.Words מספק לך את [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) שיעור, אשר נותן יותר שליטה על איך המסמכים נשמרים בפורמטים שונים של תמונות. כמה תכונות של כיתה זו יורש או overload נכסים של שיעורי בסיס כגון [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) או [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), אבל יש גם אפשרויות ספציפיות להצלת תמונות.

ניתן לציין את הדפים להיות מומרים לתבנית תמונה באמצעות פורמט התמונה באמצעות תבנית. [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) רכוש. לדוגמה, זה יכול להיות מיושם אם אתה רק צריך תצוגה מקדימה עבור הראשון או עבור דף מסוים.

כמו כן, ניתן לשלוט על איכות התמונה פלט ואת פורמט פיקסל באמצעות התכונות הבאות - [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), כמו גם להגדיר הגדרות צבע תמונה, באמצעות התכונות הבאות - [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

יש גם תכונות החלות על פורמט מסוים, למשל, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) או [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

הדוגמה הבאה של הקוד מראה כיצד ליצור תצוגה מקדימה של דף המסמך הראשון עם יישום הגדרות נוספות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
