---
title: حفظ مستند كملف TIFF متعدد الصفحات في C#
second_title: Aspose.Words لـ .NET
articleTitle: حفظ مستند بتنسيق TIFF متعدد الصفحات
linktitle: حفظ مستند بتنسيق TIFF متعدد الصفحات
description: "تحويل مستند إلى ملف TIFF متعدد الصفحات باستخدام C#. لتحديد كيفية عرض المستند على الصورة، يلزمك تحديد خيارات إضافية: الدقة، وعدد الصفحات، والتحويل الثنائي للصورة، وما إلى ذلك."
type: docs
weight: 30
url: /ar/net/saving-a-document-as-a-multipage-tiff/
---

عند العمل مع المستندات، غالبًا ما تحتاج إلى تحويل المستند إلى ملف (ملفات) صورة نقطية. وهذا مهم بشكل خاص إذا كان عليك تقديم المستند الخاص بك بتنسيق قابل للقراءة والطباعة، ولكن ليس قابلاً للتحرير. على سبيل المثال، يمكنك استخدام صورة نقطية للصفحة الأولى من المستند كمعاينة. توضح هذه المقالة كيفية تحويل مستند إلى صورة نقطية باستخدام مثال تنسيق TIFF - أحد تنسيقات الصور الأكثر شيوعًا.

## تحويل DOC إلى TIFF متعدد الصفحات

في Aspose.Words، يمكن إجراء التحويل من DOC إلى TIFF باستخدام سطر واحد من التعليمات البرمجية، وذلك ببساطة عن طريق تمرير مسار "الحفظ إلى" وامتداد الملف ذي الصلة إلى طريقة [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). تقوم طريقة **Save** تلقائيًا باشتقاق `SaveFormat` من امتداد اسم الملف المحدد في المسار. يوضح المثال التالي كيفية تحويل مستند إلى تنسيق TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## تحديد خيارات إضافية عند عرض TIFF

غالبًا ما تحتاج إلى تحديد خيارات إضافية تؤثر على نتيجة العرض. ولهذا الغرض، استخدم فئة [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)، التي تحتوي على الخصائص التي تحدد كيفية عرض المستند على الصورة. يمكنك تحديد ما يلي:

- حفظ التنسيق لتحديد قائمة الخيارات المتاحة ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- الدقة ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)، [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/)، [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- عدد الصفحات ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)، [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- إعدادات الألوان والإضاءة ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)، [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/)، [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/)، [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- جودة الصورة ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/)، [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/)، [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)، [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- الطريقة المستخدمة لثنائية الصورة ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/)، [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- تنسيق البكسل للصور التي تم إنشاؤها ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- التعامل مع ملفات تعريف Windows بواسطة Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)، [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- الخيارات الإضافية التي يمكنك رؤيتها في فئة **ImageSaveOptions**

يوضح المثال التالي كيفية تحويل DOC إلى TIFF مع الخيارات التي تم تكوينها:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## عتبة ثنائية TIFF

يمكن حفظ صورة TIFF بتنسيق 1bpp b/w عن طريق تعيين خاصية [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) على نوع تنسيق Format1bppIndexed بكسل، وخاصية [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) إما على Ccitt3 أو Ccitt4.

لتجزئة الصور، يستخدم Aspose.Words أبسط طريقة - العتبة. تقوم هذه الطريقة بتحويل صورة TIFF ذات التدرج الرمادي إلى صورة ثنائية، باستخدام قيمة عتبة. لذلك، عندما يلزم تحويل مستند إلى تنسيق ملف TIFF، فمن الممكن الحصول على أو تعيين الحد الأدنى لثنائية TIFF عبر خاصية [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). يتم تعيين القيمة الافتراضية لهذه الخاصية على 128، وكلما ارتفعت هذه القيمة، أصبحت الصورة أغمق.

يوضح المثال التالي كيفية إجراء ثنائية TIFF بحد محدد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

يمكنك أدناه مقارنة الصور التي تم إجراء عملية ثنائية TIFF عليها عند قيم عتبة مختلفة:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="حفظ مستند كـ متعدد الصفحات، شجار، وضع كلمات، شبكة" style="width:800px"/>
