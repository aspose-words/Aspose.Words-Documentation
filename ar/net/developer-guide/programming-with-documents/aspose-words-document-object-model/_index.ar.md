---
title: Aspose.Words Document Object Model (DOM) في C#
second_title: Aspose.Words لـ .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) هو تمثيل في الذاكرة لمستند Word. قراءة ومعالجة وتعديل محتوى وتنسيق مستند Word باستخدام C#."
weight: 10
url: /ar/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

يعد Aspose.Words Document Object Model (DOM) تمثيلاً في الذاكرة لمستند Word. يسمح لك Aspose.Words DOM بقراءة محتوى وتنسيق مستند Word ومعالجته وتعديله برمجيًا.

يصف هذا القسم الفئات الرئيسية لـ Aspose.Words DOM وعلاقاتها. باستخدام فئات Aspose.Words DOM، يمكنك الحصول على وصول برمجي إلى عناصر المستند وتنسيقه.

## قم بإنشاء شجرة كائنات `Document` {#create-a-document-objects-tree}

عند قراءة مستند في Aspose.Words DOM، يتم إنشاء شجرة كائنات وأنواع مختلفة من عناصر المستند المصدر لها كائنات شجرة DOM خاصة بها ذات خصائص مختلفة.

### بناء شجرة عقد الوثيقة {#build-document-nodes-tree}

عندما يقرأ Aspose.Words مستند Word في الذاكرة، فإنه يقوم بإنشاء كائنات من أنواع مختلفة تمثل عناصر المستند المختلفة. كل تشغيل لنص أو فقرة أو جدول أو قسم هو عقدة، وحتى الوثيقة نفسها هي عقدة. يحدد Aspose.Words فئة لكل نوع عقدة مستند.

تتبع شجرة المستندات في Aspose.Words نمط التصميم المركب:

- جميع فئات العقد مستمدة في النهاية من فئة [Node](https://reference.aspose.com/words/ar/net/aspose.words/node/)، وهي الفئة الأساسية في Aspose.Words Document Object Model.
- العقد التي يمكن أن تحتوي على عقد أخرى، على سبيل المثال، **Section** أو **Paragraph**، مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/)، والتي بدورها مشتقة من فئة **Node**.

يوضح الرسم البياني أدناه الوراثة بين فئات العقد في Aspose.Words Document Object Model (DOM). أسماء الفئات المجردة مكتوبة بخط مائل.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-الكلمات-دوم" style="width:700px"/>

{{% alert color="primary" %}}

يحتوي Aspose.Words DOM أيضًا على الفئات غير العقدية، مثل [Style](https://reference.aspose.com/words/ar/net/aspose.words/style/) أو [Font](https://reference.aspose.com/words/ar/net/aspose.words/font/)، والتي تُستخدم لتخصيص المظهر والأنماط داخل المستند. لا تظهر هذه الفئات في هذا المخطط على أنها غير موروثة من فئة `Node`.

{{% /alert %}}

لنلقي نظرة على مثال. تُظهر الصورة التالية مستند Microsoft Word بأنواع مختلفة من المحتوى.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="مستند-مثال-يطرح-كلمات" style="width:700px"/>

عند قراءة المستند أعلاه في Aspose.Words DOM، يتم إنشاء شجرة الكائنات، كما هو موضح في المخطط أدناه.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="دوم-Aspose-الكلمات" style="width:700px"/>

[Document](https://reference.aspose.com/words/ar/net/aspose.words/document/)، [Section](https://reference.aspose.com/words/ar/net/aspose.words/section/)، [Paragraph](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/)، [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/)، [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/)، وجميع علامات الحذف الأخرى في الرسم التخطيطي هي كائنات Aspose.Words تمثل عناصر مستند Word.

### احصل على ملف `Node` من النوع {#get-a-node-type}

على الرغم من أن فئة [Node](https://reference.aspose.com/words/ar/net/aspose.words/node/) كافية لتمييز العقد المختلفة عن بعضها البعض، إلا أن Aspose.Words توفر تعداد [NodeType](https://reference.aspose.com/words/ar/net/aspose.words/node/nodetype/) لتبسيط بعض مهام API، مثل تحديد العقد من نوع معين.

يمكن الحصول على نوع كل عقدة باستخدام خاصية [NodeType](https://reference.aspose.com/words/ar/net/aspose.words/node/nodetype/). تقوم هذه الخاصية بإرجاع قيمة تعداد **NodeType**. على سبيل المثال، تقوم عقدة الفقرة الممثلة بفئة **Paragraph** بإرجاع **NodeType**.**Paragraph**، وترجع عقدة الجدول الممثلة بفئة **Table** **NodeType**.**Table**.

يوضح المثال التالي كيفية الحصول على نوع العقدة باستخدام تعداد **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## التنقل في شجرة المستندات {#document-tree-navigation}

يمثل Aspose.Words المستند كشجرة عقدة، مما يتيح لك التنقل بين العقد. يصف هذا القسم كيفية استكشاف شجرة المستندات والتنقل فيها في Aspose.Words.

عند فتح نموذج المستند، الذي تم تقديمه سابقًا، في Document Explorer، تظهر شجرة العقدة تمامًا كما تم تمثيلها في Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="مستند داخل مستند مستكشف" style="width:680px"/>

{{% alert color="primary" %}}

يمكنك التعرف على نموذج المشروع "Document Explorer" على [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### علاقات عقدة المستند {#document-nodes-relationships}

العقد الموجودة في الشجرة لها علاقات فيما بينها:

- العقدة التي تحتوي على عقدة أخرى هي *parent.*
- العقدة الموجودة في العقدة الأصلية هي عقد *child.* الفرعية لنفس الأصل وهي عقد *sibling*.
- عقدة *root* هي دائمًا عقدة [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/).

العقد التي يمكن أن تحتوي على عقد أخرى مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/)، وجميع العقد مشتقة في النهاية من فئة [Node](https://reference.aspose.com/words/ar/net/aspose.words/node/). توفر هاتان الفئتان الأساسيتان طرقًا وخصائص شائعة للتنقل وتعديل بنية الشجرة.

يُظهر الرسم التخطيطي لكائن UML التالي عدة عقد من نموذج المستند وعلاقاتها ببعضها البعض عبر خصائص الأصل والفرع والأخوة:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="وثيقة-العقد-العلاقات-تضع الكلمات" style="width:370px"/>

#### المستند هو مالك العقدة

تنتمي العقدة دائمًا إلى مستند معين، حتى لو تم إنشاؤها للتو أو إزالتها من الشجرة، لأنه يتم تخزين الهياكل الحيوية على مستوى المستند مثل الأنماط والقوائم في عقدة **Document**. على سبيل المثال، ليس من الممكن أن يكون لديك **Paragraph** بدون **Document** لأن كل فقرة لها نمط معين يتم تعريفه عالميًا للمستند. يتم استخدام هذه القاعدة عند إنشاء أي عقد جديدة. تتطلب إضافة **Paragraph** جديد مباشرةً إلى ملف DOM تمرير كائن مستند إلى المُنشئ.

{{% alert color="primary" %}}

تقوم الخاصية [Node.Document](https://reference.aspose.com/words/ar/net/aspose.words/node/document/) بإرجاع المستند الذي تنتمي إليه العقدة.

{{% /alert %}}

عند إنشاء فقرة جديدة باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/)، يكون لدى المنشئ دائمًا فئة **Document** مرتبطة بها من خلال خاصية [DocumentBuilder.Document](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/document/).

يوضح مثال التعليمات البرمجية التالي أنه عند إنشاء أي عقدة، يتم دائمًا تحديد المستند الذي سيمتلك العقدة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### عقدة الأم

كل عقدة لها أصل محدد بواسطة خاصية [ParentNode](https://reference.aspose.com/words/ar/net/aspose.words/node/parentnode/). لا تحتوي العقدة على عقدة أصل، أي أن **ParentNode** تكون فارغة، في الحالات التالية:

- تم إنشاء العقدة للتو ولم تتم إضافتها إلى الشجرة بعد.
- تمت إزالة العقدة من الشجرة.
- هذه هي عقدة **Document** الجذرية التي تحتوي دائمًا على عقدة أصل فارغة.

يمكنك إزالة عقدة من العقدة الأصلية عن طريق استدعاء طريقة [Remove](https://reference.aspose.com/words/ar/net/aspose.words/node/remove/). يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى العقدة الأصلية:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### العقد الطفل

الطريقة الأكثر فعالية للوصول إلى العقد الفرعية لـ [CompositeNode](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/) هي عبر خصائص [FirstChild](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/firstchild/) و[LastChild](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/lastchild/) التي تُرجع العقد الفرعية الأولى والأخيرة، على التوالي. في حالة عدم وجود عقد فرعية، تقوم هذه الخصائص بإرجاع *null*.

يوفر **CompositeNode** أيضًا طريقة [GetChildNodes](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/getchildnodes/) التي تتيح الوصول المفهرس أو التعدادي إلى العقد الفرعية. خاصية **ChildNodes** عبارة عن مجموعة مباشرة من العقد، مما يعني أنه كلما تم تغيير المستند، كما هو الحال عند إزالة العقد أو إضافتها، يتم تحديث مجموعة **ChildNodes** تلقائيًا.

إذا لم يكن للعقدة أي فرع، فإن خاصية **ChildNodes** ترجع مجموعة فارغة. يمكنك التحقق مما إذا كان **CompositeNode** يحتوي على أي عقد فرعية باستخدام خاصية [HasChildNodes](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/haschildnodes/).

يوضح مثال التعليمات البرمجية التالي كيفية تعداد العقد الفرعية المباشرة لـ `CompositeNode` باستخدام العداد الذي توفره مجموعة `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعداد العقد الفرعية المباشرة لـ `CompositeNode` باستخدام الوصول المفهرس:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### العقد الأخوة

يمكنك الحصول على العقدة التي تسبق أو تتبع عقدة معينة مباشرة باستخدام خصائص [PreviousSibling](https://reference.aspose.com/words/ar/net/aspose.words/node/previoussibling/) و[NextSibling](https://reference.aspose.com/words/ar/net/aspose.words/node/nextsibling/)، على التوالي. إذا كانت العقدة هي الابن الأخير للأصل، فإن خاصية **NextSibling** هي *null*. على العكس من ذلك، إذا كانت العقدة هي الابن الأول لأصلها، فإن خاصية **PreviousSibling** هي *null*.

يوضح مثال التعليمات البرمجية التالي كيفية زيارة جميع العقد الفرعية المباشرة وغير المباشرة للعقدة المركبة بكفاءة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### الوصول المكتوب إلى العقد التابعة والأصل {#typed-access-to-child-and-parent-nodes}

لقد ناقشنا حتى الآن الخصائص التي تُرجع أحد الأنواع الأساسية – **Node** أو **CompositeNode**. ولكن في بعض الأحيان توجد مواقف قد تحتاج فيها إلى إرسال القيم إلى فئة عقدة معينة، مثل **Run** أو **Paragraph**. أي أنه لا يمكنك الابتعاد تمامًا عن عملية الصب عند العمل باستخدام Aspose.Words DOM المركب.

لتقليل الحاجة إلى الإرسال، توفر معظم فئات Aspose.Words خصائص ومجموعات توفر وصولاً مكتوبًا بقوة. هناك ثلاثة أنماط أساسية للوصول المكتوب:

- تعرض العقدة الأصلية خصائص **FirstXXX** و**LastXXX** المكتوبة. على سبيل المثال، يحتوي ملف **Document** على خصائص [FirstSection](https://reference.aspose.com/words/ar/net/aspose.words/document/firstsection/) و[LastSection](https://reference.aspose.com/words/ar/net/aspose.words/document/lastsection/). وبالمثل، يتمتع **Table** بخصائص مثل [FirstRow](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/firstrow/) و[LastRow](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/lastrow/) وغيرها.
- تعرض العقدة الأصلية مجموعة مكتوبة من العقد الفرعية، مثل [Document.Sections](https://reference.aspose.com/words/ar/net/aspose.words/document/sections/) و[Body.Paragraphs](https://reference.aspose.com/words/ar/net/aspose.words/story/paragraphs/) وغيرها.
- توفر العقدة الفرعية وصولاً مكتوبًا إلى العقدة الأصلية، مثل [Run.ParentParagraph](https://reference.aspose.com/words/ar/net/aspose.words/inline/parentparagraph/) و[Paragraph.ParentSection](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/parentsection/) وغيرها.

الخصائص المكتوبة هي مجرد اختصارات مفيدة توفر أحيانًا وصولاً أسهل من الخصائص العامة الموروثة من [Node.ParentNode](https://reference.aspose.com/words/ar/net/aspose.words/node/parentnode/) و[CompositeNode.FirstChild](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/firstchild/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام الخصائص المكتوبة للوصول إلى عقد شجرة المستندات:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
