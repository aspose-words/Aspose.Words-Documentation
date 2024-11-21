---
title: العمل مع شابيس في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع شابيس
linktitle: العمل مع شابيس
type: docs
description: "مقدمة لتشكيل لغة الإشارة، وخلق أشكال من الأنواع المختلفة باستخدام Java."
weight: 280
url: /ar/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

يناقش هذا الموضوع كيفية العمل على نحو برنامجي مع الأشكال المستخدمة Aspose.Words.

الأشكال في Aspose.Words تمثّل جسماً في طبقة الرسم، مثل الأوتوماتشاب، وجهاز النص، والنسخ الحرّيّة، أو الجسم OLE، أو السيطرة على النفثالين، أو الصورة. ويمكن أن تتضمن الوثيقة الوردية شكلا أو أكثر من الأشكال المختلفة. تُمثّل شُعب الوثيقة بنص [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) الصف

## Insert Shape Using Document Builder

يمكن أن تُدخل شكلاً خطياً مع نوع وحجم محددين وشكل الحيز الحر مع الموقع المحدد وحجم وغلفة النص في وثيقة تستخدم [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) طريقة The **InsertShape** ويسمح هذا الأسلوب بإدخال شكل الـ DML في نموذج الوثيقة. The document must be save in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while documentving.

ويبين المثال الرمزي التالي كيفية إدراج هذه الأنواع من الأشكال في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Set Aspect Ratio Locked

استخدام Aspose.Words, ويمكنكم أن تحددوا ما إذا كانت نسبة جانب الشكل مقفلة من خلال [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) ملكية

ويبين المثال الرمزي التالي كيفية العمل مع **AspectRatioLocked** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## وضع شظايا في الخلية

يمكنك أيضاً تحديد ما إذا كان الشكل مظهر داخل طاولة أو خارجها باستخدام [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) ملكية

ويبين المثال الرمزي التالي كيفية العمل مع **IsLayoutInCell** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## مضافا إليها

يُمْكِنُ أَنْ تَجْعلَ a تنازل زاويةِ مِنْ خلال Aspose.Words. أصناف الشكل هي:? SingleCornerSnipped, TopCornersnipped, DiagonalCorners snipped, TopCornersOneRoundedOneSnipped, singleCornerRounded, TopCornersRounded,* and *DiagonalCornersRounded.*

The DML shape is created using **InsertShape** طريقة بهذه الأشكال ولا يمكن استخدام هذه الأنواع لخلق أشكال العنف ضد المرأة. محاولة لخلق الشكل من خلال استخدام المبني العام لفئة "الشراب" رفع استثناء "لا يمكن تفسيره"

ويبين المثال الرمزي التالي كيفية إدراج هذا النوع من الأشكال في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## الحصول على نقاط الظل الفعلية

استخدام Aspose.Words API, يمكنك الحصول على موقع وحجم الشكل الذي يحتوي على كتلة في النقاط، بالمقارنة مع مرساة الشكل الأعلى. للقيام بذلك، استخدام [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) ملكية

ويبين المثال الرمزي التالي كيفية العمل مع **BoundsInPoints** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## يرجى التحديد الرمزي

يمكنك أن تحدد النص التوافق الرأسي في شكل باستخدام [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) ملكية

ويبين المثال الرمزي التالي كيفية العمل مع **VerticalAnchor** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detect Smart Art Shape

Aspose.Words يسمح أيضا بالكشف إذا كان الشيب لديه `SmartArt` هدف للقيام بذلك، استخدام [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) ملكية

ويبين المثال الرمزي التالي كيفية العمل مع **HasSmartArt** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## الحكم الأفقي

يمكنك إدخال شكل القاعدة الأفقي في وثيقة تستخدم [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) طريقة

Aspose.Words API توفير [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) الممتلكات اللازمة للوصول إلى ممتلكات شكل القواعد الأفقي. The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) ويكشف الفصل عن الممتلكات الأساسية مثل المرتفع والكولور ونوشاد وما إلى ذلك لتشكيل قاعدة أفقية.

ويبين المثال الرمزي التالي كيفية وضعه **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
