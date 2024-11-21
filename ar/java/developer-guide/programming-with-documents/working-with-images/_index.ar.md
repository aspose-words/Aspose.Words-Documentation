---
title: العمل مع الصور Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الصور
linktitle: العمل مع الصور
type: docs
description: "الأشكال الصورية في التفاصيل والسمات المتقدمة المقدمة من Aspose.Words for Java."
weight: 300
url: /ar/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ويتيح للمستعملين العمل مع الصور بطريقة مرنة للغاية. في هذه المادة، يمكنك استكشاف بعض إمكانيات العمل مع الصور

## How to Extract Images from a Document {#how-to-extract-images-from-a-document}

جميع الصور مخزنة في الداخل **Shape** ملصقات في وثيقة ولإستخراج جميع الصور أو الصور التي لها نوع محدد من الوثيقة، تتبع هذه الخطوات:

-استخدم [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) طريقة لاختيار كل ندوات الشيب
- يَتكررُ مِنْ خلال مجموعاتِ العقدِ الناتجةِ.
- تفقد [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) ممتلكات بوليان
- بيانات الصور المستقطعة باستخدام [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) ملكية
-احتفظي ببيانات الصور للملف

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## How to Insert Barcode on each Document Page {#how-to-insert-barcode-on-each-documen-page}

وهذا المثال يسمح لكم بإضافة نفس أو مختلف رموز الأعمدة على جميع أو صفحات محددة من وثيقة كلمة. لا توجد طريقة مباشرة لإضافة رموز الأعمدة على جميع صفحات الوثيقة ولكن يمكنك استخدام [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) و [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])() طرق الانتقال إلى أي قسم أو رؤساء/قدماء وإدراج صور الشوكودية كما ترى في الرمز التالي

ويبيّن المثال الرمزي التالي كيفية إدخال صورة من رموز الأعمدة في كل صفحة من صفحات الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## نسبة الصور {#lock-aspect-ratio-of-image}

والنسبة الجانبية للشكل الأرضي هي نسبة أحجامه بأبعاد مختلفة. يمكنك قفل النسبة الجانبية للصورة باستخدام [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). القيمة الافتراضية لنسبة الشكل تعتمد على [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). هو true for `ShapeType.Image` و false لأشكال أخرى

ويبين المثال الرمزي التالي كيفية العمل مع نسبة الجانب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## كيف تحصل على باوند من الشيب في النقاط {#how-to-get-actual-bounds-of-shape-in-points}

إذا كنت تريد الصندوق المقيد الفعلي للشكل كما هو مقدم على الصفحة، يمكنك تحقيق هذا باستخدام [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) ملكية

The following code example shows how to use this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## صور المحاصيل

The cropping of an image usually refers to the removal of the unwanted outer parts of an image to help improve the framing. وهي تستخدم أيضا في إزالة بعض أجزاء الصورة لزيادة التركيز على مجال معين.

ويبين المثال الرمزي التالي كيفية تحقيق ذلك باستخدام Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## الصور المنقذة

Aspose.Words توفير القدرة على العمل من أجل توفير جميع الصور المتاحة في وثيقة ما [WMF](https://docs.fileformat.com/image/wmf/)في الوقت الذي يحوّل فيه ( DOCX) إلى فرقة العمل.

The following code example shows how to save images as WMF with RTF save options:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
