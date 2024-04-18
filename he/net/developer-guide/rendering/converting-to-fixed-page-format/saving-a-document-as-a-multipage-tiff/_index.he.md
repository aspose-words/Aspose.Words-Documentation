---
title: שמירת מסמך כ- Multipage TIFF C#
second_title: Aspose.Words עבור .NET
articleTitle: שמירת מסמך כ- Multipage TIFF
linktitle: שמירת מסמך כ- Multipage TIFF
description: "להמיר מסמך ל-iFF Multi-Page באמצעות C#. כדי לקבוע כיצד המסמך מוצג על התמונה שאתה צריך לציין אפשרויות נוספות: החלטה, מספר דפים, חיבת תמונות וכו '."
type: docs
weight: 30
url: /he/net/saving-a-document-as-a-multipage-tiff/
---

כאשר אתה עובד עם מסמכים, אתה לעתים קרובות צריך להמיר את המסמך שלך לקובץ תמונות raster (s). זה רלוונטי במיוחד אם אתה צריך להציג את המסמך שלך בפורמט קריא וניתן להדפיס, אבל לא ניתן לערוך. לדוגמה, באפשרותך להשתמש בתמונה של הדף הראשון של המסמך שלך כתצוגה מקדימה. מאמר זה מתאר כיצד להמיר מסמך לדימוי raster באמצעות הדוגמה של פורמט TIFF - אחד פורמטי התמונה הפופולריים יותר.

## המונחים: Multi-Page TIFF

In In In Aspose.Words, המרה מ- DOC ל- TIFF יכולה להתבצע עם קו אחד של קוד, על ידי פשוט להעביר את הנתיב "save to" ואת הרחבת הקובץ הרלוונטית ל- [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) שיטה. The The The **Save** השיטה באופן אוטומטי שואבת את `SaveFormat` מהסיומת שם הקובץ המפורטת בדרך. הדוגמה הבאה מציגה כיצד להמיר מסמך לתבנית TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## אפשרויות נוספות בעת Rendering TIFF

לעתים קרובות עליך לציין אפשרויות נוספות, המשפיעות על התוצאה. לשם כך, השתמש [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) שיעור, המכיל תכונות הקובעות כיצד המסמך מוצג על התמונה. ניתן לציין את הפעולות הבאות:

- שמור פורמט כדי לקבוע את רשימת האפשרויות הזמינות ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- החלטה ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- מספר דפים (מספר דפים)[PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- הגדרות צבע ותאורה ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- איכות תמונה (צילום)[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- שיטות המשמשות לשילוב התמונה ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- פורמט Pixel עבור תמונות שנוצרו[PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- - Windows metafils טיפול Aspose.Words ()[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- אפשרויות נוספות שניתן לראות **ImageSaveOptions** הכיתה

הדוגמה הבאה מראה כיצד להמיר את DOC ל- TIFF עם אפשרויות מוגדרות:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## תגית: TIFF Binarization

תמונה TIFF ניתן לשמור בפורמט 1bpp B / w על ידי הגדרת התמונה [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) נכס לתבנית1bppIndexed pixel, and the [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) נכס Ccitt3 או Ccitt4

לצילום תמונות, Aspose.Words השתמש בשיטה הפשוטה ביותר - סף. שיטה זו הופכת תמונה TIFF בקנה מידה אפור לתוך תמונה בינארית, באמצעות ערך סף. לכן, כאשר מסמך צריך להיות מומר לתבנית קובץ TIFF, ניתן לקבל או להגדיר את הסף ל- TIFF binarization דרך ה- TIFF. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) רכוש. ערך ברירת המחדל לנכס זה נקבע ל- 128, וככל שהערך הזה גבוה יותר, כך התמונה כהה יותר.

הדוגמה הבאה מראה כיצד לבצע את ה- TIFF binarization עם סף מוגדר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

להלן ניתן להשוות תמונות על אשר TIFF binarization נעשה בערכי סף שונים:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
