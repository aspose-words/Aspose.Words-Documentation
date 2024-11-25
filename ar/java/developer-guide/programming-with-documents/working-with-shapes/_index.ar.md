---
title: العمل مع الأشكال في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الأشكال
linktitle: العمل مع الأشكال
type: docs
description: "مقدمة في تشكيل لغة الترميز، وإنشاء أشكال من أنواع مختلفة باستخدام Java."
weight: 280
url: /ar/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

يناقش هذا الموضوع كيفية العمل برمجيا مع الأشكال باستخدام Aspose.Words.

تمثل الأشكال في Aspose.Words كائنا في طبقة الرسم، مثل AutoShape أو مربع نص أو شكل حر أو OLE كائن أو عنصر تحكم أكتيفكس أو صورة. يمكن أن يحتوي مستند الكلمة على شكل واحد أو أكثر من الأشكال المختلفة. يتم تمثيل أشكال المستند بواسطة فئة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## أدخل الشكل باستخدام منشئ المستندات

يمكنك إدراج شكل مضمن بنوع وحجم محددين وشكل عائم حر مع الموضع والحجم ونوع التفاف النص المحدد في مستند باستخدام طريقة [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). تسمح طريقة **InsertShape** بإدراج شكل DML في نموذج المستند. يجب حفظ المستند بالتنسيق، الذي يدعم DML الأشكال، وإلا، سيتم تحويل هذه العقد إلى VML الشكل، أثناء حفظ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذه الأنواع من الأشكال في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## ضبط نسبة العرض إلى الارتفاع مقفلة

باستخدام Aspose.Words، يمكنك تحديد ما إذا كانت نسبة العرض إلى الارتفاع للشكل مؤمنة من خلال خاصية [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## تعيين تخطيط الشكل في الخلية

يمكنك أيضا تحديد ما إذا كان يتم عرض الشكل داخل جدول أو خارجه باستخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## إضافة زوايا مقصوص

يمكنك إنشاء مستطيل زاوية قصاصة باستخدام Aspose.Words. أنواع الأشكال هي *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* و *DiagonalCornersRounded.*

يتم إنشاء الشكل DML باستخدام طريقة **InsertShape** مع أنواع الأشكال هذه. لا يمكن استخدام هذه الأنواع لإنشاء VML الأشكال. محاولة إنشاء شكل باستخدام المنشئ العام لفئة" الشكل "يثير الاستثناء" NotSupportedException".

يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذا النوع من الأشكال في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## الحصول على نقاط حدود الشكل الفعلي

باستخدام Aspose.Words API، يمكنك الحصول على موقع وحجم الشكل الذي يحتوي على كتلة بالنقاط، بالنسبة إلى مرساة الشكل العلوي. للقيام بذلك، استخدم خاصية [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## حدد مرساة عمودية

يمكنك تحديد المحاذاة الرأسية للنص داخل شكل باستخدام خاصية [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## كشف SmartArt الشكل

Aspose.Words يسمح أيضا باكتشاف ما إذا كان الشكل يحتوي على كائن `SmartArt`. للقيام بذلك، استخدم خاصية [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع الخاصية **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## تنسيق القاعدة الأفقية

يمكنك إدراج شكل القاعدة الأفقية في مستند باستخدام طريقة [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API يوفر [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) خاصية للوصول إلى خصائص شكل القاعدة الأفقية. تعرض فئة [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) الخصائص الأساسية مثل الارتفاع واللون و NoShade وما إلى ذلك. لتنسيق قاعدة أفقية.

يوضح مثال الكود التالي كيفية تعيين **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
