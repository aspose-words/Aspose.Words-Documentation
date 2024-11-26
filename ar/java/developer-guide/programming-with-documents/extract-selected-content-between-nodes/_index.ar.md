---
title: استخراج المحتوى المحدد بين العقد في Java
second_title: Aspose.Words ل Java
articleTitle: استخراج المحتوى بين العقد في مستند
linktitle: استخراج المحتوى بين العقد
type: docs
description: "استخراج محتوى المستند في مختلف باستخدام Java."
weight: 140
url: /ar/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

عند العمل مع المستندات، من المهم أن تكون قادرا على استخراج المحتوى بسهولة من نطاق معين داخل المستند. ومع ذلك، قد يتكون المحتوى من عناصر معقدة مثل الفقرات والجداول والصور وما إلى ذلك.

بغض النظر عن المحتوى الذي يجب استخراجه، سيتم دائما تحديد طريقة استخراج هذا المحتوى من خلال العقد التي يتم اختيارها لاستخراج المحتوى بينها. يمكن أن تكون هذه هيئات نصية كاملة أو عمليات تشغيل نصية بسيطة.

هناك العديد من المواقف المحتملة وبالتالي العديد من أنواع العقدة المختلفة التي يجب مراعاتها عند استخراج المحتوى. على سبيل المثال، قد ترغب في استخراج المحتوى بين:

- فقرتان محددتان
- أشواط محددة من النص
- حقول من أنواع مختلفة، مثل حقول الدمج
- بداية ونهاية نطاقات إشارة مرجعية أو تعليق
- الهيئات المختلفة للنصوص الواردة في أقسام منفصلة

في بعض الحالات، قد تحتاج حتى إلى الجمع بين أنواع عقدة مختلفة، مثل استخراج المحتوى بين فقرة وحقل، أو بين تشغيل وإشارة مرجعية.

توفر هذه المقالة تنفيذ التعليمات البرمجية لاستخراج النص بين العقد المختلفة، بالإضافة إلى أمثلة للسيناريوهات الشائعة.

{{% alert color="primary" %}}

هذه الأمثلة ليست سوى عدد قليل من المظاهرات من العديد من الاحتمالات. نحن نخطط لوظيفة استخراج النص لتكون جزءا من الجمهور API في المستقبل، ولن تكون هناك حاجة إلى رمز إضافي. في غضون ذلك، لا تتردد في نشر طلباتك المتعلقة بهذه الوظيفة على [Aspose.Words المنتدى](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## لماذا استخراج المحتوى

غالبا ما يكون الهدف من استخراج المحتوى هو تكراره أو حفظه بشكل منفصل في مستند جديد. على سبيل المثال، يمكنك استخراج المحتوى و:

- انسخه في مستند منفصل
- تحويل جزء معين من المستند إلى PDF أو صورة
- تكرار المحتوى في المستند عدة مرات
- العمل مع المحتوى المستخرج بشكل منفصل عن بقية المستند

يمكن تحقيق ذلك بسهولة باستخدام Aspose.Words وتنفيذ التعليمات البرمجية أدناه.

## استخراج خوارزمية المحتوى

يتناول الرمز في هذا القسم جميع المواقف المحتملة الموضحة أعلاه بطريقة واحدة معممة وقابلة لإعادة الاستخدام. يتضمن المخطط العام لهذه التقنية:

1. جمع العقد التي تملي مجال المحتوى الذي سيتم استخراجه من المستند. يتم التعامل مع استرداد هذه العقد من قبل المستخدم في التعليمات البرمجية الخاصة بهم، بناء على ما يريدون استخراجه.
1. تمرير هذه العقد إلى طريقة **ExtractContent** الواردة أدناه. يجب عليك أيضا تمرير معلمة منطقية تنص على ما إذا كان يجب تضمين هذه العقد، التي تعمل كعلامات، في الاستخراج أم لا.
1. استرجاع قائمة المحتوى المستنسخ (العقد المنسوخة) المحددة ليتم استخراجها. يمكنك استخدام قائمة العقد هذه بأي طريقة قابلة للتطبيق، على سبيل المثال، إنشاء مستند جديد يحتوي على المحتوى المحدد فقط.

## كيفية استخراج المحتوى

سنعمل مع المستند أدناه في هذه المقالة. كما ترون أنه يحتوي على مجموعة متنوعة من المحتوى. لاحظ أيضا أن المستند يحتوي على قسم ثان يبدأ في منتصف الصفحة الأولى. توجد إشارة مرجعية وتعليق أيضا في المستند ولكنهما غير مرئيين في لقطة الشاشة أدناه.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

لاستخراج المحتوى من المستند الخاص بك، تحتاج إلى استدعاء طريقة `ExtractContent` أدناه وتمرير المعلمات المناسبة.

يتضمن الأساس الأساسي لهذه الطريقة العثور على عقد على مستوى الكتلة (فقرات وجداول) واستنساخها لإنشاء نسخ متطابقة. إذا كانت عقد العلامة التي تم تمريرها على مستوى الكتلة، فإن الطريقة قادرة ببساطة على نسخ المحتوى على هذا المستوى وإضافته إلى المصفوفة.

ومع ذلك، إذا كانت العقد علامة مضمنة (طفل من فقرة) ثم يصبح الوضع أكثر تعقيدا، كما أنه من الضروري تقسيم الفقرة في عقدة مضمنة، سواء كان ذلك تشغيل، حقول المرجعية الخ. تتم إزالة المحتوى الموجود في العقد الأصلية المستنسخة غير الموجودة بين العلامات. يتم استخدام هذه العملية للتأكد من أن العقد المضمنة ستظل تحتفظ بتنسيق الفقرة الأصل.

ستعمل الطريقة أيضا على إجراء فحوصات على العقد التي تم تمريرها كمعلمات وتلقي استثناء إذا كانت أي عقدة غير صالحة. المعلمات التي سيتم تمريرها إلى هذه الطريقة هي:

1. **StartNode** و **EndNode**. المعلمات الأولين هي العقد التي تحدد حيث استخراج المحتوى هو أن تبدأ وتنتهي في على التوالي. يمكن أن تكون هذه العقد على حد سواء مستوى الكتلة ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)) أو المستوى المضمن (على سبيل المثال [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) الخ.):
   1. لتمرير حقل، يجب عليك تمرير الكائن **FieldStart** المقابل.
   1. لتمرير الإشارات المرجعية، يجب تمرير العقدتين **BookmarkStart** و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/).
   1. لتمرير التعليقات، يجب استخدام العقدتين [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/).
1. **IsInclusive**. يحدد ما إذا كانت العلامات مدرجة في الاستخراج أم لا. إذا تم تعيين هذا الخيار على خطأ وتم تمرير نفس العقدة أو العقد المتتالية، فسيتم إرجاع قائمة فارغة:

      1. إذا تم تمرير عقدة **FieldStart**، فإن هذا الخيار يحدد ما إذا كان سيتم تضمين الحقل بأكمله أو استبعاده.
      1. إذا تم تمرير عقدة **BookmarkStart** أو **BookmarkEnd**، فإن هذا الخيار يحدد ما إذا كانت الإشارة المرجعية مضمنة أو المحتوى فقط بين نطاق الإشارة المرجعية.
      1. إذا تم تمرير عقدة **CommentRangeStart** أو **CommentRangeEnd**، فإن هذا الخيار يحدد ما إذا كان سيتم تضمين التعليق نفسه أو المحتوى فقط في نطاق التعليقات.

تنفيذ طريقة **ExtractContent** يمكنك أن تجد [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). ستتم الإشارة إلى هذه الطريقة في السيناريوهات الواردة في هذه المقالة.

سنحدد أيضا طريقة مخصصة لإنشاء مستند بسهولة من العقد المستخرجة. تستخدم هذه الطريقة في العديد من السيناريوهات أدناه وتقوم ببساطة بإنشاء مستند جديد واستيراد المحتوى المستخرج إليه.

يوضح مثال الكود التالي كيفية أخذ قائمة بالعقد وإدراجها في مستند جديد:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## استخراج المحتوى بين الفقرات

يوضح هذا كيفية استخدام الطريقة أعلاه لاستخراج المحتوى بين فقرات محددة. في هذه الحالة، نريد استخراج نص الرسالة الموجودة في النصف الأول من المستند. يمكننا القول أن هذا يقع بين الفقرتين 7 و 11.

الرمز أدناه ينجز هذه المهمة. يتم استخراج الفقرات المناسبة باستخدام طريقة [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) في المستند وتمرير المؤشرات المحددة. ثم نقوم بتمرير هذه العقد إلى طريقة **ExtractContent** ونذكر أنه سيتم تضمينها في الاستخراج. ستعيد هذه الطريقة المحتوى المنسوخ بين هذه العقد والتي يتم إدراجها بعد ذلك في مستند جديد.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين فقرات معينة باستخدام طريقة `ExtractContent` أعلاه:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

يحتوي مستند الإخراج على الفقرتين اللتين تم استخلاصهما.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## استخراج المحتوى بين أنواع مختلفة من العقد

يمكننا استخراج المحتوى بين أي مجموعات من العقد على مستوى الكتلة أو العقد المضمنة. في هذا السيناريو أدناه، سنستخرج المحتوى بين الفقرة الأولى والجدول في القسم الثاني بشكل شامل. نحصل على عقد العلامات عن طريق استدعاء طريقة [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) و [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) في القسم الثاني من المستند لاسترداد العقد **Paragraph** و **Table** المناسبة. للحصول على اختلاف طفيف، دعنا نكرر المحتوى بدلا من ذلك وأدخله أسفل النص الأصلي.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين فقرة وجدول باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

تم تكرار المحتوى بين الفقرة والجدول أدناه هو النتيجة.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## استخراج المحتوى بين الفقرات على أساس النمط

قد تحتاج إلى استخراج المحتوى بين فقرات من نفس النمط أو نمط مختلف، مثل بين الفقرات المميزة بأنماط العناوين.

يوضح الرمز أدناه كيفية تحقيق ذلك. إنه مثال بسيط سيستخرج المحتوى بين المثيل الأول لأنماط" Heading 1 "و" الرأس 3 " دون استخراج العناوين أيضا. للقيام بذلك، قمنا بتعيين المعلمة الأخيرة على خطأ، والتي تحدد أنه لا ينبغي تضمين عقد العلامة.

في التنفيذ السليم، يجب تشغيل هذا في حلقة لاستخراج المحتوى بين جميع فقرات هذه الأنماط من المستند. يتم نسخ المحتوى المستخرج في مستند جديد.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين الفقرات بأنماط محددة باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

أدناه هو نتيجة العملية السابقة.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## استخراج المحتوى بين أشواط محددة

يمكنك استخراج المحتوى بين العقد المضمنة مثل **Run** كذلك. **Runs** من فقرات مختلفة يمكن تمريرها كعلامات. يوضح الرمز أدناه كيفية استخراج نص معين بين نفس العقدة **Paragraph**.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين عمليات تشغيل محددة لنفس الفقرة باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

يتم عرض النص المستخرج على وحدة التحكم.

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## استخراج المحتوى باستخدام حقل

لاستخدام حقل كعلامة، يجب تمرير العقدة `FieldStart`. ستحدد المعلمة الأخيرة لطريقة `ExtractContent` ما إذا كان سيتم تضمين الحقل بأكمله أم لا. دعنا نستخرج المحتوى بين حقل الدمج "FullName " وفقرة في المستند. نستخدم طريقة [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) لفئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). سيؤدي هذا إلى إرجاع العقدة **FieldStart** من اسم حقل الدمج الذي تم تمريره إليه.

في حالتنا، دعنا نضبط المعلمة الأخيرة التي تم تمريرها إلى طريقة **ExtractContent** إلى خطأ لاستبعاد الحقل من الاستخراج. سنقدم المحتوى المستخرج إلى PDF.

يوضح مثال الكود التالي كيفية استخراج المحتوى بين حقل معين وفقرة في المستند باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

المحتوى المستخرج بين الحقل والفقرة، بدون عقد علامة الحقل والفقرة المقدمة إلى PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## استخراج المحتوى من إشارة مرجعية

في المستند، يتم تغليف المحتوى المحدد داخل إشارة مرجعية بواسطة العقدتين `BookmarkStart` و BookmarkEnd. يشكل المحتوى الموجود بين هاتين العقدتين الإشارة المرجعية. يمكنك تمرير أي من هذه العقد كأي علامة، حتى تلك من إشارات مرجعية مختلفة، طالما تظهر علامة البداية قبل علامة النهاية في المستند.

في نموذج المستند الخاص بنا، لدينا إشارة مرجعية واحدة، تسمى"إشارة مرجعية 1". يتم تمييز محتوى هذه الإشارة المرجعية المحتوى في وثيقتنا:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

سنقوم باستخراج هذا المحتوى في مستند جديد باستخدام الرمز أدناه. يوضح خيار المعلمة **IsInclusive** كيفية الاحتفاظ بالإشارة المرجعية أو تجاهلها.

يوضح مثال التعليمات البرمجية التالية كيفية استخراج المحتوى المشار إليه إشارة مرجعية باستخدام طريقة **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

الإخراج المستخرج مع المعلمة `IsInclusive` تعيين إلى صحيح. ستحتفظ النسخة بالإشارة المرجعية أيضا.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

الإخراج المستخرج مع تعيين المعلمة **IsInclusive** إلى خطأ. تحتوي النسخة على المحتوى ولكن بدون الإشارة المرجعية.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## استخراج المحتوى من تعليق

يتكون التعليق من CommentRangeStart، CommentRangeEnd وعقد التعليق. كل هذه العقد مضمنة. تقوم العقدتان الأوليان بتغليف المحتوى في المستند المشار إليه بواسطة التعليق، كما هو موضح في لقطة الشاشة أدناه.

العقدة **Comment** نفسها هي [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) التي يمكن أن تحتوي على فقرات وتشغيل. إنه يمثل رسالة التعليق كما ينظر إليه على أنه فقاعة تعليق في جزء المراجعة. نظرا لأن هذه العقدة مضمنة وسليل الجسم، يمكنك أيضا استخراج المحتوى من داخل هذه الرسالة أيضا.

في وثيقتنا لدينا تعليق واحد. دعنا نعرضه من خلال إظهار الترميز في علامة التبويب مراجعة:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

يلخص التعليق العنوان والفقرة الأولى والجدول في القسم الثاني. دعنا نستخرج هذا التعليق في مستند جديد. يحدد الخيار **IsInclusive** إذا تم الاحتفاظ بالتعليق نفسه أو تجاهله.

يوضح مثال التعليمات البرمجية التالية كيفية القيام بذلك أدناه:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

أولا الإخراج المستخرج مع المعلمة `IsInclusive` تعيين إلى صحيح. ستحتوي النسخة على التعليق أيضا.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

ثانيا الإخراج المستخرج مع **isInclusive** تعيين إلى كاذبة. تحتوي النسخة على المحتوى ولكن بدون تعليق.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## استخراج المحتوى باستخدام DocumentVisitor

يمكن استخدام Aspose.Words ليس فقط لإنشاء Microsoft Word المستندات عن طريق بنائها ديناميكيا أو دمج القوالب مع البيانات، ولكن أيضا لتحليل المستندات من أجل استخراج عناصر مستند منفصلة مثل الرؤوس والتذييلات والفقرات والجداول والصور وغيرها. مهمة أخرى محتملة هي العثور على كل نص بتنسيق أو نمط معين.

استخدم فئة [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) لتنفيذ سيناريو الاستخدام هذا. يتوافق هذا الفصل مع نمط تصميم الزائر المعروف. باستخدام [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)، يمكنك تحديد وتنفيذ العمليات المخصصة التي تتطلب التعداد عبر شجرة المستندات.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) يوفر مجموعة من **VisitXXX** الطرق التي يتم استدعاؤها عند مواجهة عنصر مستند معين (عقدة). على سبيل المثال، يتم استدعاء [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) عند العثور على بداية فقرة نصية و [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) عند العثور على نهاية فقرة نصية. تقبل كل طريقة **DocumentVisitor.VisitXXX** الكائن المقابل الذي تصادفه حتى تتمكن من استخدامه حسب الحاجة (على سبيل المثال استرداد التنسيق)، على سبيل المثال، يقبل كل من [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) و [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) كائن [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

ترجع كل طريقة **DocumentVisitor.VisitXXX** قيمة **VisitorAction** تتحكم في تعداد العقد. يمكنك طلب إما متابعة التعداد، أو تخطي العقدة الحالية (ولكن متابعة التعداد)، أو إيقاف تعداد العقد.

هذه هي الخطوات التي يجب عليك اتباعها لتحديد واستخراج أجزاء مختلفة من المستند برمجيا:

- إنشاء فئة مشتقة من [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- تجاوز وتوفير تطبيقات لبعض أو كل طرق **DocumentVisitor.VisitXXX** لتنفيذ بعض العمليات المخصصة.
- استدعاء [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) على العقدة من حيث تريد بدء التعداد. على سبيل المثال، إذا كنت تريد تعداد المستند بأكمله، فاستخدم [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) يوفر تطبيقات افتراضية لجميع طرق **DocumentVisitor.VisitXXX**. هذا يجعل من السهل إنشاء زوار مستندات جدد حيث يجب تجاوز الطرق المطلوبة للزائر المعين فقط. ليس من الضروري تجاوز جميع طرق الزائر.

يوضح المثال التالي كيفية استخدام نمط الزائر لإضافة عمليات جديدة إلى نموذج الكائن Aspose.Words. في هذه الحالة، نقوم بإنشاء محول مستند بسيط إلى تنسيق نصي:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## استخراج النص فقط

طرق استرداد النص من المستند هي:

- استخدم [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) مع [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) للحفظ كنص عادي في ملف أو دفق
- استخدم [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) وتمرير المعلمة `SaveFormat.Text`. داخليا، يستدعي هذا حفظ كنص في دفق ذاكرة وإرجاع السلسلة الناتجة
- استخدم [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) لاسترداد النص مع جميع أحرف التحكم Microsoft Word بما في ذلك رموز الحقول
- تنفيذ مخصص [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) لإجراء استخراج مخصص

### باستخدام `Node.GetText` و `Node.ToString`

يمكن أن يحتوي مستند الكلمة على أحرف تحكم تحدد عناصر خاصة مثل الحقل ونهاية الخلية ونهاية القسم وما إلى ذلك. يتم تعريف القائمة الكاملة لأحرف التحكم في الكلمات المحتملة في فئة **ControlChar**. تقوم طريقة [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) بإرجاع النص مع جميع أحرف حرف التحكم الموجودة في العقدة.

يؤدي الاتصال ToString إلى إرجاع تمثيل النص العادي للمستند فقط بدون أحرف تحكم. لمزيد من المعلومات حول التصدير كنص عادي انظر **Using SaveFormat.Text**.

يوضح مثال الكود التالي الفرق بين استدعاء طرق **GetText** و [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) على عقدة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### باستخدام `SaveFormat.Text`

يحفظ هذا المثال المستند كما يلي:

- يقوم بتصفية أحرف الحقول ورموز الحقول والشكل والحاشية السفلية والحاشية الختامية ومراجع التعليقات
- يستبدل نهاية الفقرة [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) الأحرف بمجموعات [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)
- يستخدم UTF8 ترميز

يوضح مثال الكود التالي كيفية حفظ مستند بتنسيق TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## استخراج الصور من الأشكال

قد تحتاج إلى استخراج صور المستندات لأداء بعض المهام. Aspose.Words يسمح لك أن تفعل هذا أيضا.

يوضح مثال الكود التالي كيفية استخراج الصور من مستند:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
