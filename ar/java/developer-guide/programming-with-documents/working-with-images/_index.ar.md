---
title: العمل مع الصور في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الصور
linktitle: العمل مع الصور
type: docs
description: "الأشكال صورة في التفاصيل والميزات المتقدمة التي تقدمها Aspose.Words ل Java."
weight: 300
url: /ar/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يسمح للمستخدمين بالعمل مع الصور بطريقة مرنة للغاية. في هذه المقالة، يمكنك استكشاف بعض إمكانيات العمل مع الصور فقط.

## كيفية استخراج الصور من مستند {#how-to-extract-images-from-a-document}

يتم تخزين جميع الصور داخل **Shape** العقد في مستند. لاستخراج جميع الصور أو الصور التي لها نوع معين من المستند، اتبع الخطوات التالية:

- استخدم طريقة [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) لتحديد جميع عقد الشكل.
- كرر من خلال مجموعات العقدة الناتجة.
- تحقق من خاصية [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) المنطقية.
- استخراج بيانات الصورة باستخدام خاصية [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- حفظ بيانات الصورة إلى ملف.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## كيفية إدراج الباركود في كل صفحة وثيقة {#how-to-insert-barcode-on-each-documen-page}

يتيح لك هذا المثال إضافة نفس الرموز الشريطية أو مختلفة على كل الصفحات أو صفحات معينة من مستند ورد. لا توجد طريقة مباشرة لإضافة الرموز الشريطية على جميع صفحات المستند ولكن يمكنك استخدام طرق [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) و [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) و [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) للانتقال إلى أي قسم أو رؤوس/تذييلات وإدراج صور الباركود كما ترى في الكود التالي.

يوضح مثال الكود التالي كيفية إدراج صورة رمز شريطي في كل صفحة من المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## قفل نسبة العرض إلى الارتفاع للصورة {#lock-aspect-ratio-of-image}

نسبة العرض إلى الارتفاع للشكل الهندسي هي نسبة أحجامه بأبعاد مختلفة. يمكنك قفل نسبة العرض إلى الارتفاع للصورة باستخدام [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). تعتمد القيمة الافتراضية لنسبة العرض إلى الارتفاع للشكل على [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). هذا صحيح بالنسبة لـ `ShapeType.Image` وخطأ لأنواع الأشكال الأخرى.

يوضح مثال الكود التالي كيفية العمل مع نسبة العرض إلى الارتفاع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## كيفية الحصول على الحدود الفعلية للشكل بالنقاط {#how-to-get-actual-bounds-of-shape-in-points}

إذا كنت تريد المربع المحيط الفعلي للشكل كما تم عرضه على الصفحة، فيمكنك تحقيق ذلك باستخدام خاصية [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## اقتصاص الصور

يشير اقتصاص الصورة عادة إلى إزالة الأجزاء الخارجية غير المرغوب فيها من الصورة للمساعدة في تحسين الإطار. كما أنها تستخدم لإزالة بعض أجزاء الصورة لزيادة التركيز على منطقة معينة.

يوضح مثال الكود التالي كيفية تحقيق ذلك باستخدام Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## حفظ الصور باسم WMF

Aspose.Words يوفر وظيفة لحفظ جميع الصور المتاحة في مستند إلى [WMF](https://docs.fileformat.com/image/wmf/)التنسيق أثناء التحويل DOCX إلى RTF.

يوضح مثال الكود التالي كيفية حفظ الصور باسم WMF مع RTF خيارات الحفظ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
