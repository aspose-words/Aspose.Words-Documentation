---
title: Aspose.Words DOM
second_title: Aspose.Words لـ Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) هو تمثيل في الذاكرة لمستند Word. قراءة ومعالجة وتعديل محتوى وتنسيق مستند Word باستخدام Python."
weight: 10
url: /ar/python-net/aspose-words-document-object-model/
---

يعد Aspose.Words Document Object Model (DOM) تمثيلاً في الذاكرة لمستند Word. يسمح لك Aspose.Words DOM بقراءة محتوى وتنسيق مستند Word ومعالجته وتعديله برمجيًا.

يصف هذا القسم الفئات الرئيسية لـ Aspose.Words DOM وعلاقاتها. باستخدام فئات Aspose.Words DOM، يمكنك الحصول على وصول برمجي إلى عناصر المستند وتنسيقه.

## قم بإنشاء شجرة كائنات `Document` {#create-a-document-objects-tree}

عند قراءة مستند في Aspose.Words DOM، يتم إنشاء شجرة كائنات وأنواع مختلفة من عناصر المستند المصدر لها كائنات شجرة DOM خاصة بها ذات خصائص مختلفة.

### بناء شجرة عقد الوثيقة {#build-document-nodes-tree}

عندما يقرأ Aspose.Words مستند Word في الذاكرة، فإنه يقوم بإنشاء كائنات من أنواع مختلفة تمثل عناصر المستند المختلفة. كل تشغيل لنص أو فقرة أو جدول أو قسم هو عقدة، وحتى الوثيقة نفسها هي عقدة. يحدد Aspose.Words فئة لكل نوع عقدة مستند.

تتبع شجرة المستندات في Aspose.Words نمط التصميم المركب:

- جميع فئات العقد مستمدة في النهاية من فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)، وهي الفئة الأساسية في Aspose.Words Document Object Model.
- العقد التي يمكن أن تحتوي على عقد أخرى، على سبيل المثال، [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) أو [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)، والتي بدورها مشتقة من فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

يوضح الرسم البياني أدناه الوراثة بين فئات العقد في Aspose.Words Document Object Model (DOM). أسماء الفئات المجردة مكتوبة بخط مائل.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-الكلمات-دوم" style="width:700px"/>

{{% alert color="primary" %}}

يحتوي Aspose.Words DOM أيضًا على الفئات غير العقدية، مثل [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) أو [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)، والتي تُستخدم لتخصيص المظهر والأنماط داخل المستند. لا تظهر هذه الفئات في هذا المخطط على أنها غير موروثة من فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

لنلقي نظرة على مثال. تُظهر الصورة التالية مستند Microsoft Word بأنواع مختلفة من المحتوى.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="مستند-مثال-يطرح-كلمات" style="width:700px"/>

عند قراءة المستند أعلاه في Aspose.Words DOM، يتم إنشاء شجرة الكائنات، كما هو موضح في المخطط أدناه.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="دوم-Aspose-الكلمات" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/)، [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)، [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)، [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)، وجميع علامات الحذف الأخرى في الرسم التخطيطي هي كائنات Aspose.Words تمثل عناصر مستند Word.

### احصل على ملف `Node` من النوع {#get-a-node-type}

على الرغم من أن فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) كافية لتمييز العقد المختلفة عن بعضها البعض، إلا أن Aspose.Words توفر تعداد [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) لتبسيط بعض مهام API، مثل تحديد العقد من نوع معين.

يمكن الحصول على نوع كل عقدة باستخدام خاصية [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). تقوم هذه الخاصية بإرجاع قيمة تعداد [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). على سبيل المثال، تقوم عقدة الفقرة الممثلة بفئة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) بإرجاع [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph)، وتقوم عقدة الجدول الممثلة بفئة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) بإرجاع [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

يوضح المثال التالي كيفية الحصول على نوع العقدة باستخدام تعداد [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## التنقل في شجرة المستندات {#document-tree-navigation}

يمثل Aspose.Words المستند كشجرة عقدة، مما يتيح لك التنقل بين العقد. يصف هذا القسم كيفية استكشاف شجرة المستندات والتنقل فيها في Aspose.Words.

عند فتح نموذج المستند، الذي تم تقديمه سابقًا، في Document Explorer، تظهر شجرة العقدة تمامًا كما تم تمثيلها في Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="مستند في مستند مستكشف" style="width:680px"/>

{{% alert color="primary" %}}

يمكنك التعرف على نموذج المشروع "Document Explorer" على [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### علاقات عقد الوثيقة {#document-nodes-relationships}

العقد الموجودة في الشجرة لها علاقات فيما بينها:

- العقدة التي تحتوي على عقدة أخرى هي *parent.*
- العقدة الموجودة في العقدة الأصلية هي عقد *child.* الفرعية لنفس الأصل وهي عقد *sibling*.
- عقدة *root* هي دائمًا عقدة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

العقد التي يمكن أن تحتوي على عقد أخرى مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)، وجميع العقد مشتقة في النهاية من فئة [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). توفر هاتان الفئتان الأساسيتان طرقًا وخصائص شائعة للتنقل وتعديل بنية الشجرة.

يُظهر الرسم التخطيطي لكائن UML التالي عدة عقد من نموذج المستند وعلاقاتها ببعضها البعض عبر خصائص الأصل والفرع والأخوة:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="وثيقة-العقد-العلاقات-تضع الكلمات" style="width:370px"/>

#### المستند هو مالك العقدة

تنتمي العقدة دائمًا إلى مستند معين، حتى لو تم إنشاؤها للتو أو إزالتها من الشجرة، لأنه يتم تخزين الهياكل الحيوية على مستوى المستند مثل الأنماط والقوائم في عقدة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). على سبيل المثال، ليس من الممكن أن يكون لديك [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) بدون [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) لأن كل فقرة لها نمط معين يتم تعريفه عالميًا للمستند. يتم استخدام هذه القاعدة عند إنشاء أي عقد جديدة. تتطلب إضافة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) جديد مباشرةً إلى ملف DOM تمرير كائن مستند إلى المُنشئ.

{{% alert color="primary" %}}

تقوم الخاصية [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) بإرجاع المستند الذي تنتمي إليه العقدة.

{{% /alert %}}

عند إنشاء فقرة جديدة باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)، يكون لدى المنشئ دائمًا فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) مرتبطة بها من خلال خاصية [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

يوضح مثال التعليمات البرمجية التالي أنه عند إنشاء أي عقدة، يتم دائمًا تحديد المستند الذي سيمتلك العقدة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### عقدة الأم

كل عقدة لها أصل محدد بواسطة خاصية [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). لا تحتوي العقدة على عقدة أصل، أي أن [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) هو *None*، في الحالات التالية:

- تم إنشاء العقدة للتو ولم تتم إضافتها إلى الشجرة بعد.
- تمت إزالة العقدة من الشجرة.
- هذه هي عقدة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) الجذرية التي لا تحتوي دائمًا على عقدة أصل.

يمكنك إزالة عقدة من العقدة الأصلية عن طريق استدعاء طريقة [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى العقدة الأصلية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### العقد الطفل

الطريقة الأكثر فعالية للوصول إلى العقد الفرعية لـ [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) هي عبر خصائص [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) و[last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) التي تُرجع العقد الفرعية الأولى والأخيرة، على التوالي. في حالة عدم وجود عقد فرعية، تقوم هذه الخصائص بإرجاع *None*.

يوفر [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) أيضًا مجموعة [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) التي تتيح الوصول المفهرس أو التعدادي إلى العقد الفرعية. تقوم طريقة [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) بإرجاع مجموعة مباشرة من العقد، مما يعني أنه كلما تم تغيير المستند، كما هو الحال عند إزالة العقد أو إضافتها، يتم تحديث مجموعة **get_child_nodes** تلقائيًا.

إذا لم يكن للعقدة أي فرع، فإن طريقة **get_child_nodes** ترجع مجموعة فارغة. يمكنك التحقق مما إذا كان [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) يحتوي على أي عقد فرعية باستخدام خاصية [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

يوضح مثال التعليمات البرمجية التالي كيفية تعداد العقد الفرعية المباشرة لـ [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) باستخدام العداد الذي توفره مجموعة **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### العقد الأخوة

يمكنك الحصول على العقدة التي تسبق أو تتبع عقدة معينة مباشرة باستخدام خصائص [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) و[next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/)، على التوالي. إذا كانت العقدة هي الابن الأخير للأصل، فإن خاصية [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) هي *None*. على العكس من ذلك، إذا كانت العقدة هي الابن الأول لأصلها، فإن خاصية [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) هي *None*.

يوضح مثال التعليمات البرمجية التالي كيفية زيارة جميع العقد الفرعية المباشرة وغير المباشرة للعقدة المركبة بكفاءة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### الوصول المكتوب إلى العقد التابعة والأصل {#typed-access-to-child-and-parent-nodes}

لقد ناقشنا حتى الآن الخصائص التي تُرجع أحد الأنواع الأساسية – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) أو [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). ولكن في بعض الأحيان توجد مواقف قد تحتاج فيها إلى إرسال القيم إلى فئة عقدة معينة، مثل [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) أو [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). أي أنه لا يمكنك الابتعاد تمامًا عن عملية الصب عند العمل باستخدام Aspose.Words DOM المركب.

لتقليل الحاجة إلى الإرسال، توفر معظم فئات Aspose.Words خصائص ومجموعات توفر وصولاً مكتوبًا بقوة. هناك ثلاثة أنماط أساسية للوصول المكتوب:

- تعرض العقدة الأصلية خصائص **first_XXX** و**last_XXX** المكتوبة. على سبيل المثال، يحتوي ملف [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) على خصائص [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) و[last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). وبالمثل، يتمتع [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) بخصائص مثل [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/) و[last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) وغيرها.
- تعرض العقدة الأصلية مجموعة مكتوبة من العقد الفرعية، مثل [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) و[Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) وغيرها.
- توفر العقدة الفرعية وصولاً مكتوبًا إلى العقدة الأصلية، مثل [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/) و[Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) وغيرها.

الخصائص المكتوبة هي مجرد اختصارات مفيدة توفر أحيانًا وصولاً أسهل من الخصائص العامة الموروثة من [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) و[CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام الخصائص المكتوبة للوصول إلى عقد شجرة المستندات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
