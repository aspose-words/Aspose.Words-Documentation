---
title: تحويل مستند إلى صورة في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل مستند إلى صورة
linktitle: تحويل مستند إلى صورة
type: docs
description: "تحويل مستند إلى تنسيق صورة (JPG، PNG، إلخ). قم بإنشاء معاينة للمستند أو قم بإجراء مسح ضوئي للمستند لإرسال فاتورة باستخدام C#."
weight: 43
url: /ar/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

في بعض الأحيان يكون من الضروري الحصول على صورة بدلاً من المستندات بتنسيقات أخرى، مثل DOCX أو PDF. على سبيل المثال، تحتاج إلى إضافة معاينة لأي صفحة مستند إلى موقع الويب أو التطبيق الخاص بك، أو إنشاء "مسح ضوئي" لمستند لإرسال فاتورة. هذا هو الوقت الذي قد تحتاج فيه إلى تحويل مستند في أي [تنسيق التحميل المدعوم](https://reference.aspose.com/words/ar/net/aspose.words/loadformat/) إلى صورة، مرة أخرى، في أي [تنسيق الحفظ المدعوم](https://reference.aspose.com/words/ar/net/aspose.words/saveformat/).

## تحويل إلى صورة {#convert-to-image-format}

كما هو الحال مع جميع أمثلة التحويل الموضحة بالفعل، تحتاج إلى إنشاء مستند جديد أو تحميل مستند موجود بأي تنسيق مدعوم، وإجراء التغييرات اللازمة، وحفظه بأي تنسيق صورة متاح، على سبيل المثال، JPEG أو PNG أو BMP.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل PDF إلى JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## حدد خيارات الحفظ عند التحويل إلى صورة {#specify-save-options-when-converting-to-an-image}

يوفر لك Aspose.Words فئة [ImageSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/)، والتي تمنحك المزيد من التحكم في كيفية حفظ المستندات بتنسيقات الصور المختلفة. بعض خصائص هذه الفئة ترث أو تزيد من خصائص الفئات الأساسية مثل [FixedPageSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/fixedpagesaveoptions/) أو [SaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/saveoptions/)، ولكن هناك أيضًا خيارات خاصة بحفظ الصور.

من الممكن تحديد الصفحات المراد تحويلها إلى تنسيق الصورة باستخدام خاصية [PageSet](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/pageset/). على سبيل المثال، يمكن تطبيقه إذا كنت تحتاج فقط إلى معاينة للصفحة الأولى أو لصفحة محددة.

من الممكن أيضًا التحكم في جودة الصورة الناتجة وتنسيق البكسل باستخدام الخصائص التالية - [HorizontalResolution](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)، [VerticalResolution](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/verticalresolution/)، [Resolution](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/resolution/)، [Scale](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/scale/)، [PixelFormat](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/pixelformat/)، بالإضافة إلى إعداد إعدادات ألوان الصورة، باستخدام الخصائص التالية - [ImageBrightness](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/imagebrightness/)، [ImageColorMode](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/imagecolormode/)، [ImageContrast](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/imagecontrast/)، [PaperColor](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/papercolor/).

هناك أيضًا خصائص تنطبق على تنسيق معين، على سبيل المثال، [JpegQuality](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/jpegquality/) أو [TiffCompression](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء معاينة لصفحة المستند الأولى مع تطبيق بعض الإعدادات الإضافية:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
