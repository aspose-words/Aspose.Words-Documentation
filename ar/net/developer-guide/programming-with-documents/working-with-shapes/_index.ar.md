---
title: العمل مع الأشكال في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الأشكال
linktitle: العمل مع الأشكال
description: "مقدمة إلى لغة ترميز الأشكال وإنشاء أشكال من أنواع مختلفة باستخدام C#."
type: docs
weight: 280
url: /ar/net/working-with-shapes/
---

يناقش هذا الموضوع كيفية العمل برمجيًا مع الأشكال باستخدام Aspose.Words.

تمثل الأشكال الموجودة في Aspose.Words كائنًا في طبقة الرسم، مثل الشكل التلقائي أو مربع النص أو الشكل الحر أو كائن OLE أو عنصر تحكم ActiveX أو الصورة. يمكن أن يحتوي مستند Word على شكل واحد أو أكثر من الأشكال المختلفة. يتم تمثيل الأشكال في Aspose.Words بواسطة فئة [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/).

## إدراج الأشكال باستخدام منشئ المستندات

يمكنك إدراج شكل سطري بنوع وحجم محددين وشكل عائم حر بالموضع والحجم ونوع التفاف النص المحدد في مستند باستخدام طريقة [InsertShape](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertshape/). تتيح طريقة **InsertShape** إدراج شكل DML في نموذج المستند. يجب حفظ المستند بالتنسيق الذي يدعم أشكال DML، وإلا سيتم تحويل هذه العقد إلى شكل VML أثناء حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج هذه الأنواع من الأشكال في المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## ضبط نسبة العرض إلى الارتفاع مغلقة

باستخدام Aspose.Words، يمكنك تحديد ما إذا كانت نسبة العرض إلى الارتفاع للشكل مقفلة من خلال خاصية [AspectRatioLocked](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/aspectratiolocked/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## تعيين تخطيط الشكل في الخلية

يمكنك أيضًا تحديد ما إذا كان سيتم عرض الشكل داخل الجدول أم خارجه باستخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/islayoutincell/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## إنشاء مستطيل زاوية القصاصة

يمكنك إنشاء مستطيل زاوية باستخدام Aspose.Words. أنواع الأشكال هي *SingleCornerSnipped، وTopCornerSnipped، وDiagonalCornersSnipped، وTopCornersOneRoundedOneSnipped، وSingleCornerRounded، وTopCornersRounded،* و*DiagonalCornersRounded.*

يتم إنشاء شكل DML باستخدام طريقة **InsertShape** مع أنواع الأشكال هذه. لا يمكن استخدام هذه الأنواع لإنشاء أشكال VML. تؤدي محاولة إنشاء شكل باستخدام المُنشئ العام لفئة "الشكل" إلى ظهور الاستثناء "NotSupportedException".

يوضح مثال التعليمات البرمجية التالي كيفية إدراج هذا النوع من الأشكال في المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## احصل على نقاط حدود الشكل الفعلية

باستخدام Aspose.Words API، يمكنك الحصول على موقع وحجم الشكل الذي يحتوي على الكتلة بالنقاط، بالنسبة إلى نقطة ارتكاز الشكل العلوي. للقيام بذلك، استخدم خاصية [BoundsInPoints](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/boundsinpoints/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## تحديد المرساة العمودية

يمكنك تحديد المحاذاة الرأسية للنص داخل الشكل باستخدام خاصية [VerticalAnchor](https://reference.aspose.com/words/ar/net/aspose.words.drawing/textbox/verticalanchor/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## كشف شكل SmartArt

يسمح Aspose.Words أيضًا باكتشاف ما إذا كان الشكل يحتوي على كائن `SmartArt`. للقيام بذلك، استخدم خاصية [HasSmartArt](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/hassmartart/).

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع خاصية **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## أدخل القاعدة الأفقية في المستند

يمكنك إدراج شكل قاعدة أفقي في مستند باستخدام طريقة [InsertHorizontalRule](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/inserthorizontalrule/).

يوضح مثال التعليمات البرمجية التالي كيفية القيام بذلك:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

يوفر Aspose.Words API خاصية [HorizontalRuleFormat](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/horizontalruleformat/) للوصول إلى خصائص شكل القاعدة الأفقية. تعرض فئة [HorizontalRuleFormat](https://reference.aspose.com/words/ar/net/aspose.words.drawing/horizontalruleformat/) الخصائص الأساسية مثل الارتفاع واللون وNoShade وما إلى ذلك لتنسيق القاعدة الأفقية.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## استيراد الأشكال باستخدام Math XML كأشكال إلى DOM

يمكنك استخدام الخاصية [ConvertShapeToOfficeMath](https://reference.aspose.com/words/ar/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) لتحويل الأشكال باستخدام EquationXML إلى كائنات Office Math. تتوافق القيمة الافتراضية لهذه الخاصية مع سلوك Microsoft Word، أي لا يتم تحويل الأشكال ذات المعادلة XML إلى كائنات رياضية في Office.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل الأشكال إلى كائنات Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
