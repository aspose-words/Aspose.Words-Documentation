---
title: تحويل مستند إلى صورة
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل مستند إلى صورة
linktitle: تحويل مستند إلى صورة
type: docs
description: "تحويل مستند إلى تنسيق صورة (JPG، PNG، إلخ). قم بإنشاء معاينة للمستند أو قم بإجراء مسح ضوئي للمستند لإرسال فاتورة باستخدام Python."
weight: 43
url: /ar/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان يكون من الضروري الحصول على صورة بدلاً من المستندات بتنسيقات أخرى، مثل DOCX أو PDF. على سبيل المثال، تحتاج إلى إضافة معاينة لأي صفحة مستند إلى موقع الويب أو التطبيق الخاص بك، أو إنشاء "مسح ضوئي" لمستند لإرسال فاتورة. هذا هو الوقت الذي قد تحتاج فيه إلى تحويل مستند في أي [تنسيق التحميل المدعوم](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) إلى صورة، مرة أخرى، في أي [تنسيق الحفظ المدعوم](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## تحويل إلى تنسيق الصورة {#convert-to-image-format}

كما هو الحال مع جميع أمثلة التحويل الموضحة بالفعل، تحتاج إلى إنشاء مستند جديد أو تحميل مستند موجود بأي تنسيق مدعوم، وإجراء التغييرات اللازمة، وحفظه بأي تنسيق صورة متاح، على سبيل المثال، JPEG أو PNG أو BMP.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل PDF إلى JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## حدد خيارات الحفظ عند التحويل إلى صورة {#specify-save-options-when-converting-to-an-image}

يوفر لك Aspose.Words فئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)، والتي تمنحك المزيد من التحكم في كيفية حفظ المستندات بتنسيقات الصور المختلفة. بعض خصائص هذه الفئة ترث أو تزيد من خصائص الفئات الأساسية مثل [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) أو [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)، ولكن هناك أيضًا خيارات خاصة بحفظ الصور.

من الممكن تحديد الصفحات المراد تحويلها إلى تنسيق الصورة باستخدام خاصية [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). على سبيل المثال، يمكن تطبيقه إذا كنت تحتاج فقط إلى معاينة للصفحة الأولى أو لصفحة محددة.

من الممكن أيضًا التحكم في جودة الصورة الناتجة وتنسيق البكسل باستخدام الخصائص التالية - [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)، [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)، [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)، [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)، بالإضافة إلى إعداد إعدادات ألوان الصورة، باستخدام الخصائص التالية - [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)، [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)، [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)، [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

هناك أيضًا خصائص تنطبق على تنسيق معين، على سبيل المثال، [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) أو [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء معاينة لصفحة المستند الأولى مع تطبيق بعض الإعدادات الإضافية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
