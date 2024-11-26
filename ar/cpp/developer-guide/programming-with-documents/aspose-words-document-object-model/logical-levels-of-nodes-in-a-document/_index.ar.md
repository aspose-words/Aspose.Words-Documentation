---
title: المستويات المنطقية للعقد في مستند في C++
second_title: Aspose.Words ل C++
articleTitle: المستويات المنطقية للعقد في المستند
linktitle: المستويات المنطقية للعقد في المستند
type: docs
description: "في Aspose.Words ل C++ ذكرت الوثائق المستويات المنطقية للعقد-مستوى الكتلة أو المستوى المضمن أو مستوى الصف. يتم استخدام مستوى العقدة لوصف الموقع في شجرة المستندات حيث تحدث العقدة عادة."
weight: 10
url: /ar/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

تشير هذه الوثائق أحيانا إلى مجموعة من فئات العقدة على أنها تنتمي إلى "مستوى" في مستند، مثل "مستوى الكتلة" أو "المستوى المضمن" (المعروف أيضا باسم "مضمن") أو العقد "على مستوى الصف". يتم تمييز هذه المستويات في المستند منطقيا بحتا ولا يتم التعبير عنها صراحة بالميراث أو وسائل Aspose.Words DOM الأخرى. يتم استخدام مستوى العقدة لوصف المكان في شجرة المستندات حيث تحدث العقدة عادة.

في المقالة السابقة، تحدثنا بالفعل عن العلاقة بين العقد وحقيقة أنه لا يسمح لجميع العقد أن تكون طفلا في أي عقد. على سبيل المثال، يمكن أن تكون الخلية فقط طفل صف، ويمكن أن يكون الصف فقط طفل جدول، وهكذا. تنطبق هذه العلاقات أيضا على التقسيم المنطقي للعقد إلى مستويات في المستند.

تصف الأقسام التالية المستويات المنطقية للعقد في Aspose.Words والفئات التي تنتمي إلى كل مستوى.

## المستند والقسم المستوى المنطقي

يتكون مستند الكلمة من قسم واحد أو أكثر، يمثله فئة [Section](https://reference.aspose.com/words/cpp/aspose.words/section) ويفصل بينها فواصل مقطعية. يمكن للقسم تحديد حجم الصفحة والهوامش والاتجاه وعدد أعمدة النص والرؤوس والتذييلات الخاصة به.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) و [الباب](https://www.aspose.com/api/words/cpp/aspose.words/section/) تحتوي عقد المستوى على الهيكل كما هو موضح في الرسم البياني التالي.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

يحتوي القسم على النص الرئيسي، بالإضافة إلى الرؤوس والتذييلات للصفحات الأولى والزوجية والغريبة. تسمى هذه "التدفقات" المختلفة للنص *stories*.

في Aspose.Words، تحتوي العقدة **Section** على عقدي القصة [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) و [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). الكائن **Body** يخزن النص الرئيسي. الكائنات **HeaderFooter** تخزين النص لكل رأس وتذييل الصفحة. يتكون نص أي قصة من فقرات وجداول، ممثلة على التوالي بالكائنات **Paragraph** و **Table** من مستوى الكتلة.

بالإضافة إلى ذلك، يمكن أن تحتوي كل وثيقة كلمة على مسرد، والذي يمثله [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) عقدة في Aspose.Words. تحتوي وثيقة المسرد على إدخالات [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/) و [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) و [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## كتلة المستوى المنطقي

تمثل العقد على مستوى الكتلة حاويات لعناصر تحكم المحتوى والمحتوى، ويمكن أن تحدث في العقد الفرعية لشجرة المستندات في العقد التالية:

- الجسم
- رأس
- تذييل الصفحة
- حاشية
- التعليق
- الشكل
- GroupShape
- الخلية
- StructuredDocumentTag

يتم تمثيل العقد على مستوى الكتلة بالفئات التالية:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) و [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)، وهما أهم عقد على مستوى الكتلة
- الإشارات المرجعية، والتي تحدث على مستوى الكتلة وعلى المستوى المضمن
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/)، والتي تمثل ترميزا مخصصا ويمكن أن تحتوي على عناصر تحكم في المحتوى والمحتوى

يوضح الرسم البياني التالي عناصر مستوى الكتلة.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## المستوى المنطقي المضمن

تمثل العقد ذات المستوى المضمن المحتوى الفعلي للمستند ويمكن احتواؤها في الحاويات التالية:

- الفقرة-الحاوية الأكثر شيوعا
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

يتم تمثيل عناصر المستوى المضمن بالفئات التالية:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - تشغيل النص المنسق بشكل مختلف
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) و [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) تمثل الإشارات المرجعية
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) و [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) تمثل الشروح
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) التي تمثل أحرف الحقل، و [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) تمثل حقول الكلمات
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) يمثل الأحرف الخاصة في المستند
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) و [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) تمثل الأشكال والرسومات والصور وما إلى ذلك.
- SmartTag و StructuredDocumentTag تمثل الترميز المخصص

يوضح الرسم البياني التالي بنية العقد ذات المستوى المضمن.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

تتضمن الأشكال في Microsoft Word فن المكتب AutoShapes ومربعات النص والصور وكائنات OLE وعناصر تحكم أكتيفكس، وكلها ممثلة باستخدام فئة `Shape`. يمكن أن تحتوي بعض الأشكال أيضا على نص، لذلك يمكن أن تحتوي عقد الشكل في Aspose.Words على عقد على مستوى الكتلة.

يمكن تجميع الأشكال داخل بعضها البعض باستخدام GroupShape العقد.

{{% /alert %}}

{{% alert color="primary" %}}

يمكن أن تحتوي الحواشي السفلية والتعليقات على نص، وبالتالي يمكن أن تحتوي عقد الحاشية السفلية والتعليق في Aspose.Words على عقد على مستوى الكتلة.

{{% /alert %}}

## مستوى عقدة الجدول والصف والخلية

يتكون الجدول من عقد الصفوف والخلايا. يتم تمثيل عناصر الجدول بالفئات التالية:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) يمثل صف جدول
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) يمثل خلية جدول
- StructuredDocumentTag تمثل الترميز المخصص

يوضح الرسم البياني التالي هياكل العقدة لمستويات الجدول والصف والخلية.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
