---
title: العمل مع الأشكال في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الأشكال
linktitle: العمل مع الأشكال
description: "قم بإنشاء الأشكال والكائنات ole وإدارتها في مستند باستخدام Python."
type: docs
weight: 280
url: /ar/python-net/working-with-shapes/
---

يناقش هذا الموضوع كيفية العمل برمجيًا مع الأشكال باستخدام Aspose.Words.

تمثل الأشكال الموجودة في Aspose.Words كائنًا في طبقة الرسم، مثل الشكل التلقائي أو مربع النص أو الشكل الحر أو كائن OLE أو عنصر تحكم ActiveX أو الصورة. يمكن أن يحتوي مستند Word على شكل واحد أو أكثر من الأشكال المختلفة. يتم تمثيل أشكال المستند بواسطة فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## إدراج الأشكال باستخدام منشئ المستندات

يمكنك إدراج شكل سطري بنوع وحجم محددين وشكل عائم حر بالموضع والحجم ونوع التفاف النص المحدد في مستند باستخدام طريقة [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). تسمح طريقة [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) بإدراج شكل DML في نموذج المستند. يجب حفظ المستند بالتنسيق الذي يدعم أشكال DML، وإلا سيتم تحويل هذه العقد إلى شكل VML أثناء حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج هذه الأنواع من الأشكال في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## ضبط نسبة العرض إلى الارتفاع مغلقة

باستخدام Aspose.Words، يمكنك تحديد ما إذا كانت نسبة العرض إلى الارتفاع للشكل مقفلة من خلال خاصية [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## تعيين تخطيط الشكل في الخلية

يمكنك أيضًا تحديد ما إذا كان سيتم عرض الشكل داخل الجدول أم خارجه باستخدام خاصية [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## إنشاء مستطيل زاوية القصاصة

يمكنك إنشاء مستطيل زاوية باستخدام Aspose.Words. أنواع الأشكال هي [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped)، و[TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped)، و[DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped)، و[TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped)، و[SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded)، و[TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded)، و[DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

يتم إنشاء شكل DML باستخدام طريقة [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) مع أنواع الأشكال هذه. لا يمكن استخدام هذه الأنواع لإنشاء أشكال VML. تؤدي محاولة إنشاء الشكل باستخدام المنشئ العام لفئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) إلى ظهور الاستثناء "NotSupportedException".

يوضح مثال التعليمات البرمجية التالي كيفية إدراج هذا النوع من الأشكال في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## احصل على نقاط حدود الشكل الفعلية

باستخدام Aspose.Words API، يمكنك الحصول على موقع وحجم الشكل الذي يحتوي على الكتلة بالنقاط، بالنسبة إلى نقطة ارتكاز الشكل العلوي. للقيام بذلك، استخدم خاصية [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## تحديد المرساة العمودية

يمكنك تحديد المحاذاة الرأسية للنص داخل الشكل باستخدام خاصية [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## كشف شكل SmartArt

يسمح Aspose.Words أيضًا باكتشاف ما إذا كان الشكل يحتوي على كائن `SmartArt`. للقيام بذلك، استخدم خاصية [خاصية has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## أدخل القاعدة الأفقية في المستند

يمكنك إدراج شكل قاعدة أفقي في مستند باستخدام طريقة [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

يوضح مثال التعليمات البرمجية التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

يوفر Aspose.Words API خاصية [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) للوصول إلى خصائص شكل القاعدة الأفقية. تعرض فئة [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) الخصائص الأساسية مثل [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/) و[color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/) و[no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) وما إلى ذلك لتنسيق القاعدة الأفقية.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## قم بإدراج كائن OLE كرمز

يوفر Aspose.Words API وظيفة **Shape.insert_ole_object_as_icon** لإدراج كائن OLE مضمن أو مرتبط كرمز في المستند. تسمح هذه الوظيفة بتحديد ملف الرمز والتسمية التوضيحية. يجب اكتشاف نوع كائن `OLE` باستخدام امتداد الملف.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين إدراج كائن OLE كرمز في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

يجب أن يكون الحد الأقصى لحجم الرمز 32x32 للعرض الصحيح.

{{% /alert %}}

## استيراد الأشكال باستخدام Math XML كأشكال إلى DOM

يمكنك استخدام خاصية [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) لتحويل الأشكال باستخدام EquationXML إلى كائنات Office Math. تتوافق القيمة الافتراضية لهذه الخاصية مع سلوك MS Word، أي أن الأشكال ذات المعادلة XML لا يتم تحويلها إلى كائنات رياضية في Office.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل الأشكال إلى كائنات Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
