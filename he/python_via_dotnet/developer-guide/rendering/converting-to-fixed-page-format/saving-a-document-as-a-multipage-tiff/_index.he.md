---
title: שמירת מסמך כ- Multipage TIFF
second_title: Aspose.Words עבור Python via .NET
articleTitle: שמירת מסמך כ- Multipage TIFF
linktitle: שמירת מסמך כ- Multipage TIFF
description: "להמיר מסמך ל-iFF Multi-Page באמצעות Python. כדי לקבוע כיצד המסמך מוצג על התמונה שאתה צריך לציין אפשרויות נוספות: החלטה, מספר דפים, חיבת תמונות וכו '."
type: docs
weight: 30
url: /he/python-net/saving-a-document-as-a-multipage-tiff/
---

כאשר אתה עובד עם מסמכים, אתה לעתים קרובות צריך להמיר את המסמך שלך לקובץ תמונות raster (s). זה רלוונטי במיוחד אם אתה צריך להציג את המסמך שלך בפורמט קריא וניתן להדפיס, אבל לא ניתן לערוך. לדוגמה, באפשרותך להשתמש בתמונה של הדף הראשון של המסמך שלך כתצוגה מקדימה. מאמר זה מתאר כיצד להמיר מסמך לדימוי raster באמצעות הדוגמה של פורמט TIFF - אחד פורמטי התמונה הפופולריים יותר.

## המונחים: Multi-Page TIFF

In In In Aspose.Words, המרה מ- DOC ל- TIFF יכולה להתבצע עם קו אחד של קוד, על ידי פשוט להעביר את הנתיב "save to" ואת הרחבת הקובץ הרלוונטית ל- [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטה. The The The [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) השיטה באופן אוטומטי שואבת את [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) מהסיומת שם הקובץ המפורטת בדרך. הדוגמה הבאה מציגה כיצד להמיר מסמך לתבנית TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## אפשרויות נוספות בעת Rendering TIFF

לעתים קרובות עליך לציין אפשרויות נוספות, המשפיעות על התוצאה. לשם כך, השתמש [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) שיעור, המכיל תכונות הקובעות כיצד המסמך מוצג על התמונה. ניתן לציין את הפעולות הבאות:

- שמור פורמט כדי לקבוע את רשימת האפשרויות הזמינות ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- החלטה ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- מספר דפים (מספר דפים)[page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- הגדרות צבע ותאורה ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- איכות תמונה (צילום)[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- שיטות המשמשות לשילוב התמונה ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- פורמט Pixel עבור תמונות שנוצרו[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- - Windows metafils טיפול Aspose.Words ()[metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- אפשרויות נוספות שניתן לראות [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) הכיתה

הדוגמה הבאה מראה כיצד להמיר את DOC ל- TIFF עם אפשרויות מוגדרות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## תגית: TIFF Binarization

תמונה TIFF ניתן לשמור בפורמט 1bpp B / w על ידי הגדרת התמונה [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) רכוש [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) סוג פורמט פיקסל, ואת [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) רכוש או [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) או [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

לצילום תמונות, Aspose.Words השתמש בשיטה הפשוטה ביותר - סף. שיטה זו הופכת תמונה TIFF בקנה מידה אפור לתוך תמונה בינארית, באמצעות ערך סף. לכן, כאשר מסמך צריך להיות מומר לתבנית קובץ TIFF, ניתן לקבל או להגדיר את הסף ל- TIFF binarization דרך ה- TIFF. [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) רכוש. ערך ברירת המחדל לנכס זה נקבע ל- 128, וככל שהערך הזה גבוה יותר, כך התמונה כהה יותר.

הדוגמה הבאה מראה כיצד לבצע את ה- TIFF binarization עם סף מוגדר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

להלן ניתן להשוות תמונות על אשר TIFF binarization נעשה בערכי סף שונים:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
