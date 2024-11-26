---
title: العمل مع الصور في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الصور
linktitle: العمل مع الصور
description: "أشكال الصور بالتفاصيل والميزات المتقدمة التي يوفرها Aspose.Words لـ .NET."
type: docs
weight: 300
url: /ar/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

يتيح Aspose.Words للمستخدمين العمل مع الصور بطريقة مرنة للغاية. في هذه المقالة، يمكنك استكشاف بعض إمكانيات العمل مع الصور فقط.

## كيفية إدراج صورة {#insert-an-image}

يوفر [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) العديد من التحميلات الزائدة لطريقة [InsertImage](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertimage/) التي تسمح لك بإدراج صورة مضمّنة أو عائمة. إذا كانت الصورة عبارة عن ملف تعريف EMF أو WMF، فسيتم إدراجها في المستند بتنسيق ملف تعريف. سيتم تخزين جميع الصور الأخرى بتنسيق PNG. يمكن لطريقة **InsertImage** استخدام صور من مصادر مختلفة:

- من ملف أو `URL` عن طريق تمرير معلمة `String` [InsertImage](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertimage/)
- من الدفق عن طريق تمرير معلمة `Stream` **InsertImage**
- من كائن صورة عن طريق تمرير معلمة الصورة **InsertImage**
- من صفيف بايت عن طريق تمرير معلمة صفيف بايت **InsertImage**

لكل طريقة من طرق **InsertImage**، هناك المزيد من التحميلات الزائدة التي تسمح لك بإدراج صورة بالخيارات التالية:
- مضمنة أو عائمة في موضع محدد، على سبيل المثال، **InsertImage**
- مقياس النسبة المئوية أو الحجم المخصص، على سبيل المثال، **InsertImage**؛ علاوة على ذلك، تقوم طريقة **InsertImage** بإرجاع كائن [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/) الذي تم إنشاؤه وإدراجه للتو حتى تتمكن من تعديل خصائص الشكل بشكل أكبر

### كيفية إدراج صورة مضمنة {#insert-an-inline-image}

قم بتمرير سلسلة واحدة تمثل ملفًا يحتوي على الصورة إلى **InsertImage** لإدراج الصورة في المستند كرسم مضمّن

يوضح مثال التعليمات البرمجية التالي كيفية إدراج صورة سطرية في موضع المؤشر في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### كيفية إدراج صورة عائمة {#insert-a-floating-image}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج صورة عائمة من ملف أو `URL` في موضع وحجم محددين:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## كيفية استخراج الصور من وثيقة {#how-to-extract-images-from-a-document}

يتم تخزين كافة الصور داخل عقد **Shape** في [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/). لاستخراج جميع الصور أو الصور ذات النوع المحدد من المستند، اتبع الخطوات التالية:

- استخدم طريقة [GetChildNodes](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/getchildnodes/) لتحديد جميع عقد **Shape**.
- التكرار من خلال مجموعات العقدة الناتجة.
- التحقق من خاصية [HasImage](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/hasimage/) المنطقية.
- استخراج بيانات الصورة باستخدام خاصية [ImageData](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/imagedata/).
- حفظ بيانات الصورة إلى ملف.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج الصور من مستند وحفظها كملفات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## كيفية إدراج الباركود في كل صفحة مستند {#how-to-insert-barcode-on-each-documen-page}

يوضح لك هذا المثال كيفية إضافة نفس الرموز الشريطية أو رموز مختلفة على كل الصفحات أو صفحات معينة من مستند Word. لا توجد طريقة مباشرة لإضافة رموز شريطية على جميع صفحات المستند ولكن يمكنك استخدام طرق **MoveToSection** و**MoveToHeaderFooter** و**InsertImage** للانتقال إلى أي قسم أو رؤوس/تذييلات وإدراج صور الرمز الشريطي كما ترون في الكود التالي.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج صورة باركود في كل صفحة من المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## قفل نسبة العرض إلى الارتفاع للصورة {#lock-aspect-ratio-of-image}

نسبة العرض إلى الارتفاع للشكل الهندسي هي نسبة أحجامه في أبعاد مختلفة. يمكنك قفل نسبة العرض إلى الارتفاع للصورة باستخدام [AspectRatioLocked](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/aspectratiolocked/). تعتمد القيمة الافتراضية لنسبة العرض إلى الارتفاع للشكل على [ShapeType](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapetype/). إنه *true* لـ `ShapeType.Image` و*false* لأنواع الأشكال الأخرى.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع نسبة العرض إلى الارتفاع:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## كيفية الحصول على الحدود الفعلية للشكل بالنقاط {#how-to-get-actual-bounds-of-shape-in-points}

إذا كنت تريد المربع المحيط الفعلي للشكل كما هو معروض على الصفحة، فيمكنك تحقيق ذلك باستخدام خاصية [BoundsInPoints](https://reference.aspose.com/words/ar/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## قص الصور {#crop-images}

يشير اقتصاص الصورة عادةً إلى إزالة الأجزاء الخارجية غير المرغوب فيها من الصورة للمساعدة في تحسين الإطار. يتم استخدامه أيضًا لإزالة بعض أجزاء الصورة لزيادة التركيز على منطقة معينة.

يوضح مثال التعليمات البرمجية التالي كيفية تحقيق ذلك باستخدام Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## حفظ الصور بتنسيق WMF {#save-images-as-wmf}

يوفر Aspose.Words وظيفة لحفظ جميع الصور المتوفرة في مستند إلى تنسيق [ومف](https://docs.fileformat.com/image/wmf/) أثناء تحويل DOCX إلى RTF.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ الصور بتنسيق WMF مع خيارات حفظ RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
