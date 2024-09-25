---
title: العمل مع الأقسام في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الأقسام
linktitle: العمل مع الأقسام
description: "إنشاء وإدارة الأقسام وفواصل الأقسام في مستند باستخدام Python. إدراج قسم في مستند Python. إزالة القسم Python. نسخ الأقسام بين المستندات."
type: docs
weight: 120
url: /ar/python-net/working-with-sections/
---

في بعض الأحيان قد ترغب في الحصول على مستند ليس له نفس التنسيق في كافة الصفحات. على سبيل المثال، قد تحتاج إلى تعديل تنسيقات أرقام الصفحات، أو تغيير حجم الصفحة واتجاهها، أو جعل صفحة المستند الأولى كصفحة غلاف بدون أي ترقيم. يمكنك تحقيق ذلك من خلال الأقسام.

الأقسام هي عقد مستوى تتحكم في الرؤوس والتذييلات والاتجاه والأعمدة والهوامش وتنسيق أرقام الصفحات وغيرها.

يسمح لك Aspose.Words بإدارة الأقسام وتقسيم المستند إلى أقسام وإجراء تغييرات التنسيق التي تنطبق فقط على قسم معين. يقوم Aspose.Words بتخزين معلومات حول تنسيق القسم مثل الرؤوس والتذييلات وإعداد الصفحة وإعدادات الأعمدة في فاصل القسم.

تشرح هذه المقالة كيفية التعامل مع المقاطع وفواصل المقاطع.

## ما هو القسم وفاصل القسم

يتم تمثيل أقسام المستند بواسطة فئتي [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و[SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). كائنات القسم هي عناصر فرعية مباشرة لعقدة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ويمكن الوصول إليها عبر خاصية [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). يمكنك إدارة تلك العقد باستخدام بعض الطرق مثل [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node) و[Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node) و[IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) وغيرها.

يعد الفاصل المقطعي خيارًا يقسم صفحات المستند إلى أقسام ذات تخطيطات قابلة للتخصيص.

## أنواع الفواصل المقطعية

يتيح لك Aspose.Words تقسيم المستندات وتنسيقها باستخدام فواصل أقسام مختلفة لتعداد [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- قسم فاصل مستمر
- قسمBreakNewColumn
- قسمBreakNewPage
- القسمBreakEvenPage
- قسمBreakOddPage

يمكنك أيضًا استخدام تعداد [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) لاختيار نوع فاصل ينطبق فقط على القسم الأول مثل NewColumn وNewPage وEvenPage وOddPage.

## إدارة قسم

نظرًا لأن القسم عبارة عن عقدة مركبة عادية، فيمكن استخدام معالجة العقدة بأكملها API لمعالجة الأقسام: لإضافة الأقسام وإزالتها وعمليات أخرى على الأقسام. يمكنك قراءة المزيد عن العقد في مقالة [Aspose.Words Document Object Model (DOM)](/words/ar/python-net/aspose-words-document-object-model/).

ومن ناحية أخرى، يمكنك أيضًا استخدام `DocumentBuilder` API للعمل مع الأقسام. في هذه المقالة، سنركز على هذه الطريقة المحددة للعمل مع الأقسام.

## إدراج أو إزالة فاصل مقطعي

يسمح لك Aspose.Words بإدراج فاصل مقطعي في النص باستخدام طريقة [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

يوضح مثال التعليمات البرمجية التالي كيفية إدراج فاصل مقطعي في مستند:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

استخدم أسلوب [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) لحذف فاصل مقطعي. إذا لم تكن بحاجة إلى إزالة فاصل مقطعي معين وحذف محتوى هذا القسم بدلاً من ذلك، فيمكنك استخدام طريقة [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

يوضح مثال التعليمات البرمجية التالي كيفية إزالة فواصل الأقسام:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

لاحظ أن الفاصل المقطعي يحتوي على معلومات حول القسم الذي يسبقه، وليس القسم الذي يليه. لذا، إذا قمت بإزالة فاصل مقطعي، فإن النص قبل الفاصل الذي تمت إزالته سيحصل على خصائص الفاصل المقطعي الذي يليه. يمكن أن يتسبب هذا في تحول المستند بأكمله إلى الوضع الأفقي، أو تغيير الرؤوس والتذييلات أو اختفاءها بالكامل.

{{% /alert %}}

## نقل القسم

إذا كنت تريد نقل قسم من موضع إلى آخر في المستند، فستحتاج إلى الحصول على فهرس هذا القسم. يتيح لك Aspose.Words الحصول على موضع القسم من [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). يمكنك استخدام خاصية [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) للحصول على كافة الأقسام في مستندك. ولكن إذا كنت تريد الحصول على القسم الأول فقط، فيمكنك استخدام خاصية [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى القسم الأول والتكرار عبر العناصر الفرعية للعقدة المركبة:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## تحديد تخطيط القسم

في بعض الأحيان تريد أن يبدو المستند الخاص بك أفضل من خلال إنشاء تخطيطات إبداعية لأقسام مختلفة من المستند. إذا كنت تريد تحديد نوع شبكة القسم الحالية، فيمكنك اختيار وضع تخطيط القسم باستخدام تعداد [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- تقصير
- شبكة
- لاينغريد
- سناب توشارز

يوضح مثال التعليمات البرمجية التالي كيفية تحديد عدد الأسطر التي قد تحتوي عليها كل صفحة:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## تحرير قسم

عندما تقوم بإضافة قسم جديد إلى مستندك، لن يكون هناك أي نص أو فقرة يمكنك تحريرها. يسمح لك Aspose.Words بضمان أن القسم يحتوي على نص يحتوي على فقرة واحدة على الأقل باستخدام طريقة [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) - سيضيف تلقائيًا عقدة نص (أو تذييل الرأس) إلى المستند ثم يضيف فقرة إليه.

يوضح مثال الكود التالي كيفية تحضير عقدة قسم جديدة باستخدام **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### إلحاق أو إضافة المحتوى مسبقًا

إذا كنت تريد رسم شكل ما أو إضافة نص أو صورة في بداية/نهاية القسم، فيمكنك استخدام أساليب [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) و[PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) لفئة [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

يوضح مثال التعليمات البرمجية التالي كيفية إلحاق محتوى قسم موجود:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### استنساخ القسم

يتيح لك Aspose.Words تكرار قسم عن طريق إنشاء نسخة كاملة منه باستخدام طريقة [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ القسم الأول في مستندك:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### نسخ الأقسام بين المستندات

في بعض الحالات، قد يكون لديك مستندات كبيرة تحتوي على العديد من الأقسام وتريد نسخ محتوى قسم من مستند إلى آخر.

يتيح لك Aspose.Words نسخ الأقسام بين المستندات باستخدام طريقة [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

يوضح مثال التعليمات البرمجية التالي كيفية نسخ المقاطع بين المستندات:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### العمل مع رأس القسم وتذييله

القواعد الأساسية لعرض رأس أو تذييل الصفحة لكل قسم بسيطة للغاية:

1. إذا لم يكن للقسم رؤوس/تذييلات خاصة به من نوع معين، فيؤخذ من القسم السابق.
2. يتم التحكم في نوع الرأس/التذييل المعروض على الصفحة من خلال إعدادات قسم "الصفحة الأولى المختلفة" و"الصفحات الفردية والزوجية المختلفة" - إذا تم تعطيلها، فسيتم تجاهل عناوين القسم الخاصة.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء قسمين برؤوس مختلفة:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

إذا كنت تريد إزالة نص الرؤوس والتذييلات دون إزالة كائنات [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) في مستندك، فيمكنك استخدام طريقة [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). بالإضافة إلى ذلك، يمكنك استخدام أسلوب [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) لإزالة كافة الأشكال من الرؤوس والتذييلات في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية مسح محتوى كافة الرؤوس والتذييلات في القسم:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

مثال التعليمات البرمجية التالي كيفية إزالة كافة الأشكال من كافة الرؤوس والتذييلات في القسم:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## تخصيص خصائص الصفحة في القسم

قبل طباعة صفحة أو مستند، قد ترغب في تخصيص وتعديل حجم وتخطيط صفحة واحدة أو المستند بأكمله. باستخدام إعداد الصفحة، يمكنك تغيير إعدادات صفحات المستند مثل الهوامش والاتجاه والحجم لطباعة صفحات أولى أو صفحات فردية مختلفة.

يتيح لك Aspose.Words تخصيص خصائص الصفحة والأقسام باستخدام فئة [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خصائص مثل حجم الصفحة واتجاهها للقسم الحالي:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعديل خصائص الصفحة في كافة الأقسام:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## أنظر أيضا

- [المستويات المنطقية للعقد في المستند](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [إدراج وإلحاق المستندات](/words/ar/python-net/insert-and-append-documents/)
