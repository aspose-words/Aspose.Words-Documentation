---
title: Aspose.Words نموذج كائن المستند (DOM) في C++
second_title: Aspose.Words ل C++
articleTitle: Aspose.Words نموذج كائن المستند (DOM)
linktitle: Aspose.Words نموذج كائن المستند (DOM)
type: docs
description: "نموذج كائن المستند (DOM) هو تمثيل في الذاكرة لمستند ورد. قراءة ومعالجة وتعديل محتوى وتنسيق مستند ورد باستخدام C++."
weight: 10
url: /ar/cpp/aspose-words-document-object-model/
---

نموذج كائن المستند Aspose.Words (DOM) هو تمثيل في الذاكرة لمستند ورد. و Aspose.Words DOM يسمح لك لقراءة برمجيا، والتلاعب، وتعديل المحتوى والتنسيق من وثيقة ورد.

يصف هذا القسم الفئات الرئيسية لـ Aspose.Words DOM وعلاقاتهم. باستخدام فئات Aspose.Words DOM، يمكنك الحصول على وصول برمجي إلى عناصر المستند والتنسيق.

## إنشاء شجرة كائن المستند {#create-a-document-objects-tree}

عند قراءة مستند في Aspose.Words DOM، يتم إنشاء شجرة كائن وأنواع مختلفة من عناصر المستند المصدر لها كائنات شجرة DOM الخاصة بها بخصائص مختلفة.

### بناء شجرة العقد وثيقة {#build-document-nodes-tree}

عندما يقرأ Aspose.Words مستند كلمة في الذاكرة، فإنه ينشئ كائنات من أنواع مختلفة تمثل عناصر مستند مختلفة. كل تشغيل لنص أو فقرة أو جدول أو قسم هو عقدة، وحتى المستند نفسه هو عقدة. Aspose.Words يحدد فئة لكل نوع عقدة المستند.

تتبع شجرة المستندات في Aspose.Words نمط التصميم المركب:

- تستمد جميع فئات العقدة في النهاية من فئة [Node](https://reference.aspose.com/words/cpp/aspose.words/node/)، وهي الفئة الأساسية في نموذج كائن المستند Aspose.Words.
- العقد التي يمكن أن تحتوي على عقد أخرى، على سبيل المثال، **Section** أو **Paragraph**، مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)، والتي بدورها مشتقة من فئة **Node**.

يوضح الرسم البياني الموضح أدناه الوراثة بين فئات العقدة لنموذج كائن المستند Aspose.Words (DOM). أسماء الفئات المجردة مكتوبة بخط مائل.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

يحتوي Aspose.Words DOM أيضا على الفئات غير العقدة، مثل [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) أو [Font](https://reference.aspose.com/words/cpp/aspose.words/font/)، والتي تستخدم لتخصيص المظهر والأنماط داخل المستند. لا تظهر هذه الفئات في هذا الرسم البياني على أنها غير موروثة من فئة `Node`.

{{% /alert %}}

دعونا ننظر إلى مثال. تعرض الصورة التالية مستندا Microsoft Word يحتوي على أنواع مختلفة من المحتوى.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

عند قراءة المستند أعلاه في Aspose.Words DOM، يتم إنشاء شجرة الكائنات، كما هو موضح في المخطط أدناه.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), وجميع علامات الحذف الأخرى في الرسم التخطيطي هي Aspose.Words كائنات تمثل عناصر مستند الكلمة.

### الحصول على `Node` نوع {#get-a-node-type}

على الرغم من أن فئة [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) كافية بما يكفي لتمييز العقد المختلفة عن بعضها البعض، فإن Aspose.Words يوفر [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) التعداد لتبسيط بعض API المهام، مثل تحديد العقد من نوع معين.

يمكن الحصول على نوع كل عقدة باستخدام خاصية [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). ترجع هذه الخاصية **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**، وعقدة جدول ممثلة بـ **Table** class returns **NodeType**.**Table**.

يوضح المثال التالي كيفية الحصول على نوع عقدة باستخدام **NodeType** تعداد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## التنقل في شجرة المستندات {#document-tree-navigation}

Aspose.Words يمثل وثيقة كشجرة عقدة، والتي تمكنك من التنقل بين العقد. يصف هذا القسم كيفية استكشاف شجرة المستندات والتنقل فيها في Aspose.Words.

عند فتح نموذج المستند، الذي تم تقديمه مسبقا، في مستكشف المستندات، تظهر شجرة العقدة تماما كما يتم تمثيلها في Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### علاقات عقدة المستند {#document-nodes-relationships}

العقد في الشجرة لها علاقات بينهما:

- العقدة التي تحتوي على عقدة أخرى هي *parent.*
- العقدة الموجودة في العقدة الأم هي *child.* العقد الفرعية لنفس الأصل هي *sibling* العقد.
- العقدة *root* هي دائما عقدة [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

العقد التي يمكن أن تحتوي على عقد أخرى مشتقة من فئة [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode)، وجميع العقد مشتقة في النهاية من فئة [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). توفر هاتان الفئتان الأساسيتان طرقا وخصائص شائعة للملاحة والتعديل في بنية الشجرة.

يوضح مخطط الكائن UML التالي عدة عقد من نموذج المستند وعلاقاتها ببعضها البعض عبر خصائص الوالد والطفل والأخوة:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### المستند هو مالك العقدة

تنتمي العقدة دائما إلى مستند معين، حتى لو تم إنشاؤه للتو أو إزالته من الشجرة، لأنه يتم تخزين الهياكل الحيوية على مستوى المستند مثل الأنماط والقوائم في عقدة **Document**. على سبيل المثال، لا يمكن أن يكون لديك **Paragraph** بدون **Document** لأن كل فقرة لها نمط معين يتم تعريفه عالميا للمستند. يتم استخدام هذه القاعدة عند إنشاء أي عقد جديدة. تتطلب إضافة **Paragraph** جديد مباشرة إلى DOM تمرير كائن مستند إلى المنشئ.

{{% alert color="primary" %}}

تقوم الخاصية [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) بإرجاع المستند الذي تنتمي إليه العقدة.

{{% /alert %}}

عند إنشاء فقرة جديدة باستخدام [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)، يكون لدى المنشئ دائما فئة **Document** مرتبطة بها من خلال خاصية [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

يوضح مثال الكود التالي أنه عند إنشاء أي عقدة، يتم دائما تعريف المستند الذي سيمتلك العقدة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### العقدة الأم

كل عقدة لها أصل محدد بواسطة [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) خاصية. لا تحتوي العقدة على عقدة أصل، أي **ParentNode** فارغ، في الحالات التالية:

- تم إنشاء العقدة للتو ولم تتم إضافتها بعد إلى الشجرة.
- تمت إزالة العقدة من الشجرة.
- هذه هي عقدة الجذر **Document** التي تحتوي دائما على عقدة أصل فارغة.

يمكنك إزالة عقدة من الأصل عن طريق استدعاء طريقة [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).يوضح مثال التعليمات البرمجية التالية كيفية الوصول إلى العقدة الأصل:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### العقد الفرعية

الطريقة الأكثر فعالية للوصول إلى العقد الفرعية لـ [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) هي عبر [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) و [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) الخصائص التي تعيد العقد الفرعية الأولى والأخيرة، على التوالي. إذا لم تكن هناك عقد فرعية، فستعود هذه الخصائص *null*.

**CompositeNode**

إذا لم يكن للعقدة طفل، فستقوم الخاصية **ChildNodes** بإرجاع مجموعة فارغة. يمكنك التحقق مما إذا كان **CompositeNode** يحتوي على أي عقد فرعية باستخدام خاصية [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

يوضح مثال الكود التالي كيفية تعداد العقد الفرعية الفورية لـ `CompositeNode` باستخدام العداد الذي توفره مجموعة `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

يوضح مثال الكود التالي كيفية تعداد العقد الفرعية الفورية لـ `CompositeNode` باستخدام الوصول المفهرس:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### عقد الأخوة

يمكنك الحصول على العقدة التي تسبق أو تتبع عقدة معينة مباشرة باستخدام خصائص [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) و [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/)، على التوالي. إذا كانت العقدة هي آخر طفل في الأصل، فإن الخاصية **NextSibling** هي *null*. على العكس من ذلك، إذا كانت العقدة هي الطفل الأول لوالدها، فإن **PreviousSibling** الخاصية هي *null*.

يوضح مثال الكود التالي كيفية زيارة جميع العقد الفرعية المباشرة وغير المباشرة للعقدة المركبة بكفاءة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### الوصول المكتوب إلى العقد الفرعية والوالدية

حتى الآن، ناقشنا الخصائص التي تعيد أحد الأنواع الأساسية – **Node** أو **CompositeNode**. ولكن في بعض الأحيان توجد مواقف قد تحتاج فيها إلى إرسال قيم إلى فئة عقدة معينة، مثل **Run** أو **Paragraph**. أي أنه لا يمكنك الابتعاد تماما عن الصب عند العمل باستخدام Aspose.Words DOM، وهو مركب.

لتقليل الحاجة إلى الإرسال، توفر معظم فئات Aspose.Words خصائص ومجموعات توفر وصولا مكتوبا بشدة. هناك ثلاثة أنماط أساسية للوصول المكتوب:

- تعرض العقدة الأم خصائص **FirstXXX** و **LastXXX** المكتوبة. على سبيل المثال، **Document** له خصائص [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) و [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). وبالمثل، **Table** له خصائص مثل [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/)، [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/)، وغيرها.
- تعرض العقدة الأم مجموعة مكتوبة من العقد الفرعية، مثل [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)، [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/)، وغيرها.
- توفر العقدة الفرعية وصولا مكتوبا إلى الأصل، مثل [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/)، [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/)، وغيرها.

الخصائص المكتوبة هي مجرد اختصارات مفيدة توفر أحيانا وصولا أسهل من الخصائص العامة الموروثة من [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) و [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

يوضح مثال التعليمات البرمجية التالية كيفية استخدام الخصائص المكتوبة للوصول إلى عقد شجرة المستندات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
