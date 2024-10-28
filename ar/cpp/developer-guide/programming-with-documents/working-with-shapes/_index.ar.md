---
title: العمل مع الأشكال في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الأشكال
linktitle: العمل مع الأشكال
type: docs
description: "مقدمة في تشكيل لغة الترميز، وإنشاء أشكال من أنواع مختلفة باستخدام C++."
weight: 280
url: /ar/cpp/working-with-shapes/
---

يناقش هذا الموضوع كيفية العمل برمجيا مع الأشكال باستخدام Aspose.Words.

تمثل الأشكال في Aspose.Words كائنا في طبقة الرسم، مثل AutoShape أو مربع نص أو شكل حر أو OLE كائن أو عنصر تحكم أكتيفكس أو صورة. يمكن أن يحتوي مستند الكلمة على شكل واحد أو أكثر من الأشكال المختلفة. يتم تمثيل أشكال المستند بواسطة فئة [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## أدخل الشكل باستخدام منشئ المستندات

يمكنك إدراج شكل مضمن بنوع وحجم محددين وشكل عائم حر مع الموضع والحجم ونوع التفاف النص المحدد في مستند باستخدام طريقة [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). تسمح طريقة **InsertShape** بإدراج شكل DML في نموذج المستند. يجب حفظ المستند بالتنسيق، الذي يدعم DML الأشكال، وإلا، سيتم تحويل هذه العقد إلى VML الشكل، أثناء حفظ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذه الأنواع من الأشكال في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## ضبط نسبة العرض إلى الارتفاع مقفلة

باستخدام Aspose.Words، يمكنك تحديد ما إذا كانت نسبة العرض إلى الارتفاع للشكل مؤمنة من خلال خاصية [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## تعيين تخطيط الشكل في الخلية

يمكنك أيضا تحديد ما إذا كان يتم عرض الشكل داخل جدول أو خارجه باستخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## إنشاء قصاصة الزاوية المستطيل

يمكنك إنشاء مستطيل زاوية قصاصة باستخدام Aspose.Words. أنواع الأشكال هي *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* و *DiagonalCornersRounded.*

يتم إنشاء الشكل DML باستخدام طريقة **InsertShape** مع أنواع الأشكال هذه. لا يمكن استخدام هذه الأنواع لإنشاء VML الأشكال. محاولة إنشاء شكل باستخدام المنشئ العام لفئة" الشكل "يثير الاستثناء" NotSupportedException".

يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذا النوع من الأشكال في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## الحصول على نقاط حدود الشكل الفعلي

باستخدام Aspose.Words API، يمكنك الحصول على موقع وحجم الشكل الذي يحتوي على كتلة بالنقاط، بالنسبة إلى مرساة الشكل العلوي. للقيام بذلك، استخدم خاصية [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## تنسيق القاعدة الأفقية

Aspose.Words API يوفر خاصية [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) للوصول إلى خصائص شكل القاعدة الأفقية. تعرض فئة **HorizontalRuleFormat** الخصائص الأساسية مثل الارتفاع واللون والظل وما إلى ذلك. لتنسيق قاعدة أفقية.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## إدراج OLE كائن كرمز

Aspose.Words API يوفر **Shape** {**InsertOleObjectAsIcon** وظيفة لإدراج كائن OLE مضمن أو مرتبط كرمز في المستند. تسمح هذه الوظيفة بتحديد ملف الرمز والتسمية التوضيحية. يجب الكشف عن نوع الكائن `OLE` باستخدام امتداد الملف.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين إدراج OLE كائن كرمز في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

يجب أن يكون الحد الأقصى لحجم الرمز 32 * 32 للعرض الصحيح.

{{% /alert %}}
