---
title: استخراج المحتوى بين عقد الوثيقة
second_title: Aspose.Words لـ Python
articleTitle: استخراج المحتوى بين العقد في المستند
linktitle: استخراج المحتوى بين العقد
description: "كيفية استخراج محتوى معين من نطاق داخل المستند بسهولة باستخدام Python."
type: docs
weight: 140
url: /ar/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
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

لاستخراج المحتوى من مستندك، يجب عليك استدعاء طريقة **extract_content** أدناه وتمرير المعلمات المناسبة. يتضمن الأساس الأساسي لهذه الطريقة العثور على العقد على مستوى الكتلة (الفقرات والجداول) واستنساخها لإنشاء نسخ متطابقة. إذا كانت عقد العلامة التي تم تمريرها هي مستوى الكتلة، فستكون الطريقة قادرة ببساطة على نسخ المحتوى على هذا المستوى وإضافته إلى المصفوفة.

ومع ذلك، إذا كانت عقد العلامة مضمنة (فرع من فقرة) يصبح الوضع أكثر تعقيدًا، لأنه من الضروري تقسيم الفقرة في العقدة المضمنة، سواء كان ذلك تشغيلًا أو حقول إشارة مرجعية وما إلى ذلك. المحتوى في العقد الأصلية المستنسخة لا تتم إزالة الموجودة بين العلامات. يتم استخدام هذه العملية للتأكد من أن العقد المضمنة ستظل تحتفظ بتنسيق الفقرة الأصلية. ستقوم الطريقة أيضًا بإجراء عمليات فحص على العقد التي تم تمريرها كمعلمات وطرح استثناءً إذا كانت أي من العقدتين غير صالحة. المعلمات التي سيتم تمريرها إلى هذه الطريقة هي:

1. **startNode** و**endNode**. المعلمتان الأوليان هما العقد التي تحدد مكان بدء استخراج المحتوى وانتهاءه على التوالي. يمكن أن تكون هذه العقد على مستوى الكتلة ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) أو [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) أو المستوى المضمّن (مثل [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) أو [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) أو [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) وما إلى ذلك):
   1. لتمرير حقل، يجب عليك تمرير كائن [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) المقابل.
   1. لتمرير الإشارات المرجعية، يجب تمرير عقدتي [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) و[BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
   1. لتمرير التعليقات، يجب استخدام العقدتين [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **شامل**. يحدد ما إذا كانت العلامات متضمنة في الاستخراج أم لا. إذا تم ضبط هذا الخيار على false وتم تمرير نفس العقدة أو العقد المتتالية، فسيتم إرجاع قائمة فارغة:
   1. إذا تم تمرير عقدة [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)، فسيحدد هذا الخيار ما إذا كان سيتم تضمين الحقل بأكمله أو استبعاده.
   1. إذا تم تمرير عقدة [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) أو [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)، يحدد هذا الخيار ما إذا كانت الإشارة المرجعية مضمنة أم مجرد المحتوى الموجود بين نطاق الإشارة المرجعية.
   1. إذا تم تمرير عقدة [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) أو [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)، يحدد هذا الخيار ما إذا كان سيتم تضمين التعليق نفسه أم المحتوى الموجود في نطاق التعليق فقط.

تنفيذ طريقة **extract_content** يمكنك العثور على [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). سيتم الإشارة إلى هذا الأسلوب في السيناريوهات الموجودة في هذه المقالة.

سنحدد أيضًا طريقة مخصصة لإنشاء مستند بسهولة من العقد المستخرجة. يتم استخدام هذه الطريقة في العديد من السيناريوهات أدناه وتقوم ببساطة بإنشاء مستند جديد واستيراد المحتوى المستخرج إليه.

يوضح مثال التعليمات البرمجية التالي كيفية أخذ قائمة العقد وإدراجها في مستند جديد:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## استخراج المحتوى بين الفقرات

يوضح هذا كيفية استخدام الطريقة المذكورة أعلاه لاستخراج المحتوى بين فقرات محددة. في هذه الحالة، نريد استخراج نص الرسالة الموجودة في النصف الأول من المستند. يمكننا أن نقول أن هذا يقع بين الفقرة السابعة والحادية عشرة.

الكود أدناه ينجز هذه المهمة. يتم استخراج الفقرات المناسبة باستخدام طريقة [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) في المستند وتمرير الفهارس المحددة. نقوم بعد ذلك بتمرير هذه العقد إلى طريقة **extract_content** ونذكر أنه سيتم تضمينها في الاستخراج. ستعيد هذه الطريقة المحتوى المنسوخ بين هذه العقد والتي يتم إدراجها بعد ذلك في مستند جديد.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين فقرات محددة باستخدام طريقة **extract_content** أعلاه:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين أنواع مختلفة من العقد

يمكننا استخراج المحتوى بين أي مجموعات من مستوى الكتلة أو العقد المضمنة. في هذا السيناريو أدناه سنقوم باستخراج المحتوى بين الفقرة الأولى والجدول في القسم الثاني بشكل شامل. نحصل على عقد العلامات عن طريق استدعاء أسلوب [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) و[CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) في القسم الثاني من المستند لاسترداد عقد [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) المناسبة. للحصول على اختلاف طفيف، دعنا نكرر المحتوى وندرجه أسفل النص الأصلي.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين الفقرة والجدول باستخدام طريقة **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين الفقرات بناءً على النمط

قد تحتاج إلى استخراج المحتوى بين الفقرات التي لها نفس النمط أو نمط مختلف، مثل الفقرات المميزة بأنماط العناوين.

يوضح الكود أدناه كيفية تحقيق ذلك. إنه مثال بسيط سيستخرج المحتوى بين المثال الأول لأنماط "العنوان 1" و"العنوان 3" دون استخراج العناوين أيضًا. للقيام بذلك، قمنا بتعيين المعلمة الأخيرة على false، والتي تحدد أنه لا ينبغي تضمين عقد العلامة.

في التنفيذ الصحيح، يجب تشغيل هذا في حلقة لاستخراج المحتوى بين جميع فقرات هذه الأنماط من المستند. يتم نسخ المحتوى المستخرج إلى مستند جديد.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين الفقرات بأنماط محددة باستخدام طريقة **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى بين عمليات تشغيل محددة

يمكنك استخراج المحتوى بين العقد المضمنة مثل [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) أيضًا. يمكن تمرير عمليات التشغيل من فقرات مختلفة كعلامات. يوضح الكود أدناه كيفية استخراج نص محدد بين نفس عقدة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين عمليات تشغيل محددة لنفس الفقرة باستخدام طريقة **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى باستخدام حقل

لاستخدام حقل كعلامة، يجب تمرير عقدة [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). ستحدد المعلمة الأخيرة لطريقة **extract_content** ما إذا كان سيتم تضمين الحقل بأكمله أم لا. لنستخرج المحتوى بين حقل الدمج "الاسم الكامل" وفقرة في المستند. نحن نستخدم طريقة [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) لفئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). سيؤدي هذا إلى إرجاع عقدة [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) من اسم حقل الدمج الذي تم تمريره إليها.

في حالتنا، لنقم بتعيين المعلمة الأخيرة التي تم تمريرها إلى طريقة **extract_content** على `False` لاستبعاد الحقل من الاستخراج. سنقوم بتحويل المحتوى المستخرج إلى PDF.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى بين حقل معين وفقرة معينة في المستند باستخدام طريقة **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى من إشارة مرجعية

في المستند، يتم تغليف المحتوى المحدد داخل الإشارة المرجعية بواسطة عقدتي [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) و[BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). يشكل المحتوى الموجود بين هاتين العقدتين الإشارة المرجعية. يمكنك تمرير أي من هذه العقد كأي علامة، حتى تلك من إشارات مرجعية مختلفة، طالما أن علامة البداية تظهر قبل علامة النهاية في المستند. سنقوم باستخراج هذا المحتوى في مستند جديد باستخدام الكود أدناه. يعرض خيار معلمة **شامل** كيفية الاحتفاظ بالإشارة المرجعية أو تجاهلها.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج المحتوى المشار إليه بإشارة مرجعية باستخدام طريقة **extract_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## استخراج المحتوى من تعليق

يتكون التعليق من عقد [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) و[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). كل هذه العقد مضمنة. تقوم العقدتان الأوليتان بتغليف المحتوى الموجود في المستند المشار إليه بواسطة التعليق، كما هو موضح في لقطة الشاشة أدناه. عقدة [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) نفسها عبارة عن [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) يمكن أن تحتوي على فقرات وعمليات تشغيل. وهو يمثل رسالة التعليق كما تظهر على شكل فقاعة تعليق في جزء المراجعة. وبما أن هذه العقدة مضمّنة ومتحدرة من نص، يمكنك أيضًا استخراج المحتوى من داخل هذه الرسالة أيضًا.

يتضمن التعليق العنوان والفقرة الأولى والجدول في القسم الثاني. لنستخرج هذا التعليق في مستند جديد. يحدد خيار **شامل** ما إذا كان سيتم الاحتفاظ بالتعليق نفسه أو تجاهله.

يوضح مثال التعليمات البرمجية التالي كيفية القيام بذلك:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## كيفية استخراج النص فقط

طرق استرداد النص من المستند هي:

- استخدم [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) للحفظ كنص عادي في ملف أو دفق
- استخدم [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) وقم بتمرير معلمة [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). داخليًا، يؤدي هذا إلى استدعاء الحفظ كنص في دفق الذاكرة وإرجاع السلسلة الناتجة
- استخدم [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) لاسترداد النص بجميع أحرف التحكم Microsoft Word بما في ذلك رموز الحقول

### باستخدام Node.get_text وNode.to_string

يمكن أن يحتوي مستند Word على أحرف تحكم تحدد عناصر خاصة مثل الحقل ونهاية الخلية ونهاية القسم وما إلى ذلك. ويتم تعريف القائمة الكاملة لأحرف التحكم في Word المحتملة في فئة [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). تقوم طريقة [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) بإرجاع نص يحتوي على كافة أحرف التحكم الموجودة في العقدة.

يؤدي استدعاء [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) إلى إرجاع تمثيل النص العادي للمستند فقط بدون أحرف التحكم. لمزيد من المعلومات حول التصدير كنص عادي، راجع استخدام [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

يوضح مثال التعليمات البرمجية التالي الفرق بين استدعاء طريقتي [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) و[to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) على العقدة:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### باستخدام `SaveFormat.Text`

يحفظ هذا المثال المستند كما يلي:

- يقوم بتصفية أحرف الحقول ورموز الحقول والشكل والحاشية السفلية والتعليقات الختامية ومراجع التعليق
- استبدال أحرف نهاية الفقرة **ControlChar.Cr** بمجموعات **ControlChar.CrLf**
- يستخدم ترميز UTF8

يوضح مثال التعليمات البرمجية التالي كيفية حفظ مستند بتنسيق TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## استخراج الصور من الأشكال

قد تحتاج إلى استخراج صور المستندات لأداء بعض المهام. يتيح لك Aspose.Words القيام بذلك أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج الصور من مستند:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
