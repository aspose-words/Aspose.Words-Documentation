---
title: المستويات المنطقية للعقد في المستند
second_title: Aspose.Words لـ Python via .NET
articleTitle: المستويات المنطقية للعقد في المستند
linktitle: المستويات المنطقية للعقد في المستند
type: docs
description: "في وثائق Aspose.Words for Python via .NET، تم ذكر المستويات المنطقية للعقد - مستوى الكتلة، أو المستوى المضمّن، أو مستوى الصف. يتم استخدام مستوى العقدة لوصف الموقع في شجرة المستندات حيث توجد العقدة عادةً."
weight: 10
url: /ar/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

تشير هذه الوثائق أحيانًا إلى مجموعة من فئات العقد على أنها تنتمي إلى "مستوى" في مستند، مثل "مستوى الكتلة" أو "المستوى المضمّن" (المعروف أيضًا باسم "المضمّن") أو العقد "على مستوى الصف".. يتم التمييز بين هذه المستويات في المستند بطريقة منطقية بحتة ولا يتم التعبير عنها صراحةً عن طريق الوراثة أو وسائل Aspose.Words DOM الأخرى. يتم استخدام مستوى العقدة لوصف المكان في شجرة المستندات حيث يمكن أن تحدث العقدة عادةً.

في المقالة السابقة، تحدثنا بالفعل عن العلاقة بين العقد وحقيقة أنه لا يُسمح لجميع العقد بأن تكون فرعًا لأي عقد. على سبيل المثال، يمكن أن يكون [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) فرعًا تابعًا لـ [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) فقط، ويمكن أن يكون [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) فرعًا [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) فقط، وهكذا. تنطبق هذه العلاقات أيضًا على التقسيم المنطقي للعقد إلى مستويات في المستند.

تصف الأقسام التالية المستويات المنطقية للعقد في Aspose.Words والفئات التي تنتمي إلى كل مستوى.

## المستند والقسم المستوى المنطقي

يتكون مستند Word من قسم واحد أو أكثر، ممثلة بفئة [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ومفصولة بفواصل أقسام. يمكن للقسم تحديد حجم الصفحة والهوامش والاتجاه وعدد أعمدة النص والرؤوس والتذييلات الخاصة به.

تحتوي العقد على مستوى [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) و[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) على البنية كما هو موضح في الرسم البياني التالي.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="المستند والقسم على مستوى Aspose-Words" style="width:700px"/>

يحتوي القسم على النص الرئيسي، بالإضافة إلى الرؤوس والتذييلات للصفحات الأولى والزوجية والفردية. تسمى هذه "التدفقات" المختلفة للنص *stories*.

في Aspose.Words، تحتوي عقدة [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) على عقد قصة [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) و[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). يقوم كائن [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) بتخزين النص الرئيسي. تقوم كائنات [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) بتخزين النص لكل رأس وتذييل. يتكون نص أي قصة من فقرات وجداول، يتم تمثيلها على التوالي بواسطة كائنات [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) على مستوى الكتلة.

بالإضافة إلى ذلك، يمكن أن يحتوي كل مستند Word على مسرد مصطلحات، والذي يتم تمثيله بواسطة عقدة [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) في Aspose.Words. يحتوي مستند المسرد على إدخالات [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) و[BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

يتضمن [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) عقد [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) تمثل أنواعًا مختلفة من إدخالات مستند المسرد. يحتوي كل [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) على أقسام يمكن إدراجها وإزالتها ونسخها في المستندات.

## كتلة المستوى المنطقي

تمثل العقد على مستوى الكتلة حاويات للمحتوى وعناصر تحكم المحتوى، ويمكن أن تحدث في العقد الفرعية لشجرة الوثيقة في العقد التالية:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

يتم تمثيل العقد على مستوى الكتلة بالفئات التالية:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، وهما العقدتان الأكثر أهمية على مستوى الكتلة
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/)، والذي يحدث على مستوى الكتلة وعلى المستوى المضمّن
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)، والتي تمثل علامات مخصصة ويمكن أن تحتوي على كل من عناصر التحكم في المحتوى والمحتوى

يوضح الرسم البياني التالي عناصر مستوى الكتلة.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="مستوى الكتلة - وضع الكلمات" style="width:550px"/>

## المستوى المنطقي المضمن

تمثل العقد ذات المستوى المضمن المحتوى الفعلي للمستند ويمكن تضمينها في الحاويات التالية:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – الحاوية الأكثر شيوعًا
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

يتم تمثيل عناصر المستوى المضمّن بالفئات التالية:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) - مجموعات من النص بتنسيق مختلف
- يمثل [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) و[BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) الإشارات المرجعية
- تمثل [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) و[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) و[Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) التعليقات التوضيحية
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) و[FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/) و[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) التي تمثل أحرف الحقل، و[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) تمثل حقول Word
- يمثل [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) أحرفًا خاصة في المستند
- يمثل [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) و[GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) الأشكال والرسومات والصور وما إلى ذلك.
- يمثل [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) و[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) ترميزًا مخصصًا

يوضح الرسم البياني التالي بنية العقد ذات المستوى المضمن.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="مضمونة على مستوى aspose-الكلمات" style="width:785px"/>

{{% alert color="primary" %}}

تتضمن الأشكال في Microsoft Word الأشكال التلقائية لـ Office Art، ومربعات النص، والصور، وكائنات OLE، وعناصر تحكم ActiveX، والتي يتم تمثيلها جميعًا باستخدام فئة `Shape`. يمكن أن تحتوي بعض الأشكال أيضًا على نص، لذلك يمكن أن تحتوي عقد الشكل في Aspose.Words على عقد على مستوى الكتلة.

يمكن تجميع الأشكال داخل بعضها البعض باستخدام عقد [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

يمكن أن تحتوي الحواشي السفلية والتعليقات على نص، وبالتالي يمكن أن تحتوي عقد [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) و[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) في Aspose.Words على عقد على مستوى الكتلة.

{{% /alert %}}

## مستوى عقدة الجدول والصف والخلية

يتكون الجدول من عقد من الصفوف والخلايا. يتم تمثيل عناصر [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) بالفئات التالية:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) يمثل صف الجدول
- يمثل [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) خلية جدول
- يمثل [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) العلامات المخصصة

يوضح الرسم البياني التالي بنيات العقد لمستويات [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="جدول-صف-خلية-وضع الكلمات" style="width:910px"/>
