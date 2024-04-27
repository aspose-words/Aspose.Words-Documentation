---
title: توفير وثيقة كمبادرة متعددة الصفحات Java
second_title: Aspose.Words for Java
articleTitle: توفير وثيقة كموقع متعدد الصفحات
linktitle: توفير وثيقة كموقع متعدد الصفحات
description: "Convert a document to a raster image, which is discussed on the example of the TIFF format. لتحديد كيف يُعرض على المنتدى تحتاج إلى تحديد خيارات إضافية: حل، عدد الصفحات، ربط الصور، وما إلى ذلك باستخدام Java."
type: docs
weight: 30
url: /ar/java/saving-a-document-as-a-multipage-tiff/
---

عند العمل مع الوثائق، كنت في كثير من الأحيان بحاجة إلى تحويل وثيقتك إلى ملف (ملفات). وهذا أمر له أهمية خاصة إذا كان عليك أن تقدم وثيقتك في شكل قابل للقراءة والطباعة، ولكن ليس قابلا للتجزئة. على سبيل المثال، يمكنك استخدام صورة مخادعة للصفحة الأولى من وثيقتك كعرض مسبق. وتصف هذه المادة كيفية تحويل الوثيقة إلى صورة متسترة باستخدام نموذج " TFF " - وهو أحد أشكال الصور الأكثر شعبية.

## تحويل شعبة خدمات الرقابة إلى فرقة العمل المتعددة المراحل

In Aspose.Words, ويمكن أن يتم التحويل من شركة DOC إلى TIFF بخط واحد من الرموز، وذلك بمجرد مرور مسار " الإنقاذ إلى " وتمديد الملف ذي الصلة إلى [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) طريقة The **Save** الطريقة تستمد تلقائياً `SaveFormat` من تمديد اسم الملف المحدد في المسار. ويبين المثال التالي كيفية تحويل الوثيقة إلى شكل " TFF ":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## تحديد الخيارات الإضافية عند تقديم الخدمات

وكثيراً ما تحتاجون إلى تحديد خيارات إضافية تؤثر على النتيجة. لهذا الغرض، استخدم [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) الطبقة التي تحتوي على خصائص تحدد كيفية عرض الوثيقة على الصورة ويمكنكم تحديد ما يلي:

- استمارة الإنقاذ لتحديد قائمة الخيارات المتاحة (الخيارات المتاحة)[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- قرار[HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- عدد الصفحات[PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- البلورات والإضاءة[PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- نوعية التصوير[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- الطريقة المستخدمة لربط الصورة (الطريقة المستخدمة)[TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- شكل ثابت للصور المولدة ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows مناولة الميثافين Aspose.Words )أ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- خيارات إضافية يمكنك رؤيتها في **ImageSaveOptions** الصف

ويبيّن المثال التالي كيفية تحويل الـ دي سي إلى TFF بخيارات موحّدة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## علق للربط بين القوة

A TIFF image can be save in 1bpp b/w format by setting the [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) ممتلكات من طراز Format1bppIndexed pixel [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) (ممتلكات لـ (سيت 3 أو (سيت 4

لتجزئة الصور، Aspose.Words يستخدم أبسط طريقة - العتبة. This method converts a gray-scale TIFF image into a binary image, using a threshold value. ولذلك، عندما يلزم تحويل الوثيقة إلى شكل ملف TFF، من الممكن الحصول على عتبة ربط TTIFF أو تحديدها عن طريق [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) ملكية والقيمة الافتراضية لهذه الممتلكات هي 128، وكلما زادت هذه القيمة، كلما كانت الصورة أكثر ظلما.

ويبيّن المثال التالي كيفية أداء الربط بين الإطار التمويلي المتعدد السنوات بعتبة محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

ويمكن أن تقارن بين الصور التي تم على أساسها الربط بين برنامج " تي إف " بقيم عتبة مختلفة:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
