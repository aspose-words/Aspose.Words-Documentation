---
title: حفظ مستند كصفحة متعددة TIFF في C++
second_title: Aspose.Words ل C++
articleTitle: حفظ مستند كصفحة متعددة TIFF
linktitle: حفظ مستند كصفحة متعددة TIFF
description: "تحويل مستند إلى صفحة متعددة TIFF باستخدام C++. لتحديد كيفية عرض المستند على الصورة، تحتاج إلى تحديد خيارات إضافية: الدقة، وعدد الصفحات، وثنائية الصورة، وما إلى ذلك."
type: docs
weight: 40
url: /ar/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

عند العمل مع المستندات، غالبا ما تحتاج إلى تحويل المستند إلى ملف(ملفات) صورة نقطية. هذا مهم بشكل خاص إذا كان عليك تقديم المستند بتنسيق قابل للقراءة وقابل للطباعة، ولكن غير قابل للتحرير. على سبيل المثال، يمكنك استخدام صورة نقطية للصفحة الأولى من المستند كمعاينة. توضح هذه المقالة كيفية تحويل مستند إلى صورة نقطية باستخدام مثال تنسيق TIFF - أحد تنسيقات الصور الأكثر شيوعا.

## تحويل DOC إلى صفحات متعددة TIFF

في Aspose.Words، يمكن إجراء التحويل من DOC إلى TIFF بسطر واحد من التعليمات البرمجية، ببساطة عن طريق تمرير مسار "حفظ إلى" وامتداد الملف ذي الصلة إلى طريقة [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). تستمد طريقة **Save** تلقائيا `SaveFormat` من امتداد اسم الملف المحدد في المسار. يوضح المثال التالي كيفية تحويل مستند إلى تنسيق TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## تحديد خيارات إضافية عند التقديم TIFF

غالبا ما تحتاج إلى تحديد خيارات إضافية، والتي تؤثر على نتيجة العرض. لهذا الغرض، استخدم فئة [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض المستند على الصورة. يمكنك تحديد ما يلي:

- حفظ التنسيق لتحديد قائمة الخيارات المتاحة ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- القرار ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- عدد الصفحات ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/)، [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- إعدادات اللون والإضاءة ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- جودة الصورة([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- الطريقة المستخدمة لإضفاء الطابع الثنائي على الصورة ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/)، [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- تنسيق البكسل للصور التي تم إنشاؤها ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows معالجة ملفات التعريف بواسطة Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- الخيارات الإضافية التي يمكنك رؤيتها في فئة **ImageSaveOptions**

يوضح المثال التالي كيفية تحويل DOC إلى TIFF باستخدام الخيارات المكونة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## عتبة TIFF ثنائية

يمكن حفظ صورة TIFF بتنسيق 1بب ب / ث عن طريق تعيين الخاصية [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) إلى تنسيق1bppIndexed نوع تنسيق البكسل، والخاصية `TiffCompression` إما إلى تسي 3 أو تسي 4.

لتجزئة الصورة، Aspose.Words يستخدم أبسط طريقة-العتبة. تقوم هذه الطريقة بتحويل صورة ذات مقياس رمادي TIFF إلى صورة ثنائية، باستخدام قيمة عتبة. لذلك، عندما يحتاج المستند إلى التحويل إلى تنسيق ملف TIFF، فمن الممكن الحصول على أو تعيين عتبة TIFF ثنائية عبر خاصية [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). يتم تعيين القيمة الافتراضية لهذه الخاصية إلى 128، وكلما ارتفعت هذه القيمة، كانت الصورة أغمق.

يوضح المثال التالي كيفية تنفيذ TIFF بيناريزاتيون مع عتبة محددة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

أدناه يمكنك مقارنة الصور التي تم تنفيذ TIFF ثنائية عند قيم عتبة مختلفة:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
