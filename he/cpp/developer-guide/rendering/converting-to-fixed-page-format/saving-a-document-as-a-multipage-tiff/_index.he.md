---
title: שמירת מסמך כריבוי עמודים TIFF ב C++
second_title: Aspose.Words עבור C++
articleTitle: שמירת מסמך כעמוד מרובה TIFF
linktitle: שמירת מסמך כעמוד מרובה TIFF
description: "המרת מסמך למספר עמודים TIFF באמצעות C++. כדי לקבוע כיצד המסמך מוצג בתמונה עליך לציין אפשרויות נוספות: רזולוציה, מספר עמודים, בינריזציה של תמונה וכו'."
type: docs
weight: 40
url: /he/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

בעת עבודה עם מסמכים, לעתים קרובות עליך להמיר את המסמך לקובץ תמונות סריקה. זה רלוונטי במיוחד אם עליך להציג את המסמך שלך בפורמט קריא וניתן להדפסה, אך לא ניתן לעריכה. לדוגמה, תוכל להשתמש בתמונת סריקה של העמוד הראשון במסמך כתצוגה מקדימה. מאמר זה מתאר כיצד להמיר מסמך לתמונת סריקה באמצעות הדוגמה של פורמט TIFF - אחד מתבניות התמונה הפופולריות יותר.

## המרה DOC לריבוי עמודים TIFF

ב Aspose.Words, המרה מ DOC ל TIFF ניתן לבצע עם שורת קוד אחת, פשוט על ידי העברת נתיב "שמור ל" ואת סיומת הקובץ הרלוונטית לשיטת [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). השיטה **Save** שואבת אוטומטית את `SaveFormat` מסיומת שם הקובץ שצוינה בנתיב. הדוגמה הבאה מדגימה כיצד להמיר מסמך לפורמט TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## ציון אפשרויות נוספות בעת עיבוד TIFF

לעתים קרובות עליך לציין אפשרויות נוספות, המשפיעות על תוצאת העיבוד. למטרה זו, השתמש בכיתה [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), המכילה מאפיינים הקובעים כיצד המסמך מוצג בתמונה. אתה יכול לציין את הדברים הבאים:

- שמור פורמט כדי לקבוע את רשימת האפשרויות הזמינות ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- רזולוציה ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- מספר עמודים ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- הגדרות צבע ותאורה([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- איכות תמונה ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- שיטה המשמשת לבינריזציה של התמונה ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- פורמט פיקסל לתמונות שנוצרו ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows מטאפילים טיפול על ידי Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- אפשרויות נוספות שניתן לראות בכיתה **ImageSaveOptions**

הדוגמה הבאה מראה כיצד להמיר DOC ל TIFF עם אפשרויות מוגדרות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## סף עבור TIFF בינריזציה

ניתן לשמור תמונה TIFF בפורמט 1 סיביות לשנייה על ידי הגדרת המאפיין [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) לסוג פורמט פיקסל Format1bppIndexed, והמאפיין `TiffCompression` לסוג 3 או 4.

עבור פילוח תמונה, Aspose.Words משתמש בשיטה הפשוטה ביותר-סף. שיטה זו ממירה תמונה בקנה מידה אפור TIFF לתמונה בינארית, באמצעות ערך סף. לכן, כאשר יש צורך להמיר מסמך לפורמט הקובץ TIFF, ניתן לקבל או להגדיר את הסף עבור TIFF בינריזציה באמצעות המאפיין [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). ערך ברירת המחדל עבור מאפיין זה מוגדר ל-128, וככל שערך זה גבוה יותר, כך התמונה כהה יותר.

הדוגמה הבאה מראה כיצד לבצע TIFF בינריזציה עם סף מוגדר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

להלן ניתן להשוות תמונות שעליהן בוצע בינריזציה TIFF בערכי סף שונים:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
