---
title: שמירת מסמך כ- Multipage TIFF Java
second_title: Aspose.Words עבור Java
articleTitle: שמירת מסמך כ- Multipage TIFF
linktitle: שמירת מסמך כ- Multipage TIFF
description: "להמיר מסמך לדימוי raster, אשר נדונ על הדוגמה של פורמט TIFF. כדי לקבוע כיצד TIFF מוצג עליך לציין אפשרויות נוספות: החלטה, מספר דפים, בינאריות תמונות, וכו ' Java."
type: docs
weight: 30
url: /he/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

כאשר אתה עובד עם מסמכים, אתה לעתים קרובות צריך להמיר את המסמך שלך לקובץ תמונות raster (s). זה רלוונטי במיוחד אם אתה צריך להציג את המסמך שלך בפורמט קריא וניתן להדפיס, אבל לא ניתן לערוך. לדוגמה, אתה יכול להשתמש בתמונה של הדף הראשון של המסמך שלך כתצוגה מקדימה. מאמר זה מתאר כיצד להמיר מסמך לדימוי raster באמצעות הדוגמה של פורמט TIFF - אחד פורמטי התמונה הפופולריים יותר.

## המרת DOC ל- Multi-Page TIFF

In In In Aspose.Words, המרה מ- DOC ל- TIFF יכולה להתבצע עם קו אחד של קוד, על ידי פשוט להעביר את הנתיב "save to" ואת הרחבת הקובץ הרלוונטית ל- [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) שיטה. The The The **Save** השיטה באופן אוטומטי שואבת את `SaveFormat` מהסיומת שם הקובץ המפורטת בדרך. הדוגמה הבאה מציגה כיצד להמיר מסמך לתבנית TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## אפשרויות נוספות בעת Rendering TIFF

לעתים קרובות עליך לציין אפשרויות נוספות, המשפיעות על התוצאה. לשם כך, השתמש [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) שיעור, המכיל תכונות הקובעות כיצד המסמך מוצג על התמונה. ניתן לציין את הפעולות הבאות:

- שמור פורמט כדי לקבוע את רשימת האפשרויות הזמינות ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- החלטה ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- מספר העמודים (([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- הגדרות צבע ותאורה ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- איכות תמונה ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- השיטה שימשה כדי ליצור את התמונה ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- פורמט Pixel עבור תמונות שנוצרו[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- - Windows metafils טיפול Aspose.Words ()[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- אפשרויות נוספות שניתן לראות **ImageSaveOptions** הכיתה

הדוגמה הבאה מראה כיצד להמיר את DOC ל-TIFF עם אפשרויות מוגדרות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## תגית: TIFF Binarization

תמונה TIFF ניתן לשמור בפורמט 1bpp B / w על ידי הגדרת התמונה [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) נכס לתבנית1bppIndexed pixel, and the [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) נכס Ccitt3 או Ccitt4

לצילום תמונות, Aspose.Words השתמש בשיטה הפשוטה ביותר - סף. שיטה זו הופכת תמונה TIFF בקנה מידה אפור לתוך תמונה בינארית, באמצעות ערך סף. לכן, כאשר מסמך צריך להיות מומר לתבנית קובץ TIFF, ניתן לקבל או להגדיר את הסף עבור microFF binarization באמצעות ה- TIFF. [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) רכוש. ערך ברירת המחדל לנכס זה מוגדר ל- 128, וככל שהערך הזה גבוה יותר, כך התמונה כהה יותר.

הדוגמה הבאה מראה כיצד לבצע את ה-TIFF binarization עם סף מוגדר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

להלן ניתן להשוות תמונות על אשר TIFF binarization נעשה בערכי סף שונים:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
