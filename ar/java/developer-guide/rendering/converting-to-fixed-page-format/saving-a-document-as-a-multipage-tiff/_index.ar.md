---
title: حفظ مستند كصفحة متعددة TIFF في Java
second_title: Aspose.Words ل Java
articleTitle: حفظ مستند كصفحة متعددة TIFF
linktitle: حفظ مستند كصفحة متعددة TIFF
description: "تحويل مستند إلى صورة نقطية، والتي تمت مناقشتها في مثال تنسيق TIFF. لتحديد كيفية عرض TIFF، تحتاج إلى تحديد خيارات إضافية: الدقة، وعدد الصفحات، وثنائية الصورة، وما إلى ذلك باستخدام Java."
type: docs
weight: 30
url: /ar/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

عند العمل مع المستندات، غالبا ما تحتاج إلى تحويل المستند إلى ملف(ملفات) صورة نقطية. هذا مهم بشكل خاص إذا كان عليك تقديم المستند بتنسيق قابل للقراءة وقابل للطباعة، ولكن غير قابل للتحرير. على سبيل المثال، يمكنك استخدام صورة نقطية للصفحة الأولى من المستند كمعاينة. توضح هذه المقالة كيفية تحويل مستند إلى صورة نقطية باستخدام مثال تنسيق TIFF - أحد تنسيقات الصور الأكثر شيوعا.

## تحويل DOC إلى صفحات متعددة TIFF

في Aspose.Words، يمكن إجراء التحويل من DOC إلى TIFF بسطر واحد من التعليمات البرمجية، ببساطة عن طريق تمرير مسار "حفظ إلى" وامتداد الملف ذي الصلة إلى طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). تستمد طريقة **Save** تلقائيا `SaveFormat` من امتداد اسم الملف المحدد في المسار. يوضح المثال التالي كيفية تحويل مستند إلى تنسيق TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## تحديد خيارات إضافية عند التقديم TIFF

غالبا ما تحتاج إلى تحديد خيارات إضافية، والتي تؤثر على نتيجة العرض. لهذا الغرض، استخدم فئة [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض المستند على الصورة. يمكنك تحديد ما يلي:

- حفظ التنسيق لتحديد قائمة الخيارات المتاحة ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- القرار ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- عدد الصفحات ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)، [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- إعدادات اللون والإضاءة ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- جودة الصورة([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- الطريقة المستخدمة لإضفاء الطابع الثنائي على الصورة ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod)، [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- تنسيق البكسل للصور التي تم إنشاؤها ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows معالجة ملفات التعريف بواسطة Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- الخيارات الإضافية التي يمكنك رؤيتها في فئة **ImageSaveOptions**

يوضح المثال التالي كيفية تحويل DOC إلى TIFF باستخدام الخيارات المكونة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## عتبة TIFF ثنائية

يمكن حفظ صورة TIFF بتنسيق 1 نقطة لكل بكسل عن طريق تعيين الخاصية [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) إلى نوع تنسيق Format1bppIndexed بكسل، والخاصية [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) إما إلى رقم 3 أو رقم 4.

لتجزئة الصورة، Aspose.Words يستخدم أبسط طريقة-العتبة. تقوم هذه الطريقة بتحويل صورة ذات مقياس رمادي TIFF إلى صورة ثنائية، باستخدام قيمة عتبة. لذلك، عندما يحتاج المستند إلى التحويل إلى تنسيق ملف TIFF، فمن الممكن الحصول على أو تعيين عتبة TIFF ثنائية عبر خاصية [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). يتم تعيين القيمة الافتراضية لهذه الخاصية إلى 128، وكلما ارتفعت هذه القيمة، كانت الصورة أغمق.

يوضح المثال التالي كيفية تنفيذ TIFF بيناريزاتيون مع عتبة محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

أدناه يمكنك مقارنة الصور التي تم تنفيذ TIFF ثنائية عند قيم عتبة مختلفة:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
