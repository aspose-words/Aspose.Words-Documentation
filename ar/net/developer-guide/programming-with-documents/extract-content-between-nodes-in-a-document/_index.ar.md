---
title: كيفية استخراج المحتوى بين عقد الوثيقة
second_title: Aspose.Words لـ .NET
articleTitle: استخراج المحتوى بين العقد في المستند
linktitle: استخراج المحتوى بين العقد
description: "استخراج محتوى المستند بطرق مختلفة باستخدام C#."
type: docs
weight: 140
url: /ar/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

عند العمل مع المستندات، من المهم أن تكون قادرًا على استخراج المحتوى بسهولة من نطاق معين داخل المستند. ومع ذلك، قد يتكون المحتوى من عناصر معقدة مثل الفقرات والجداول والصور وما إلى ذلك.

بغض النظر عن المحتوى الذي يجب استخراجه، سيتم دائمًا تحديد طريقة استخراج هذا المحتوى من خلال العقد التي يتم تحديدها لاستخراج المحتوى بينها. يمكن أن تكون هذه نصوصًا كاملة أو تشغيلات نصية بسيطة.

هناك العديد من المواقف المحتملة، وبالتالي هناك العديد من أنواع العقد المختلفة التي يجب مراعاتها عند استخراج المحتوى. على سبيل المثال، قد ترغب في استخراج المحتوى بين:

- فقرتين محددتين
- مسارات محددة من النص
- الحقول بمختلف أنواعها، مثل حقول الدمج
- نطاقات البداية والنهاية للإشارة المرجعية أو التعليق
- أجسام نصية مختلفة موجودة في أقسام منفصلة

في بعض المواقف، قد تحتاج حتى إلى دمج أنواع العقد المختلفة، مثل استخراج المحتوى بين فقرة وحقل، أو بين التشغيل والإشارة المرجعية.

توفر هذه المقالة تطبيق التعليمات البرمجية لاستخراج النص بين العقد المختلفة، بالإضافة إلى أمثلة للسيناريوهات الشائعة.

{{% alert color="primary" %}}

هذه الأمثلة ليست سوى أمثلة قليلة على الاحتمالات العديدة. نحن نخطط لأن تصبح وظيفة استخراج النص جزءًا من API العام في المستقبل، ولن تكون هناك حاجة إلى تعليمات برمجية إضافية. في هذه الأثناء، لا تتردد في نشر طلباتك بخصوص هذه الوظيفة على [المنتدى Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## لماذا استخراج المحتوى

غالبًا ما يكون الهدف من استخراج المحتوى هو نسخه أو حفظه بشكل منفصل في مستند جديد. على سبيل المثال، يمكنك استخراج المحتوى و:

- انسخه في مستند منفصل
- تحويل جزء معين من المستند إلى PDF أو صورة
- تكرار المحتوى الموجود في المستند عدة مرات
- العمل مع المحتوى المستخرج بشكل منفصل عن بقية الوثيقة

يمكن تحقيق ذلك بسهولة باستخدام Aspose.Words وتنفيذ التعليمات البرمجية أدناه.

## استخراج خوارزمية المحتوى

يعالج الكود الموجود في هذا القسم جميع المواقف المحتملة الموضحة أعلاه بطريقة واحدة معممة وقابلة لإعادة الاستخدام. يتضمن المخطط العام لهذه التقنية ما يلي:

1. جمع العقد التي تحدد منطقة المحتوى التي سيتم استخراجها من وثيقتك. تتم معالجة استرجاع هذه العقد من قبل المستخدم في التعليمات البرمجية الخاصة به، بناءً على ما يريد استخراجه.
1. تمرير هذه العقد إلى طريقة **ExtractContent** الموضحة أدناه. يجب عليك أيضًا تمرير معلمة منطقية توضح ما إذا كان ينبغي تضمين هذه العقد، التي تعمل كعلامات، في الاستخراج أم لا.
1. استرجاع قائمة المحتوى المستنسخ (العقد المنسوخة) المحدد لاستخراجه. يمكنك استخدام قائمة العقد هذه بأي طريقة قابلة للتطبيق، على سبيل المثال، إنشاء مستند جديد يحتوي على المحتوى المحدد فقط.

## كيفية استخراج المحتوى

لاستخراج المحتوى من مستندك، يجب عليك استدعاء طريقة **ExtractContent** أدناه وتمرير المعلمات المناسبة. يتضمن الأساس الأساسي لهذه الطريقة العثور على العقد على مستوى الكتلة (الفقرات والجداول) واستنساخها لإنشاء نسخ متطابقة. إذا كانت عقد العلامة التي تم تمريرها هي مستوى الكتلة، فستكون الطريقة قادرة ببساطة على نسخ المحتوى على هذا المستوى وإضافته إلى المصفوفة.

ومع ذلك، إذا كانت عقد العلامة مضمنة (فرع من فقرة) يصبح الوضع أكثر تعقيدًا، لأنه من الضروري تقسيم الفقرة في العقدة المضمنة، سواء كان ذلك تشغيلًا أو حقول إشارة مرجعية وما إلى ذلك. المحتوى في العقد الأصلية المستنسخة لا تتم إزالة الموجودة بين العلامات. يتم استخدام هذه العملية للتأكد من أن العقد المضمنة ستظل تحتفظ بتنسيق الفقرة الأصلية. ستقوم الطريقة أيضًا بإجراء عمليات فحص على العقد التي تم تمريرها كمعلمات وطرح استثناءً إذا كانت أي من العقدتين غير صالحة. المعلمات التي سيتم تمريرها إلى هذه الطريقة هي:

1. **StartNode** و**EndNode**. المعلمتان الأوليان هما العقد التي تحدد مكان بدء استخراج المحتوى وانتهاءه على التوالي. يمكن أن تكون هذه العقد على مستوى الكتلة ([Paragraph](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/)) أو على مستوى مضمن (مثل [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/)، [FieldStart](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldstart/)، [BookmarkStart](https://reference.aspose.com/words/ar/net/aspose.words/bookmark/bookmarkstart/) وما إلى ذلك):
   1. لتمرير حقل، يجب عليك تمرير كائن **FieldStart** المقابل
   1. لتمرير الإشارات المرجعية، يجب تمرير عقدتي **BookmarkStart** و[BookmarkEnd](https://reference.aspose.com/words/ar/net/aspose.words/bookmark/bookmarkend/)
   1. لتمرير التعليقات، يجب استخدام العقدتين [CommentRangeStart](https://reference.aspose.com/words/ar/net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/ar/net/aspose.words/commentrangeend/)
1. **IsInclusive**. يحدد ما إذا كانت العلامات متضمنة في الاستخراج أم لا. إذا تم ضبط هذا الخيار على false وتم تمرير نفس العقدة أو العقد المتتالية، فسيتم إرجاع قائمة فارغة:
   1. إذا تم تمرير عقدة **FieldStart**، فسيحدد هذا الخيار ما إذا كان سيتم تضمين الحقل بأكمله أو استبعاده
   1. إذا تم تمرير عقدة **BookmarkStart** أو **BookmarkEnd**، يحدد هذا الخيار ما إذا كانت الإشارة المرجعية مضمنة أم مجرد المحتوى الموجود بين نطاق الإشارة المرجعية.
   1. إذا تم تمرير عقدة **CommentRangeStart** أو **CommentRangeEnd**، يحدد هذا الخيار ما إذا كان سيتم تضمين التعليق نفسه أم المحتوى الموجود في نطاق التعليق فقط.

تنفيذ طريقة **ExtractContent** يمكنك العثور على [على Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). سيتم الإشارة إلى هذا الأسلوب في السيناريوهات الموجودة في هذه المقالة.

سنحدد أيضًا طريقة مخصصة لإنشاء مستند بسهولة من العقد المستخرجة. يتم استخدام هذه الطريقة في العديد من السيناريوهات أدناه وتقوم ببساطة بإنشاء مستند جديد واستيراد المحتوى المستخرج إليه.

يوضح مثال التعليمات البرمجية التالي كيفية أخذ قائمة العقد وإدراجها في مستند جديد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## استخراج المحتوى بين الفقرات

يوضح هذا كيفية استخدام الطريقة المذكورة أعلاه لاستخراج المحتوى بين فقرات محددة. في هذه الحالة، نريد استخراج نص الرسالة الموجودة في النصف الأول من المستند. يمكننا أن نقول أن هذا يقع بين الفقرة السابعة والحادية عشرة.

الكود أدناه ينجز هذه المهمة. يتم استخراج الفقرات المناسبة باستخدام طريقة [GetChild](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/) في المستند وتمرير الفهارس المحددة. نقوم بعد ذلك بتمرير هذه العقد إلى طريقة **ExtractContent** ونذكر أنه سيتم تضمينها في الاستخراج. ستعيد هذه الطريقة المحتوى المنسوخ بين هذه العقد والتي يتم إدراجها بعد ذلك في مستند جديد.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين فقرات محددة باستخدام طريقة `ExtractContent` أعلاه:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين أنواع مختلفة من العقد

يمكننا استخراج المحتوى بين أي مجموعات من مستوى الكتلة أو العقد المضمنة. في هذا السيناريو أدناه سنقوم باستخراج المحتوى بين الفقرة الأولى والجدول في القسم الثاني بشكل شامل. نحصل على عقد العلامات عن طريق استدعاء أساليب [FirstParagraph](https://reference.aspose.com/words/ar/net/aspose.words/story/firstparagraph/) و[GetChild](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/getchild/) في القسم الثاني من المستند لاسترداد عقد **Paragraph** و**Table** المناسبة. للحصول على اختلاف طفيف، دعنا نكرر المحتوى وندرجه أسفل النص الأصلي.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين الفقرة والجدول باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين الفقرات بناءً على النمط

قد تحتاج إلى استخراج المحتوى بين الفقرات التي لها نفس النمط أو نمط مختلف، مثل الفقرات المميزة بأنماط العناوين. يوضح الكود أدناه كيفية تحقيق ذلك. إنه مثال بسيط سيستخرج المحتوى بين المثال الأول لأنماط "العنوان 1" و"العنوان 3" دون استخراج العناوين أيضًا. للقيام بذلك، قمنا بتعيين المعلمة الأخيرة على false، والتي تحدد أنه لا ينبغي تضمين عقد العلامة.

في التنفيذ الصحيح، يجب تشغيل هذا في حلقة لاستخراج المحتوى بين جميع فقرات هذه الأنماط من المستند. يتم نسخ المحتوى المستخرج إلى مستند جديد.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين الفقرات بأنماط محددة باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين عمليات تشغيل محددة

يمكنك استخراج المحتوى بين العقد المضمنة مثل [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/) أيضًا. يمكن تمرير **Runs** من فقرات مختلفة كعلامات. يوضح الكود أدناه كيفية استخراج نص معين بين نفس عقدة **Paragraph**.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين عمليات تشغيل محددة لنفس الفقرة باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى باستخدام حقل

لاستخدام حقل كعلامة، يجب تمرير عقدة `FieldStart`. ستحدد المعلمة الأخيرة لطريقة `ExtractContent` ما إذا كان سيتم تضمين الحقل بأكمله أم لا. لنستخرج المحتوى بين حقل الدمج "الاسم الكامل" وفقرة في المستند. نحن نستخدم طريقة [MoveToMergeField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetomergefield/) لفئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/). سيؤدي هذا إلى إرجاع عقدة **FieldStart** من اسم حقل الدمج الذي تم تمريره إليها.

في حالتنا، لنقم بتعيين المعلمة الأخيرة التي تم تمريرها إلى طريقة **ExtractContent** على false لاستبعاد الحقل من الاستخراج. سنقوم بتحويل المحتوى المستخرج إلى PDF.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين حقل معين وفقرة معينة في المستند باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى من إشارة مرجعية

في المستند، يتم تغليف المحتوى المحدد داخل الإشارة المرجعية بواسطة عقدتي `BookmarkStart` وBookmarkEnd. يشكل المحتوى الموجود بين هاتين العقدتين الإشارة المرجعية. يمكنك تمرير أي من هذه العقد كأي علامة، حتى تلك من إشارات مرجعية مختلفة، طالما أن علامة البداية تظهر قبل علامة النهاية في المستند. سنقوم باستخراج هذا المحتوى في مستند جديد باستخدام الكود أدناه. يعرض خيار معلمة **IsInclusive** كيفية الاحتفاظ بالإشارة المرجعية أو تجاهلها.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى المشار إليه بإشارة مرجعية باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى من تعليق

يتكون التعليق من العقد CommentRangeStart وCommentRangeEnd وComment. كل هذه العقد مضمنة. تقوم العقدتان الأوليتان بتغليف المحتوى الموجود في المستند المشار إليه بواسطة التعليق، كما هو موضح في لقطة الشاشة أدناه.

عقدة **Comment** نفسها عبارة عن [InlineStory](https://reference.aspose.com/words/ar/net/aspose.words/inlinestory/) يمكن أن تحتوي على فقرات وعمليات تشغيل. وهو يمثل رسالة التعليق كما تظهر على شكل فقاعة تعليق في جزء المراجعة. وبما أن هذه العقدة مضمّنة ومتحدرة من نص، يمكنك أيضًا استخراج المحتوى من داخل هذه الرسالة أيضًا.

يتضمن التعليق العنوان والفقرة الأولى والجدول في القسم الثاني. لنستخرج هذا التعليق في مستند جديد. يحدد خيار **IsInclusive** ما إذا كان سيتم الاحتفاظ بالتعليق نفسه أو تجاهله.

يوضح مثال التعليمات البرمجية التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## كيفية استخراج المحتوى باستخدام DocumentVisitor

استخدم فئة [DocumentVisitor](https://reference.aspose.com/words/ar/net/aspose.words/documentvisitor/) لتنفيذ سيناريو الاستخدام هذا. تتوافق هذه الفئة مع نمط تصميم الزائر المعروف. باستخدام **DocumentVisitor** **,**، يمكنك تحديد وتنفيذ العمليات المخصصة التي تتطلب التعداد على شجرة المستندات.

يوفر **DocumentVisitor** مجموعة من أساليب **VisitXXX** التي يتم استدعاؤها عند مواجهة عنصر مستند معين (عقدة). على سبيل المثال، يتم استدعاء [VisitParagraphStart](https://reference.aspose.com/words/ar/net/aspose.words/documentvisitor/visitparagraphstart/) عند العثور على بداية فقرة نصية ويتم استدعاء [VisitParagraphEnd](https://reference.aspose.com/words/ar/net/aspose.words/documentvisitor/visitparagraphend/) عند العثور على نهاية فقرة نصية. تقبل كل طريقة **DocumentVisitor.VisitXXX** الكائن المقابل الذي تواجهه حتى تتمكن من استخدامه حسب الحاجة (على سبيل المثال استرداد التنسيق)، على سبيل المثال يقبل كل من **DocumentVisitor.VisitParagraphStart** و**DocumentVisitor.VisitParagraphEnd** كائن [Paragraph](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/).

تقوم كل طريقة **DocumentVisitor.VisitXXX** بإرجاع قيمة [VisitorAction](https://reference.aspose.com/words/ar/net/aspose.words/visitoraction/) التي تتحكم في تعداد العقد. يمكنك طلب إما مواصلة التعداد، أو تخطي العقدة الحالية (ولكن الاستمرار في التعداد)، أو إيقاف تعداد العقد.

هذه هي الخطوات التي يجب عليك اتباعها لتحديد أجزاء مختلفة من المستند واستخراجها برمجيًا:

- إنشاء فئة مشتقة من **DocumentVisitor**
- تجاوز وتوفير تطبيقات لبعض أو كل أساليب **DocumentVisitor.VisitXXX** لتنفيذ بعض العمليات المخصصة
- قم باستدعاء [Node.Accept](https://reference.aspose.com/words/ar/net/aspose.words/node/accept/) على العقدة التي تريد بدء التعداد منها، على سبيل المثال، إذا كنت تريد تعداد المستند بأكمله، استخدم [Document.Accept](https://reference.aspose.com/words/ar/net/aspose.words/document/accept/)

يوفر **DocumentVisitor** تطبيقات افتراضية لجميع أساليب **DocumentVisitor.VisitXXX**. وهذا يجعل من السهل إنشاء زوار مستند جدد حيث يجب تجاوز الأساليب المطلوبة للزائر المعين فقط. ليس من الضروري تجاوز كافة أساليب الزائر.

يوضح المثال التالي كيفية استخدام نمط الزائر لإضافة عمليات جديدة إلى نموذج كائن Aspose.Words. في هذه الحالة، نقوم بإنشاء محول مستند بسيط إلى تنسيق نص:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## كيفية استخراج النص فقط

طرق استرداد النص من المستند هي:

- استخدم [Document.Save](https://reference.aspose.com/words/ar/net/aspose.words/document/save/) مع [SaveFormat.Text](https://reference.aspose.com/words/ar/net/aspose.words/saveformat/) للحفظ كنص عادي في ملف أو دفق
- استخدم [Node.ToString](https://reference.aspose.com/words/ar/net/aspose.words/node/tostring/) وقم بتمرير معلمة **SaveFormat.Text**. داخليًا، يؤدي هذا إلى استدعاء الحفظ كنص في دفق الذاكرة وإرجاع السلسلة الناتجة
- استخدم [Node.GetText](https://reference.aspose.com/words/ar/net/aspose.words/node/gettext/) لاسترداد النص بجميع أحرف التحكم Microsoft Word بما في ذلك رموز الحقول
- تنفيذ [DocumentVisitor](https://reference.aspose.com/words/ar/net/aspose.words/documentvisitor/) مخصص لإجراء الاستخراج المخصص

### باستخدام `Node.GetText` و`Node.ToString`

يمكن أن يحتوي مستند Word على أحرف تحكم تحدد عناصر خاصة مثل الحقل ونهاية الخلية ونهاية القسم وما إلى ذلك. ويتم تعريف القائمة الكاملة لأحرف التحكم في Word المحتملة في فئة **ControlChar**. تقوم طريقة **Node.GetText** بإرجاع نص يحتوي على كافة أحرف التحكم الموجودة في العقدة.

يؤدي استدعاء **ToString** إلى إرجاع تمثيل النص العادي للمستند فقط بدون أحرف التحكم. لمزيد من المعلومات حول التصدير كنص عادي، راجع القسم التالي **"استخدام SaveFormat.Text"**.

يوضح مثال التعليمات البرمجية التالي الفرق بين استدعاء طريقتي **GetText** و**ToString** على العقدة:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### باستخدام `SaveFormat.Text`

يحفظ هذا المثال المستند كما يلي:

- يقوم بتصفية أحرف الحقول ورموز الحقول والشكل والحاشية السفلية والتعليقات الختامية ومراجع التعليق
- استبدال أحرف نهاية الفقرة **ControlChar.Cr** بمجموعات **ControlChar.CrLf**
- يستخدم ترميز UTF8

يوضح مثال التعليمات البرمجية التالي كيفية حفظ مستند بتنسيق TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## استخراج الصور من الأشكال

قد تحتاج إلى استخراج صور المستندات لأداء بعض المهام. يتيح لك Aspose.Words القيام بذلك أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج الصور من مستند:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}