---
title: המרת מסמך לתמונה ב C++
second_title: Aspose.Words עבור C++
articleTitle: המרת מסמך לתמונה
linktitle: המרת מסמך לתמונה
type: docs
description: "המרת מסמך לפורמט תמונה (JPG, PNG וכו'). צור תצוגה מקדימה של מסמך או צור סריקת מסמכים לשליחת חשבונית."
weight: 43
url: /he/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

לפעמים נדרש לקבל תמונה במקום מסמכים בפורמטים אחרים, כגון DOCX או PDF. לדוגמה, עליך להוסיף תצוגה מקדימה של כל דף מסמך לאתר או ליישום שלך, או ליצור "סריקה" של מסמך כדי לשלוח חשבונית. זה כאשר ייתכן שיהיה עליך להמיר מסמך בכל [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) לתמונה, שוב, בכל [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## המר לפורמט תמונה

כמו בכל דוגמאות ההמרה שכבר תוארו, עליך ליצור מסמך חדש או לטעון מסמך קיים בכל פורמט נתמך, לבצע את השינויים הדרושים ולשמור אותו בכל פורמט תמונה זמין, לדוגמה, JPEG, PNG או BMP.

דוגמת הקוד הבאה מראה כיצד להמיר DOCX ל JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## ציין אפשרויות שמירה בעת המרה לתמונה

Aspose.Words מספק לך את הכיתה [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), המעניקה שליטה רבה יותר על אופן שמירת המסמכים בפורמטים שונים של תמונות. מאפיינים מסוימים של מחלקה זו יורשים או מעמיסים יתר על המידה מאפיינים של כיתות בסיס כגון [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) או [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), אך ישנן גם אפשרויות ספציפיות לשמירת תמונות.

ניתן לציין את הדפים להמרה לפורמט תמונה באמצעות המאפיין [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). לדוגמה, ניתן להחיל אותו אם אתה זקוק לתצוגה מקדימה רק עבור הדף הראשון או עבור דף מוגדר.

ניתן גם לשלוט באיכות תמונת הפלט ובפורמט הפיקסלים באמצעות המאפיינים הבאים– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), כמו גם להגדיר הגדרות צבע תמונה, באמצעות המאפיינים הבאים– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

יש גם מאפיינים החלים על פורמט מסוים, למשל, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) או [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

דוגמת הקוד הבאה מראה כיצד ליצור תצוגה מקדימה של דף המסמך הראשון עם החלת הגדרות נוספות:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
