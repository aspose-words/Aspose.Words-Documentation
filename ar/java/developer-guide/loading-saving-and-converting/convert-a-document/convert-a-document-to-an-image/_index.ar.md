---
title: تحويل مستند إلى صورة في Java
second_title: Aspose.Words ل Java
articleTitle: تحويل مستند إلى صورة
linktitle: تحويل مستند إلى صورة
type: docs
description: "تحويل مستند إلى تنسيق صورة (JPG، PNG، إلخ). قم بإنشاء معاينة للمستند أو قم بإنشاء مسح ضوئي للمستند لإرسال فاتورة باستخدام Java."
weight: 35
url: /ar/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان يكون مطلوبا الحصول على صورة بدلا من المستندات بتنسيقات أخرى، مثل DOCX أو PDF. على سبيل المثال، تحتاج إلى إضافة معاينة لأي صفحة مستند إلى موقع الويب أو التطبيق الخاص بك أو إنشاء "مسح ضوئي" لمستند لإرسال فاتورة. هذا هو الوقت الذي قد تحتاج فيه إلى تحويل مستند في أي [تنسيق التحميل المدعوم](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) إلى صورة، مرة أخرى، في أي [دعم حفظ الشكل](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## تحويل إلى تنسيق الصورة

كما هو الحال مع جميع أمثلة التحويل الموضحة بالفعل، تحتاج إلى إنشاء مستند جديد أو تحميل مستند موجود بأي تنسيق مدعوم، وإجراء التغييرات اللازمة، وحفظه بأي تنسيق صورة متاح، على سبيل المثال، JPEG، PNG، أو BMP.

يوضح مثال الكود التالي كيفية تحويل DOCX إلى JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## حدد خيارات الحفظ عند التحويل إلى صورة

Aspose.Words يوفر لك فئة [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)، والتي توفر مزيدا من التحكم في كيفية حفظ المستندات بتنسيقات صور مختلفة. بعض خصائص هذه الفئة ترث أو تفرط في خصائص الفئات الأساسية مثل [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) أو [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)، ولكن هناك أيضا خيارات خاصة بحفظ الصور.

من الممكن تحديد الصفحات المراد تحويلها إلى تنسيق صورة باستخدام خاصية [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). على سبيل المثال، يمكن تطبيقه إذا كنت تحتاج فقط إلى معاينة للصفحة الأولى أو لصفحة محددة.

من الممكن أيضا التحكم في جودة صورة الإخراج وتنسيق البكسل باستخدام الخصائص التالية– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), وكذلك إعداد إعدادات لون الصورة، باستخدام الخصائص التالية– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

هناك أيضا خصائص تنطبق على تنسيق معين، على سبيل المثال، [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) أو [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

يوضح مثال الكود التالي كيفية إنشاء معاينة لصفحة المستند الأولى مع تطبيق بعض الإعدادات الإضافية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
