---
title: حفظ مستند بتنسيق TIFF متعدد الصفحات
second_title: Aspose.Words لـ Python via .NET
articleTitle: حفظ مستند بتنسيق TIFF متعدد الصفحات
linktitle: حفظ مستند بتنسيق TIFF متعدد الصفحات
description: "تحويل مستند إلى ملف TIFF متعدد الصفحات باستخدام Python. لتحديد كيفية عرض المستند على الصورة، يلزمك تحديد خيارات إضافية: الدقة، وعدد الصفحات، والتحويل الثنائي للصورة، وما إلى ذلك."
type: docs
weight: 30
url: /ar/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

عند العمل مع المستندات، غالبًا ما تحتاج إلى تحويل المستند إلى ملف (ملفات) صورة نقطية. وهذا مهم بشكل خاص إذا كان عليك تقديم المستند الخاص بك بتنسيق قابل للقراءة والطباعة، ولكن ليس قابلاً للتحرير. على سبيل المثال، يمكنك استخدام صورة نقطية للصفحة الأولى من المستند كمعاينة. توضح هذه المقالة كيفية تحويل مستند إلى صورة نقطية باستخدام مثال تنسيق TIFF - أحد تنسيقات الصور الأكثر شيوعًا.

## تحويل DOC إلى TIFF متعدد الصفحات

في Aspose.Words، يمكن إجراء التحويل من DOC إلى TIFF باستخدام سطر واحد من التعليمات البرمجية، وذلك ببساطة عن طريق تمرير مسار "الحفظ إلى" وامتداد الملف ذي الصلة إلى طريقة [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). تقوم طريقة [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) تلقائيًا باشتقاق [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) من ملحق اسم الملف المحدد في المسار. يوضح المثال التالي كيفية تحويل مستند إلى تنسيق TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## تحديد خيارات إضافية عند عرض TIFF

غالبًا ما تحتاج إلى تحديد خيارات إضافية تؤثر على نتيجة العرض. ولهذا الغرض، استخدم فئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)، التي تحتوي على الخصائص التي تحدد كيفية عرض المستند على الصورة. يمكنك تحديد ما يلي:

- حفظ التنسيق لتحديد قائمة الخيارات المتاحة ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- الدقة ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)، [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- عدد الصفحات ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- إعدادات الألوان والإضاءة ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)، [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)، [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)، [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- جودة الصورة ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/)، [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)، [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- الطريقة المستخدمة لثنائية الصورة ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/)، [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- تنسيق البكسل للصور التي تم إنشاؤها ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- التعامل مع ملفات تعريف Windows بواسطة Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)، [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- الخيارات الإضافية التي يمكنك رؤيتها في فئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

يوضح المثال التالي كيفية تحويل DOC إلى TIFF مع الخيارات التي تم تكوينها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## عتبة ثنائية TIFF

يمكن حفظ صورة TIFF بتنسيق 1bpp b/w عن طريق تعيين خاصية [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) على نوع تنسيق [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) بكسل، وخاصية [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) إما على [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) أو [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

لتجزئة الصور، يستخدم Aspose.Words أبسط طريقة - العتبة. تقوم هذه الطريقة بتحويل صورة TIFF ذات التدرج الرمادي إلى صورة ثنائية، باستخدام قيمة عتبة. لذلك، عندما يلزم تحويل مستند إلى تنسيق ملف TIFF، فمن الممكن الحصول على أو تعيين الحد الأدنى لثنائية TIFF عبر خاصية [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). يتم تعيين القيمة الافتراضية لهذه الخاصية على 128، وكلما ارتفعت هذه القيمة، أصبحت الصورة أغمق.

يوضح المثال التالي كيفية إجراء ثنائية TIFF بحد محدد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

يمكنك أدناه مقارنة الصور التي تم إجراء عملية ثنائية TIFF عليها عند قيم عتبة مختلفة:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="حفظ مستند كـ متعدد الصفحات، شجار، وضع كلمات، شبكة" style="width:800px"/>
