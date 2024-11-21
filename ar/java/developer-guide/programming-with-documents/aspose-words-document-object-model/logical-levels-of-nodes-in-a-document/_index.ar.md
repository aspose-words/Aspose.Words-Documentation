---
title: المستويات المنطقية للنويدات في الوثيقة الواردة في الوثيقة Java
second_title: Aspose.Words for Java
articleTitle: المستويات المنطقية للنويدات في الوثيقة
linktitle: المستويات المنطقية للنويدات في الوثيقة
type: docs
description: "In Aspose.Words for Java وتشير الوثائق إلى المستويات المنطقية للعقد - أي مستوى الكتل، أو المستوى المباشر، أو مستوى الصفوف. The node level is used to describe the location in the document tree where the node is typically occur."
weight: 10
url: /ar/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

وتشير هذه الوثائق أحيانا إلى مجموعة من فصول العقيدة على أنها تنتمي إلى " المستوى " في وثيقة، مثل " المستوى غير الرسمي "، أو " المستوى غير المباشر " (المعروف أيضا باسم " الخط المباشر " )، أو " مستوى النمو ". وتتباين هذه المستويات في وثيقة ما منطقياً بحتاً ولا يعبر عنها صراحة الميراث أو غيره Aspose.Words DOM يعني. The node level is used to describe the place in the document tree where the node would typically occur.

وفي المادة السابقة، تحدثنا بالفعل عن العلاقة بين العقد والحقيقة القائلة بأنه لا يُسمح لكل عقدة أن تكون طفلا لأي عقد. على سبيل المثال، (سيل) لا يمكن أن تكون سوى طفلة راو، و(رو) لا يمكن أن تكون سوى طفلة من الطاولات، وهكذا. وتنطبق هذه العلاقات أيضا على التقسيم المنطقي للعقد إلى مستويات في الوثيقة.

وتصف الفروع التالية المستويات المنطقية للتعيينات في الأماكن Aspose.Words والفصول التي تنتمي إلى كل مستوى.

## مستوى الوثائق والقسم

ألف تتألف الوثيقة الكلمات من فرع واحد أو أكثر، يمثلها [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) الطبقة وفصلت عن بعضها A section can define its own page size, margins, orientation, number of text columns, and headers and footers.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) و [الباب](https://www.aspose.com/api/words/java/com.aspose.words/section) وتوجد في الجدول البياني التالي مواصفات المستوى.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

ويتضمن الفرع النص الرئيسي، فضلاً عن المرشدين والأقدام للصفحات الأولى، حتى وإن كانت غريبة. هذه " تدفقات " مختلفة من النص *stories*.

In Aspose.Words, the **Section** العقد يحتوي على [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) قصّة. The **Body** الجسم يخزن النص الرئيسي. The **HeaderFooter** الأشياء تخزن النص لكل رأس و قدم يتألف نص أي قصة من فقرات وجداول، على التوالي، ممثلة بـ **Paragraph** و **Table** أشياء من مستوى البلوك

إضافة إلى ذلك، لكل منها يمكن أن تتضمن الوثيقة المسرد الذي يمثله [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) عقيدة Aspose.Words. تتضمن الوثيقة المسردة [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), و [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) الدخول

**GlossaryDocument** تشمل [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) عُدد تمثل أنواعاً مختلفة من بنود الوثائق المسردة. كل واحد **BuildingBlock** تحتوي على أجزاء يمكن إدخالها وإزالتها وتنسخها في الوثائق.

## الرتبة المحلية

وتمثِّل العُمدات على مستوى البلوك حاويات لضبط المحتوى والمحتوى، ويمكن أن تُحَدَّم في العقدين التاليين في الوثيقة:

-الجسد
- رئيس
- فوتر
- حاشية
- تعليق
- Shape
- GroupShape
- Cell
- StructuredDocumentTag

وتمثّل الصفوف التالية عقداً على مستوى العمق:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) و [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), وهي أهم عقد على مستوى الكتل
- العلامات الكتابية، التي تحدث على مستوى الكتل وعلى المستوى الداخلي
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), التي تمثل علامات العرف ويمكن أن تحتوي على كل من المحتوى وضوابط المحتوى

ويبين الرسم البياني التالي العناصر على مستوى الكتلة.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## المستوى المحلي

وتمثِّل العُدد على المستوى المباشر المحتوى الفعلي للوثيقة ويمكن أن ترد في الحاويات التالية:

- الفقرة - الحاوية الأكثر شيوعا
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

وتُمثَّل العناصر التالية على المستوى المباشر:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - نسق النصوص بشكل مختلف
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) تمثل علامات الكتاب
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart, [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) تمثل الشروح
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) التي تمثل الشخصيات الميدانية [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) تمثيل حقول الكلمات
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) تمثل خصائص خاصة في الوثيقة
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) و [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) تمثل الأشكال والرسومات والصور وما إلى ذلك.
- SmartTag and StructuredDocument تمثّل علامة العرف

ويبين الرسم البياني التالي هيكل العقد على المستوى الداخلي.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

يَشْربُ في Microsoft Word تشمل أجهزة التشغيل الآلي للمكاتب، والصناديق النصية، والصور، والأشياء من طراز OLE، والضوابط المتعلقة بالنشاط X، وجميعها ممثَّلة باستخدام `Shape` الصف بعض الأشكال يمكن أن تحتوي أيضا على النص، لذلك شب عقد في Aspose.Words يمكن أن تحتوي على عقد من مستوى الكتل.

الشيكات يمكن تجميعها داخل بعضها البعض باستخدام Groupشظايا

{{% /alert %}}

{{% alert color="primary" %}}

ويمكن أن تتضمن حواشي وتعليقات نصاً، ومن ثم تُدرج فيه ملاحظات وتعليقات Aspose.Words يمكن أن تحتوي على عقد من مستوى الكتل.

{{% /alert %}}

## Table, Row, and Cell Node Level

The table consists of nodes of rows and cells. وترد عناصر الجدول في الفئات التالية:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) يمثل صف طاولة
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) يمثل خلية طاولة
- الوثائق الهيكلية تمثّل علامة العرف

ويبين الرسم البياني التالي الهياكل العقدية لمستويات الجدول والرو والخلية.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
