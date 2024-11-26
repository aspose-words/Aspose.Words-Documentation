---
title: להפוך מסמך לתמונה C#
second_title: Aspose.Words עבור .NET
articleTitle: להפוך מסמך לצילום
linktitle: להפוך מסמך לצילום
type: docs
description: "להמיר מסמך לתבנית תמונה (JPG, PNG וכו '). צור מסמך תצוגה מקדימה או ליצור סריקת מסמך כדי לשלוח חשבונית באמצעות C#."
weight: 43
url: /he/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

לפעמים נדרש לקבל תמונה במקום מסמכים בפורמטים אחרים, כגון DOCX או PDF. לדוגמה, אתה צריך להוסיף תצוגה מקדימה של כל דף מסמך לאתר או היישום שלך, או ליצור "scan" של מסמך לשלוח חשבונית. זה כאשר ייתכן שיהיה עליך להמיר מסמך בכל עת. [פורמט עומס נתמך](https://reference.aspose.com/words/net/aspose.words/loadformat/) תמונה, שוב, בכל [תבנית הצלה](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## להמיר לצילום {#convert-to-image-format}

כמו עם כל דוגמאות המרה כבר תיאר, אתה צריך ליצור מסמך חדש או לטעון קיים בכל פורמט נתמך, לעשות את השינויים הדרושים, ולשמור אותו בכל פורמט תמונה זמין, למשל, JPEG, PNG או BMP.

דוגמה לקוד הבא מראה כיצד להמיר PDF ל-JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## המונחים: save Options when Converting to Image {#specify-save-options-when-converting-to-an-image}

Aspose.Words מספק לך את [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) שיעור, אשר נותן יותר שליטה על איך המסמכים נשמרים בפורמטים שונים של תמונות. כמה תכונות של כיתה זו יורש או overload נכסים של שיעורי בסיס כגון [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) או [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), אבל יש גם אפשרויות ספציפיות להצלת תמונות.

ניתן לציין את הדפים להיות מומרים לתבנית תמונה באמצעות פורמט התמונה באמצעות תבנית. [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) רכוש. לדוגמה, זה יכול להיות מיושם אם אתה רק צריך תצוגה מקדימה עבור הראשון או עבור דף מסוים.

כמו כן, ניתן לשלוט על איכות התמונה פלט ואת פורמט פיקסל באמצעות התכונות הבאות - [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), כמו גם להגדיר הגדרות צבע תמונה, באמצעות התכונות הבאות - [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

יש גם תכונות החלות על פורמט מסוים, למשל, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) או [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

הדוגמה הבאה של הקוד מראה כיצד ליצור תצוגה מקדימה של דף המסמך הראשון עם יישום הגדרות נוספות:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
