---
title: تحويل مستند إلى صورة في C++
second_title: Aspose.Words ل C++
articleTitle: تحويل مستند إلى صورة
linktitle: تحويل مستند إلى صورة
type: docs
description: "تحويل مستند إلى تنسيق صورة (JPG، PNG، إلخ). قم بإنشاء معاينة للمستند أو قم بإنشاء مسح ضوئي للمستند لإرسال فاتورة."
weight: 43
url: /ar/cpp/convert-a-document-to-an-image/
---

في بعض الأحيان يكون مطلوبا الحصول على صورة بدلا من المستندات بتنسيقات أخرى، مثل DOCX أو PDF. على سبيل المثال، تحتاج إلى إضافة معاينة لأي صفحة مستند إلى موقع الويب أو التطبيق الخاص بك، أو إنشاء "مسح ضوئي" لمستند لإرسال فاتورة. هذا هو الوقت الذي قد تحتاج فيه إلى تحويل مستند في أي [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) إلى صورة، مرة أخرى، في أي [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## تحويل إلى تنسيق الصورة

كما هو الحال مع جميع أمثلة التحويل الموضحة بالفعل، تحتاج إلى إنشاء مستند جديد أو تحميل مستند موجود بأي تنسيق مدعوم، وإجراء التغييرات اللازمة، وحفظه بأي تنسيق صورة متاح، على سبيل المثال، JPEG، PNG، أو BMP.

يوضح مثال الكود التالي كيفية تحويل DOCX إلى JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## حدد خيارات الحفظ عند التحويل إلى صورة

Aspose.Words يوفر لك فئة [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)، والتي توفر مزيدا من التحكم في كيفية حفظ المستندات بتنسيقات صور مختلفة. بعض خصائص هذه الفئة ترث أو تفرط في خصائص الفئات الأساسية مثل [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) أو [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)، ولكن هناك أيضا خيارات خاصة بحفظ الصور.

من الممكن تحديد الصفحات المراد تحويلها إلى تنسيق صورة باستخدام خاصية [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). على سبيل المثال، يمكن تطبيقه إذا كنت تحتاج فقط إلى معاينة للصفحة الأولى أو لصفحة محددة.

من الممكن أيضا التحكم في جودة صورة الإخراج وتنسيق البكسل باستخدام الخصائص التالية– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), وكذلك إعداد إعدادات لون الصورة، باستخدام الخصائص التالية– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

هناك أيضا خصائص تنطبق على تنسيق معين، على سبيل المثال، [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) أو [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

يوضح مثال الكود التالي كيفية إنشاء معاينة لصفحة المستند الأولى مع تطبيق بعض الإعدادات الإضافية:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
