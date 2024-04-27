---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words for Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model )أ(DOM() هو تمثيل داخلي لوثيقة كلمة. قراءة وتلاعب وتعديل محتوى وشكل وثيقة كلمة باستخدام Java."
weight: 10
url: /ar/java/aspose-words-document-object-model/
---

The Aspose.Words Document Object Model )أ(DOM() هو تمثيل داخلي لوثيقة كلمة. The Aspose.Words DOM يُمكّنكم من القراءة والتلاعب وتعديل محتوى وشكل وثيقة الكلمات.

يصف هذا الفرع الفصول الرئيسية من Aspose.Words DOM وعلاقاتهم باستخدام Aspose.Words DOM فصول، يمكنك الحصول على وصول برنامجي إلى عناصر الوثائق والتشكيل.

## وثيقة الإنشاء شجرة الوجه {#create-a-document-objects-tree}

عند قراءة الوثيقة Aspose.Words <span notrans="<span notrans=" DOM"=""></span>" وبعد ذلك تُبنى شجرة الجسم وأنواع مختلفة من عناصر وثيقة المصدر لها DOM أجسام الأشجار ذات خصائص مختلفة

### Build Document Nodes Tree {#build-document-nodes-tree}

عندما Aspose.Words يقرأ وثيقة وورد في الذاكرة، ويخلق أجساما من أنواع مختلفة تمثل مختلف عناصر الوثائق. وكل حرف من النص أو الفقرة أو الجدول أو القسم هو رمز، وحتى الوثيقة ذاتها هي رمز. Aspose.Words يُعرّفُ a فصل لكلّ نوع رمز الوثيقةِ.

شجرة الوثيقة في Aspose.Words يلي خطة التصميم المركبة:

- كل أصناف العقد مستمدة في نهاية المطاف من [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) الدرجة، التي هي درجة القاعدة في Aspose.Words Document Object Model.
-الأنواد التي يمكن أن تحتوي على رموز أخرى، على سبيل المثال **Section** أو **Paragraph**, مستمد من [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) الدرجة التي تستمد بدورها من **Node** الصف

ويبين الرسم البياني الوارد أدناه الميراث بين فئات العقيدة من Aspose.Words Document Object Model )أ(DOM) (أسماء الطبقات المجردة في (إيتاليكس

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM ويتضمن أيضاً الصفوف غير المخصصة، مثل [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) أو [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), التي تستخدم لتكييف المظهر والأساليب في وثيقة ما. هذه الصفوف لم تظهر في هذا الرسم البياني على أنها لم ترث من `Node` الصف

{{% /alert %}}

دعونا ننظر إلى مثال. الصورة التالية تظهر Microsoft Word وثيقة ذات أنواع مختلفة من المحتوى.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

عند قراءة الوثيقة المذكورة أعلاه في Aspose.Words DOM, وتُنشأ شجرة الأجسام، على النحو المبين في الشكل أدناه.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), وجميع الشظايا الأخرى على الرسم البياني Aspose.Words الأجسام التي تمثل عناصر من وثيقة الكلمات.

### الحصول على `Node` النوع {#get-a-node-type}

على الرغم من [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) الطبقة كافية لتمييز مختلف عن بعضها البعض Aspose.Words يوفر [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) العد لتبسيط بعض API مهام من قبيل اختيار عقد من نوع محدد.

يمكن الحصول على نوع كل عقدة باستخدام [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) ملكية هذه الملكية تعود **NodeType** قيمة العد على سبيل المثال، صيغة فقرة ممثّلة من قبل **Paragraph** عوائد الصف **NodeType**.**Paragraph**وموعد جدول يمثله **Table** عوائد الصف **NodeType**.**Table**.

المثال التالي يبين كيفية الحصول على نوع العقد باستخدام **NodeType** العد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Document Tree Navigation {#document-tree-navigation}

Aspose.Words يُمثّلُ a وثيقة كشجرةِ العقدِ، الذي يُمْكِنُك أَنْ تُبحرَ بين العقدِ. يصف هذا القسم كيفية استكشاف ونقل شجرة الوثائق في Aspose.Words.

عندما تَفْتحُ وثيقةَ العينةَ، قُدّمتْ في وقت سابق، في مستكشفِ الوثيقةِ، شجرةِ العقدِ تَظْهرُ بالضبط كما هو ممثّلُ في Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

يمكنك تعلم مشروع العينة "مستكشف الوثائق" على [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### الوثيقة Node Relationships {#document-nodes-relationships}

الأنهار في الشجرة لها علاقات بينهما

- العقد الذي يحتوي على عقد آخر هو *parent.*
- الشعار الوارد في العقد الأبوي هو *child.* ندوات الأطفال من نفس الوالد *sibling* المشنقة
- *root* المعبد دائماً [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) موكب

العقد الذي يمكن أن يحتوي على عقد آخر مستمد من [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) الطبقة، وجميع العقد مستمدة في نهاية المطاف من [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) صف ويوفر هذان الصفان الأساسيان أساليب وممتلكات مشتركة للملاحة والتعديل في هيكل الأشجار.

ويبين الرسم البياني للجسم التالي " إم إل " عدة رموز من وثيقة العينة وعلاقتها ببعضها البعض عن طريق الأم والطفل والممتلكات الشقيقة:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### (الوثيقة هي ملكية (نود

وينتمي العقد دائما إلى وثيقة معينة، حتى لو كان قد أنشئ للتو أو أزيل من الشجرة، لأن الهياكل الحيوية على نطاق الوثائق مثل المواثيق والقوائم مخزنة في **Document** موكب على سبيل المثال، لا يمكن أن يكون هناك **Paragraph** بدون **Document** لأن لكل فقرة أسلوب معين معرّف عالمياً في الوثيقة. وتستخدم هذه القاعدة عند إنشاء أي عقد جديد. إضافة جديدة **Paragraph** مباشرة إلى DOM يتطلّب أن يُسلّم إلى المُنشئ غرضاً من الوثائق.

{{% alert color="primary" %}}

The [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) وتعيد الممتلكات الوثيقة التي ينتمي إليها العقد.

{{% /alert %}}

عند وضع فقرة جديدة باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), البنّاء دائماً لديه **Document** صنف مرتبط به من خلال [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) ملكية

ويوضح المثال الرمزي التالي أنه عند إنشاء أي عقد، فإن الوثيقة التي ستمتلك العقد تحدد دائما:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### الوالدين

لكل عقدة والد يحدده [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) ملكية أي عقدة ليس لها عُقد أبوي، ذلك، **ParentNode** لاغي في الحالات التالية:

- لقد تم إنشاء العقد ولم يضاف بعد إلى الشجرة
- تم إزالة العقد من الشجرة
- هذا هو الجذر **Document** الشعار الذي يكون دائماً لاغياً

يمكنك أن تزيل عقدة من والدها عن طريق الاتصال [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) طريقة The following code example shows how to access the parent node:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### أطفال

أكفأ طريقة للوصول إلى الأطفال [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) هو عبر [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) و [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) الخواص التي تُعيد الندوتين الأولى والأخيرة للطفل، على التوالي. إذا لم يكن هناك أطفال، تعود هذه الممتلكات *null*.

**CompositeNode** يوفر أيضا [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) (ج) جمع مواد تمكّن من الوصول المفهرس أو المعدّد إلى عقد الأطفال. The **ChildNodes** فالملكية عبارة عن مجموعة حية من العقيدات، مما يعني أنه كلما تغيرت الوثيقة، مثل عندما تُزال أو تُضاف العقيدات، **ChildNodes** ويتم التحديث تلقائيا للجمع.

إذا لم يكن هناك طفل **ChildNodes** تُعيد الممتلكات مجموعة فارغة يمكنك التحقق ما إذا كان **CompositeNode** يتضمّن أيّ ندوات للأطفال تستخدم [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) ملكية

ويبيّن المثال الرمزي التالي كيف يُعدّد الأكواد المخصصة للطفل مباشرة `CompositeNode` استخدام العدادات المقدمة من `ChildNodes` المجموعة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

ويبيّن المثال الرمزي التالي كيف يُعدّد الأكواد المخصصة للطفل مباشرة `CompositeNode` استخدام الوصول المفهرس:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sibling Nodes

يمكنك الحصول على العقد الذي يسبق أو يتبع عقد معين باستخدام [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) و [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) الممتلكات، على التوالي. إذا كان الموكب هو آخر طفل لوالده، ثم **NextSibling** الممتلكات *null*. وعلى العكس من ذلك، إذا كان المعبد أول طفل من والديه، **PreviousSibling** الممتلكات *null*.

The following code example shows how to efficiently visit all direct and indirect child nodes of a composite node:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Typed Access to Child and Parent Nodes

لقد ناقشنا حتى الآن الممتلكات التي تعيد أحد أنواع القاعدة **Node** أو **CompositeNode**. ولكن في بعض الأحيان هناك حالات قد تحتاج فيها إلى إعطاء القيم لفصل معين، مثل **Run** أو **Paragraph**. هذا هو، لا يمكنك تماما الابتعاد عن القذف عندما العمل مع Aspose.Words DOM, وهو مركب.

للحد من الحاجة إلى التلقيح Aspose.Words وتوفر الصفوف الخواص والتحصيلات التي توفر إمكانية الوصول على شكل قوي. وهناك ثلاثة أنماط أساسية من الوصول المطبعي:

-عميد الوالدين يفضح من نوعه **FirstXXX** و **LastXXX** الممتلكات. على سبيل المثال، **Document** لديه [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) و [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) الممتلكات. وبالمثل، **Table** لها خصائص مثل [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), والآخرون
- عقيدة الوالدين تكشف عن مجموعة من فصيلات الأطفال، مثل [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), والآخرون
- يُتيح عقد الطفل إمكانية الوصول إلى والديه من نوع ما، مثل [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), والآخرون

إن الممتلكات المصنَّفة هي مجرد اختصارات مفيدة توفر في بعض الأحيان سهولة الحصول على الممتلكات العامة الموروثة من الممتلكات العامة [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) و [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

The following code example shows how to use typed properties to access nodes of the document tree:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
