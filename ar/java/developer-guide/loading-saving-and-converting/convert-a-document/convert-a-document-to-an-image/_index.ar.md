---
title: تحويل وثيقة إلى صورة في Java
second_title: Aspose.Words for Java
articleTitle: تحويل وثيقة إلى صورة
linktitle: تحويل وثيقة إلى صورة
type: docs
description: "Convert a document to image format (JPG, PNG, etc). إعداد وثيقة مسبقة أو إعداد مسح وثائقي لإرسال فاتورة باستخدام Java."
weight: 35
url: /ar/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

وفي بعض الأحيان يكون من المطلوب الحصول على صورة بدلاً من الوثائق في أشكال أخرى، مثل DOCX أو PDF. على سبيل المثال، عليك أن تضيف عرضاً مسبقاً لأي صفحة من صفحات الوثائق إلى موقعك أو تطبيقك أو إنشاء "مسح" لوثيقة لإرسال فاتورة هذا هو عندما قد تحتاج إلى تحويل وثيقة في أي [استمارة الحمولة المدعومة](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) إلى صورة، مرة أخرى، في أي [الدعم](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convert to Image Format

وكما هو الحال بالنسبة لجميع أمثلة التحويل التي سبق وصفها، تحتاج إلى وضع وثيقة جديدة أو تحميل وثيقة قائمة في أي شكل من أشكال الدعم، وإجراء التغييرات اللازمة، وإنقاذها في أي شكل من أشكال الصور المتاحة، على سبيل المثال، JPEG أو PNG أو BMP.

The following code example shows how to convert DOCX to JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## تحديد خيارات الإنقاذ عند التحول إلى صورة

Aspose.Words يزودك بـ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) الطبقة التي تتحكم أكثر في كيفية توفير الوثائق في أشكال مختلفة من الصور. بعض خصائص هذه الفئة الموروثة أو المزدحمة من خصائص قاعدية مثل [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) أو [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ولكن هناك أيضا خيارات محددة لإنقاذ الصور.

ويمكن تحديد الصفحات التي ستحول إلى شكل صورة باستخدام [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) ملكية على سبيل المثال، يمكن تطبيقه إذا كنت بحاجة فقط إلى استعراض أولي للصفحة الأولى أو لصفحة محددة.

ومن الممكن أيضا التحكم في نوعية صور الإنتاج وشكل البكسل باستخدام الخواص التالية: [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), بالإضافة إلى وضع لون الصور باستخدام الخواص التالية [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

وهناك أيضا خصائص تنطبق على شكل معين، على سبيل المثال، [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) أو [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

ويبيّن المثال الرمزي التالي كيفية وضع استعراض أولي لصفحة الوثيقة الأولى مع تطبيق بعض البيئات الإضافية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
