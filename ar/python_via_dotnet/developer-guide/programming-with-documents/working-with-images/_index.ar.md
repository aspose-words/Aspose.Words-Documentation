---
title: العمل مع الصور في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الصور
linktitle: العمل مع الصور
description: "قم بإنشاء وإدارة صور بتنسيقات مختلفة في مستند باستخدام Python."
type: docs
weight: 300
url: /ar/python-net/working-with-images/
---

يتيح Aspose.Words للمستخدمين العمل مع الصور بطريقة مرنة للغاية. في هذه المقالة، يمكنك استكشاف بعض إمكانيات العمل مع الصور فقط.

## إدراج صورة

يوفر [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) العديد من التحميلات الزائدة لطريقة [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) التي تسمح لك بإدراج صورة مضمّنة أو عائمة. إذا كانت الصورة عبارة عن ملف تعريف EMF أو WMF، فسيتم إدراجها في المستند بتنسيق ملف تعريف. سيتم تخزين جميع الصور الأخرى بتنسيق PNG. يمكن لطريقة **إدراج صورة** استخدام صور من مصادر مختلفة:

- من ملف أو `URL` عن طريق تمرير معلمة سلسلة
- من الدفق عن طريق تمرير معلمة `Stream`
- من صفيف بايت عن طريق تمرير معلمة صفيف بايت

لكل طريقة من طرق **إدراج صورة**، هناك المزيد من التحميلات الزائدة التي تسمح لك بإدراج صورة بالخيارات التالية:
- مضمنة أو عائمة في موضع محدد، على سبيل المثال، **إدراج صورة**
- مقياس النسبة المئوية أو الحجم المخصص؛ علاوة على ذلك، تقوم طريقة [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) بإرجاع كائن [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) الذي تم إنشاؤه وإدراجه للتو حتى تتمكن من تعديل خصائص [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) بشكل أكبر

### إدراج صورة مضمنة

قم بتمرير سلسلة واحدة تمثل ملفًا يحتوي على الصورة إلى [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) لإدراج الصورة في المستند كرسم مضمن.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج صورة سطرية في موضع المؤشر في مستند:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### إدراج صورة عائمة (محددة الموضع تمامًا)

يوضح مثال التعليمات البرمجية التالي كيفية إدراج صورة عائمة من ملف أو `URL` في موضع وحجم محددين:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## كيفية استخراج الصور من وثيقة

يتم تخزين كافة الصور داخل عقد [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) في [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). لاستخراج جميع الصور أو الصور ذات النوع المحدد من المستند، اتبع الخطوات التالية:

- استخدم طريقة [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) لتحديد جميع عقد [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- التكرار من خلال مجموعات العقدة الناتجة.
- التحقق من خاصية [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) المنطقية.
- استخراج بيانات الصورة باستخدام خاصية [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- حفظ بيانات الصورة إلى ملف.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج الصور من مستند وحفظها كملفات:

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## كيفية إدراج الباركود في كل صفحة من المستند

يوضح لك هذا المثال كيفية إضافة نفس الرموز الشريطية أو رموز مختلفة على كل الصفحات أو صفحات معينة من مستند Word. لا توجد طريقة مباشرة لإضافة رموز شريطية على جميع صفحات المستند ولكن يمكنك استخدام طرق [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) و[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) و[insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) للانتقال إلى أي قسم أو رؤوس/تذييلات وإدراج صور الرمز الشريطي كما ترون في الكود التالي.

يقوم مثال التعليمات البرمجية التالي بإدراج صورة باركود في كل صفحة من المستند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## قفل نسبة العرض إلى الارتفاع للصورة

نسبة العرض إلى الارتفاع للشكل الهندسي هي نسبة أحجامه في أبعاد مختلفة. يمكنك قفل نسبة العرض إلى الارتفاع للصورة باستخدام [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). تعتمد القيمة الافتراضية لنسبة العرض إلى الارتفاع للشكل على [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). إنه `True` لـ [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) و`False` لأنواع الأشكال الأخرى.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع نسبة العرض إلى الارتفاع:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## كيفية الحصول على الحدود الفعلية للشكل بالنقاط

إذا كنت تريد المربع المحيط الفعلي للشكل كما هو معروض على الصفحة، فيمكنك تحقيق ذلك باستخدام خاصية [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## صور المحاصيل

يشير اقتصاص الصورة عادةً إلى إزالة الأجزاء الخارجية غير المرغوب فيها من الصورة للمساعدة في تحسين الإطار. يتم استخدامه أيضًا لإزالة بعض أجزاء الصورة لزيادة التركيز على منطقة معينة.

يوضح مثال التعليمات البرمجية التالي كيفية تحقيق ذلك باستخدام Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## حفظ الصور بصيغة WMF

يوفر Aspose.Words وظيفة لحفظ جميع الصور المتوفرة في مستند بتنسيق [ومف](https://docs.fileformat.com/image/wmf/) أثناء تحويل DOCX إلى RTF.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ الصور بتنسيق WMF مع خيارات حفظ RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
