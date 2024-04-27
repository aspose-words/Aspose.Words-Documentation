---
title: العمل مع الأقسام في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الأقسام
linktitle: العمل مع الأقسام
description: "فهم مفاهيم الباب وممارسات التلاعب باستخدام Java. إدراج جزء في الوثيقة Java. قسم إزالة الألغام Java. قسم النسخ بين الوثائق"
type: docs
weight: 120
url: /ar/java/working-with-sections/
---

في بعض الأحيان تريد وثيقة ليس لها نفس الشكل عبر جميع الصفحات. فعلى سبيل المثال، قد تحتاجون إلى تعديل صيغ عدد الصفحات، وأن تكونوا مختلفين في حجم الصفحات وتوجهها، أو أن تكون الصفحة الأولى من الوثيقة بمثابة صفحة تغطية دون أي ترقيم. يمكنك تحقيق ذلك مع الأقسام.

والأقسام هي رموز المستوى التي تتحكم في الرعاة والأقدام، والتوجه، والأعمدة، والهامش، وشكل الصفحات، وغيرها.

Aspose.Words يُمكّنُك أَنْ تُديرَ الأقسامَ، يُقسمُ a وثيقة إلى أجزاءِ، ويَجْعلُ تغييرَ شكلِ الذي يُطبّقُ فقط على a قسم محدّد. Aspose.Words يخزن معلومات عن شكل أجزاء من قبيل الرعاة والقدماء، وضبط الصفحات، ووضع الأعمدة في استراحة القسم.

وتوضح هذه المادة كيفية العمل مع الأقسام والفصل.

## ما هو القسم والقسم

تُمثّل أقسام الوثائق بمعرفة [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) الصفوف المواد القسمية هي الأطفال الفوريين [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) رمز ويمكن الوصول إليه عن طريق [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) ملكية يمكنك أن تدير تلك العقد باستخدام بعض الأساليب مثل [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), والآخرون

وكسر القسم هو خيار يقسم صفحات الوثائق إلى أجزاء ذات مخططات محددة.

## أنواع قسم

Aspose.Words يُمكِنُك أَنْ تَقْسمَ وتُشكّلَ الوثائقَ مِنْ خلال أجزاء مختلفة [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) العد:

- القسم BreakContinuous
- Section Break NewColumn
- القسم Break NewPage
- القسم BreakEvenPage
- القسم BreakOddPage

يمكنك أيضا استخدام [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) يعدد لاختيار نوع استراحة لا ينطبق إلا على القسم الأول مثل NewColumn, NewPage, EvenPage, and OddPage.

## إدارة القسم

بما أن قسماً هو شعار مركب طبيعي، التلاعب بالعقيدة بالكامل API ويمكن استخدامه في التلاعب بالأقسام: لإضافة، وإزالة، وغير ذلك من العمليات على الأقسام. يُمكنك قراءة المزيد عن العُقد في المادة [Aspose.Words Document Object Model (DOM)](/words/ar/java/aspose-words-document-object-model/).

من ناحية أخرى، يمكنك أيضا استخدام `DocumentBuilder` API للعمل مع الأقسام وفي هذه المادة، سنركز على هذه الطريقة الخاصة للعمل مع الأقسام.

## اضم أو ازالة القسم

Aspose.Words يُسمح لك بإضافة جزء إلى النص باستخدام [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) طريقة

ويبيّن المثال الرمزي التالي كيفية إدراج باب في وثيقة:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

استخدام [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) طريقة لحذف جزء إذا كنت لا تحتاج إلى إزالة فصل محدد وبدلا من ذلك حذف محتوى ذلك القسم، يمكنك استخدام [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) طريقة

The following code example shows how to remove sections breaks:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

ملاحظة أن استراحة القسم تحتوي على معلومات عن القسم الذي سيسبقها، وليس القسم الذي يلاحقها. لذا إذا أزلتَ a إستراحة جزءِ، النص قبل إستراحةِ إزالَ سَيَحْصلُ على خواصِ القسمِ تَحطّمُ بعده. ويمكن أن يؤدي ذلك إلى أن تصبح الوثيقة بكاملها مشهداً طبيعياً، أو أن تتغيّر أو تختفي تماماً.

{{% /alert %}}

## نقل القسم

إذا كنت تريد نقل جزء من موقع إلى آخر في وثيقتك، تحتاج إلى الحصول على الرقم القياسي لذلك القسم. Aspose.Words يسمح لك بالحصول على موقع قسم من [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). يمكنك استخدام [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) ملكية للحصول على جميع الأقسام في وثيقتك. ولكن إذا كنت تريد الحصول على القسم الأول فقط، يمكنك استخدام [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) ملكية

The following code example shows how to access the first section and iterate through the children of a composite node:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## يحدد القسم

أحياناً تُريدُ وثيقتَكَ أَنْ تَبْحثَ بشكل أفضل بصنع مخططات خلاقة لمختلف أجزاءِ الوثيقةِ. إذا كنت تريد تحديد نوع شبكة القسم الحالية، يمكنك اختيار طريقة تخطيط القسم باستخدام [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) العد:

- العجز
- جريد
- لانجريد
- سناب تشار

ويبين المثال الرمزي التالي كيفية الحد من عدد الخطوط التي يمكن أن يكون لكل صفحة:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## القسم

عندما تضيف قسماً جديداً إلى وثيقتك لن تكون هناك هيئة أو فقرة يمكنك تحريرها Aspose.Words يُمكِنُك أَنْ تَتأكّدَ بأنّ a قسم يَتضمّنُ a جسم مَع على الأقل فقرة واحدة إستعمال [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) الأسلوب - سيضيف تلقائياً رمزاً إلى الوثيقة (أو مقدماً) ثم يضيف إليها فقرة.

ويبين المثال الرمزي التالي كيفية إعداد عقد جديد للقسم باستخدام **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### المحتوى المستوفى أو المعلَّف

إذا كنت تريد رسم بعض الشكل أو إضافة نص أو صورة في بداية/نهاية القسم، يمكنك استخدام [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) و [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) أساليب [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) الصف

ويبين المثال الرمزي التالي كيفية تذييل محتوى قسم قائم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### جهز القسم

Aspose.Words يسمح لك بتكرار قسم من خلال إنشاء نسخة كاملة منه باستخدام [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) طريقة

ويبين المثال الرمزي التالي كيفية استنساخ القسم الأول في وثيقتكم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### قسم النسخ بين الوثائق

في بعض الحالات، قد يكون لديك وثائق كبيرة مع العديد من الأقسام وتريد أن تنسخ محتويات قسم من وثيقة إلى أخرى.

Aspose.Words يسمح لك بنسخ الأجزاء بين الوثائق باستخدام [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) طريقة

ويبين المثال الرمزي التالي كيفية نسخ الأجزاء بين الوثائق:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### العمل مع رئيس القسم وفوتور

والقواعد الأساسية لعرض رأس أو قدم لكل قسم بسيطة جدا:

1 وإذا لم يكن لدى القسم رئيسه/أقدامه من نوع معين، فإنه يُؤخذ من القسم السابق.
2. نوع الرأس/القدم الذي يظهر على الصفحة يتحكم به "الصفحة الأولى المتميزة"

ويبين المثال الرمزي التالي كيفية إنشاء قسمين مع رؤساء مختلفين:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

إذا كنت تريد أن تزيل نص الرأس والقدم دون إزالة [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) الأشياء في وثيقتك، يمكنك استخدام [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) طريقة بالإضافة إلى ذلك، يمكنك استخدام [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) طريقة لإزالة جميع الأشكال من الرأس والأقدام في وثيقتك

ويبيّن المثال الرمزي التالي كيفية توضيح محتوى جميع الرعاة والقدماء في قسم ما:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

The following code example how to remove all shapes from all headers footers in a section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Properties in a Section

وقبل طباعة صفحة أو وثيقة، قد ترغبون في تكييف وتعديل حجم صفحة واحدة أو وثيقة كاملة. ومع إعداد الصفحات، يمكن أن تغيروا أطر صفحات الوثائق مثل الهامش، والتوجه، وحجم طباعة صفحات أولى مختلفة أو صفحات غريبة.

Aspose.Words يسمح لك بتكييف صفحتك وممتلكات القسم باستخدام [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) الصف

ويبيّن المثال الرمزي التالي كيفية تحديد خصائص من قبيل حجم الصفحات وتوجيهها في القسم الحالي:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

ويبين المثال الرمزي التالي كيفية تعديل خصائص الصفحات في جميع الأقسام:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## انظر أيضا

- [المستويات المنطقية للنويدات في الوثيقة](/words/ar/java/logical-levels-of-nodes-in-a-document/)
- [الوثائق المرفوعة والمقدمة](/words/ar/java/insert-and-append-documents/)