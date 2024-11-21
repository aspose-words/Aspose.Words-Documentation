---
title: العمل مع الأقسام في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الأقسام
linktitle: العمل مع الأقسام
description: "فهم مفاهيم قسم الوثيقة وممارسات التلاعب باستخدام C++. أدخل قسما في مستند C++. إزالة القسم C++. نسخ الأقسام بين المستندات."
type: docs
weight: 120
url: /ar/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

في بعض الأحيان تريد مستندا لا يحتوي على نفس التنسيق عبر جميع الصفحات. على سبيل المثال، قد تحتاج إلى تعديل تنسيقات أرقام الصفحات، أو اختلاف حجم الصفحة واتجاهها، أو جعل صفحة المستند الأولى كصفحة غلاف بدون أي ترقيم. يمكنك تحقيق ذلك مع الأقسام.

الأقسام عبارة عن عقد مستوية تتحكم في الرؤوس والتذييلات والاتجاه والأعمدة والهوامش وتنسيق رقم الصفحة وغيرها.

Aspose.Words يسمح لك بإدارة الأقسام وتقسيم المستند إلى أقسام وإجراء تغييرات التنسيق التي تنطبق فقط على قسم معين. Aspose.Words يخزن معلومات حول تنسيق القسم مثل الرؤوس والتذييلات وإعداد الصفحة وإعدادات الأعمدة في فاصل القسم.

تشرح هذه المقالة كيفية العمل مع الأقسام وفواصل الأقسام.

## ما القسم وكسر القسم هو

يتم تمثيل أقسام المستند بالفئتين [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). كائنات القسم هي أطفال فوريون لعقدة [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ويمكن الوصول إليها عبر خاصية [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). يمكنك إدارة هذه العقد باستخدام بعض الطرق مثل [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), وغيرها.

فاصل المقطع هو خيار يقسم صفحات المستند إلى أقسام ذات تخطيطات قابلة للتخصيص.

## أنواع استراحة القسم

Aspose.Words يسمح لك بتقسيم المستندات وتنسيقها باستخدام فواصل أقسام مختلفة من [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) تعداد:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

يمكنك أيضا استخدام [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) التعداد لاختيار نوع فاصل ينطبق فقط على القسم الأول مثل NewColumn, NewPage, EvenPage, و OddPage.

## إدارة قسم

نظرا لأن القسم عبارة عن عقدة مركبة عادية، يمكن استخدام معالجة العقدة بأكملها API لمعالجة الأقسام: للإضافة والإزالة والعمليات الأخرى على الأقسام. يمكنك قراءة المزيد عن العقد في المقالة [Aspose.Words نموذج كائن المستند (DOM)](/words/cpp/aspose-words-document-object-model/).

من ناحية أخرى، يمكنك أيضا استخدام `DocumentBuilder` API للعمل مع الأقسام. في هذه المقالة، سنركز على هذه الطريقة الخاصة للعمل مع الأقسام.

## إدراج أو إزالة فاصل المقطع

Aspose.Words يسمح لك بإدراج قسم فاصل في النص باستخدام طريقة [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

يوضح مثال التعليمات البرمجية التالية كيفية إدراج قسم فاصل في مستند:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

استخدم طريقة [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) لحذف فاصل مقطعي. إذا لم تكن بحاجة إلى إزالة فاصل قسم معين وحذف محتوى هذا القسم بدلا من ذلك، فيمكنك استخدام طريقة [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

يوضح مثال الكود التالي كيفية إزالة فواصل الأقسام:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

لاحظ أن فاصل المقطع يحتوي على معلومات حول القسم الذي يسبقه، وليس القسم الذي يلاحقه. لذلك إذا قمت بإزالة فاصل مقطعي، فسيحصل النص قبل الفاصل الذي تمت إزالته على خصائص فاصل المقطع الذي يتبعه. يمكن أن يتسبب هذا في أن يصبح المستند بأكمله أفقيا أو تتغير الرؤوس والتذييلات أو تختفي تماما.

{{% /alert %}}

## نقل قسم

إذا كنت تريد نقل قسم من موضع إلى آخر في المستند، فأنت بحاجة إلى الحصول على فهرس هذا القسم. Aspose.Words يسمح لك بالحصول على موضع قسم من [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). يمكنك استخدام خاصية [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) للحصول على جميع الأقسام في المستند. ولكن إذا كنت ترغب في الحصول على القسم الأول فقط، يمكنك استخدام خاصية [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

يوضح مثال التعليمات البرمجية التالية كيفية الوصول إلى القسم الأول والتكرار من خلال الأطفال من عقدة مركبة:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## حدد تخطيط القسم

في بعض الأحيان تريد أن يبدو المستند الخاص بك أفضل من خلال عمل تخطيطات إبداعية لأقسام المستندات المختلفة. إذا كنت تريد تحديد نوع شبكة القسم الحالية، فيمكنك اختيار وضع تخطيط القسم باستخدام [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/) تعداد:

- الافتراضي
- الشبكة
- LineGrid
- SnapToChars

يوضح مثال التعليمات البرمجية التالية كيفية الحد من عدد الأسطر التي قد تحتوي عليها كل صفحة:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## تحرير قسم

عند إضافة قسم جديد إلى المستند الخاص بك، لن يكون هناك نص أو فقرة يمكنك تعديلها. Aspose.Words يسمح لك بضمان احتواء القسم على نص به فقرة واحدة على الأقل باستخدام طريقة [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – سيضيف تلقائيا عقدة أساسية (أو HeaderFooter) إلى المستند ثم يضيف فقرة إليه.

يوضح مثال الكود التالي كيفية إعداد عقدة قسم جديدة باستخدام **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### إلحاق المحتوى أو إلحاقه مسبقا

إذا كنت تريد رسم شكل ما أو إضافة نص أو صورة في بداية/نهاية القسم، فيمكنك استخدام طريقتي [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) و [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) لفئة [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

يوضح مثال التعليمات البرمجية التالية كيفية إلحاق محتوى قسم موجود:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### استنساخ قسم

Aspose.Words يسمح لك بتكرار قسم عن طريق إنشاء نسخة كاملة منه باستخدام طريقة [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

يوضح مثال الكود التالي كيفية استنساخ القسم الأول في المستند:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### نسخ الأقسام بين المستندات

في بعض الحالات، قد يكون لديك مستندات كبيرة بها العديد من الأقسام وتريد نسخ محتوى قسم من مستند إلى آخر.

Aspose.Words يسمح لك بنسخ الأقسام بين المستندات باستخدام طريقة [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

يوضح مثال الكود التالي كيفية نسخ الأقسام بين المستندات:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### العمل مع رأس القسم وتذييل الصفحة

القواعد الأساسية لعرض رأس أو تذييل لكل قسم بسيطة للغاية:

1. إذا لم يكن للقسم رؤوس / تذييلات خاصة به من نوع معين، فسيتم أخذه من القسم السابق.
2. يتم التحكم في نوع الرأس/التذييل المعروض على الصفحة من خلال إعدادات قسم "الصفحة الأولى المختلفة" و "الصفحات الفردية والزوجية المختلفة" – إذا تم تعطيلها، فسيتم تجاهل عناوين القسم الخاصة.

يوضح مثال الكود التالي كيفية إنشاء أقسام 2 برؤوس مختلفة:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

إذا كنت تريد إزالة نص الرؤوس والتذييلات دون إزالة [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) كائنات في المستند، فيمكنك استخدام طريقة [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). بالإضافة إلى ذلك، يمكنك استخدام طريقة [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) لإزالة جميع الأشكال من الرؤوس والتذييلات في المستند.

يوضح مثال الكود التالي كيفية مسح محتوى جميع الرؤوس والتذييلات في قسم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

مثال التعليمات البرمجية التالية كيفية إزالة كافة الأشكال من كافة رؤوس التذييلات في قسم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## تخصيص خصائص الصفحة في قسم

قبل طباعة صفحة أو مستند، قد ترغب في تخصيص وتعديل حجم وتخطيط صفحة واحدة أو المستند بأكمله. باستخدام إعداد الصفحة، يمكنك تغيير إعدادات صفحات المستند مثل الهوامش والاتجاه والحجم لطباعة صفحات أولى مختلفة أو صفحات فردية.

Aspose.Words يسمح لك بتخصيص خصائص الصفحة والقسم باستخدام فئة [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص مثل حجم الصفحة والاتجاه للقسم الحالي:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تعديل خصائص الصفحة في جميع الأقسام:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## أنظر أيضا

- [المستويات المنطقية للعقد في المستند](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [إدراج المستندات وإلحاقها](/words/cpp/insert-and-append-documents/)
