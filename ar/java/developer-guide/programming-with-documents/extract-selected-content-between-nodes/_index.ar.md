---
title: Extract Selected Content Between Nodes in Java
second_title: Aspose.Words for Java
articleTitle: Extract Content Between Nodes in a Document
linktitle: Extract Content Between Nodes
type: docs
description: "Extracting document content in different using Java."
weight: 140
url: /ar/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

وعند العمل مع الوثائق، من المهم أن يكون بالإمكان بسهولة استخراج المحتوى من نطاق محدد في وثيقة ما. غير أن المحتوى قد يتألف من عناصر معقدة مثل الفقرات والجداول والصور وما إلى ذلك.

وبغض النظر عن ما يلزم استخلاصه من المحتوى، فإن طريقة استخراج ذلك المحتوى ستحدد دائماً باختيار العقدات لاستخراج المحتوى فيما بينها. هذه يمكن أن تكون كل الهيئات النصية أو الرسائل البسيطة

وهناك العديد من الحالات الممكنة، ومن ثم العديد من أنواع العقيدات المختلفة التي ينبغي النظر فيها عند استخراج المحتوى. على سبيل المثال، قد ترغب في استخراج المحتوى بين:

- فقرتان محددتان
- عدد محدد من النصوص
- حقول من مختلف الأنواع، مثل الحقول الدمجية
- بدء ونطاقات نهاية كتاب أو تعليق
- مختلف هيئات النص الواردة في فروع منفصلة

وفي بعض الحالات، قد تحتاجون حتى إلى الجمع بين مختلف أنواع العقيدات، مثل استخراج المحتوى بين فقرة والحقل، أو بين الركض وعلامة الكتاب.

وتنص هذه المادة على تنفيذ المدونة لاستخراج النص بين مختلف العُدد، وكذلك أمثلة للسيناريوهات المشتركة.

{{% alert color="primary" %}}

These examples are just a few demonstrations of the many possibilities. نخطط لعملية استخراج النص لتكون جزءا من الجمهور API في المستقبل، وليس هناك حاجة لرمز إضافي. في هذه الأثناء، يَشْعرُ بحرية لبَعْد طلباتِكَ حول هذه الوظيفةِ على [Aspose.Words منتدى](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## لماذا الخلاص

وغالبا ما يكون الهدف من استخراج المحتوى هو تكراره أو إنقاذه بصورة منفصلة في وثيقة جديدة. على سبيل المثال، يمكنك استخراج المحتوى و:

- نسخه في وثيقة منفصلة
- تحويل جزء محدد من وثيقة إلى PDF أو صورة
- تكرار محتوى الوثيقة مرات عديدة
- العمل بمحتوى مستخرج منفصل عن بقية الوثيقة

ويمكن تحقيق ذلك بسهولة باستخدام Aspose.Words وتنفيذ المدونة أدناه.

## Extractent Algorithm

ويعالج الرمز الوارد في هذا الفرع جميع الحالات الممكنة الموصوفة أعلاه بطريقة عامة وقابلة لإعادة الاستخدام. ويشمل المخطط العام لهذه التقنية ما يلي:

1 جمع العقد الذي يملي مجال المحتوى الذي سيستخرج من وثيقتك إسترجاع هذه العقدة يُعالج بواسطة المُستخدم في شفرتها، بناءً على ما يُريدون استخراجه.
1 تمرير هذه العقد إلى **ExtractContent** الطريقة الواردة أدناه. يجب عليك أيضاً أن تمر بمسبار بوليان الذي ينص على ما إذا كان يجب أن تُدرَج هذه العقدة، كعلامات، في الإستخراج أم لا
1 Retrieving a list of cloned content (copied nodes) specified to be extracted. ويمكنك استخدام هذه القائمة من العقيدات بأي شكل من الأشكال، على سبيل المثال، إنشاء وثيقة جديدة تتضمن المحتوى المختار فقط.

## كيفية استخراج المحتوى

وسنعمل مع الوثيقة الواردة أدناه في هذه المادة. كما تراه يحتوي على مجموعة متنوعة من المحتوى كما أن الوثيقة تتضمن فرعا ثانيا يبدأ في منتصف الصفحة الأولى. وترد أيضا في الوثيقة علامة كتابية وتعليقات غير مرئية في الشاشة الواردة أدناه.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

لاستخراج المحتوى من وثيقتك يجب أن تتصلي `ExtractContent` طريقة أسفل وتجاوز المعايير المناسبة.

The underlying basis of this method involves finding block-level nodes (paragraphs and tables) and cloning them to create similar copies. وإذا ما انقضت عقدة العلامات على مستوى الكتل، فإن الطريقة قادرة على مجرد نسخ المحتوى على ذلك المستوى وإضافته إلى الصفيفة.

غير أنه إذا كانت شواهد العلامة مثبتة (طفل فقرة) فإن الحالة تصبح أكثر تعقيداً، إذ من الضروري تقسيم الفقرة في العقدة الداخلية، سواء كانت كذلك، أو في حقول علامة الكتاب، وما إلى ذلك. وقد أُزيلت محتويات العقد المستنسخ للوالدين غير الحاضرين بين العلامات. وتُستخدم هذه العملية لضمان أن تظل المعاهد الخطية تحتفظ بصيغة الفقرة الأصلية.

وستجري هذه الطريقة أيضاً فحصاً على العقد الذي تم إقراره كبارامترات، وتستثنى من ذلك إذا كان العقد غير صحيح. أما البارامترات التي يتعين نقلها إلى هذه الطريقة فهي:

1 **StartNode** و **EndNode**. والبارامترات الأولى هي العقد الذي يحدد أين يبدأ استخراج المحتوى وينتهي على التوالي. يمكن أن تكون هذه الأنهار على مستوى الكتل[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) .. [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) أو المستوى الداخلي (مثلاً) [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) .. [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) .. [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) وما إلى ذلك:
   1. To pass a field you should pass the corresponding **FieldStart** هدف
   1. To pass bookmarks, the **BookmarkStart** و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) لا بدّ أن تُغمّر العقد.
   1 - إبداء التعليقات، [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) وينبغي استخدام العقد.
1 **IsInclusive**. يحدد ما إذا كانت العلامات مشمولة في الاستخراج أم لا. إذا كان هذا الخيار جاهزاً false ونفس العقد أو العقد المتتالي، ثم تعاد قائمة فارغة:

      1. If a **FieldStart** وبعد ذلك يحدد هذا الخيار ما إذا كان ينبغي إدراج الحقل بأكمله أو استبعاده.
      1. If a **BookmarkStart** أو **BookmarkEnd** وقد تم إقرار العقد، وهذا الخيار يحدد ما إذا كانت العلامة الكتابية مشمولة أو مجرد المحتوى بين نطاق العلامات الكتابية.
      1. If a **CommentRangeStart** أو **CommentRangeEnd** ويُرفض هذا الخيار إذا كان ينبغي إدراج التعليق نفسه أو مجرد مضمونه في نطاق التعليق.

تنفيذ **ExtractContent** الطريقة التي يمكن أن تجد [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). وسيشار إلى هذه الطريقة في السيناريوهات الواردة في هذه المادة.

وسوف نحدد أيضا طريقة عرفية لتوليد وثيقة بسهولة من العهود المستخرجة. وتُستخدم هذه الطريقة في العديد من السيناريوهات الواردة أدناه وتُنشئ ببساطة وثيقة جديدة وتستورد المحتوى المستخرج منها.

ويبين المثال الرمزي التالي كيفية أخذ قائمة بالمرشحين وإدراجها في وثيقة جديدة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Extract Content Between Paragraphs

ويبين ذلك كيفية استخدام الطريقة المذكورة أعلاه لاستخراج المحتوى بين فقرات محددة. وفي هذه الحالة، نود أن نستخلص من الرسالة التي عثر عليها في النصف الأول من الوثيقة. ويمكننا أن نقول إن هذا بين الفقرتين السابعة والحادية عشرة.

الرمز الوارد أدناه ينجز هذه المهمة تستخرج الفقرات المناسبة باستخدام [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) أسلوب الوثيقة وإصدار الأرقام القياسية المحددة. ثمّ نَمْرُّ هذه العقدِ إلى **ExtractContent** الطريقة والقول بأن هذه يجب أن تدرج في عملية الاستخراج. وستعيد هذه الطريقة المحتوى المنسخ بين هذه العقدات التي تدرج بعد ذلك في وثيقة جديدة.

ويبين المثال الرمزي التالي كيفية استخراج المحتوى بين فقرات محددة باستخدام `ExtractContent` الطريقة الواردة أعلاه:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

وتتضمن وثيقة الناتج الفقرتين اللتين استخرجتا.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Extract Content Between Different Types of Nodes

يمكننا أن نستخرج المحتوى بين أي تركيبات من مستوى الكتل أو الأنهار الداخلية وفي هذا السيناريو الوارد أدناه، سنستخلص المضمون بين الفقرة الأولى والجدول في الفرع الثاني بصورة شاملة. نحن نحصل على علامات ملصقات عن طريق الاتصال [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) و [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) طريقة استرجاع الجزء الثاني من الوثيقة **Paragraph** و **Table** المشنقة وبدلا من ذلك، فإن هناك تغييرا طفيفا في هذا الصدد، مما يسمح بتكرار المحتوى وإدراجه تحت الأصل.

ويبين المثال الرمزي التالي كيفية استخلاص المحتوى بين فقرة وجدول باستخدام **ExtractContent** الطريقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

والمضمون بين الفقرة والجدول مكرر أدناه هو النتيجة.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Extract Content Between Paragraphs استنادا إلى نمط

قد تحتاج إلى استخلاص المحتوى بين فقرات من نفس الطريقة أو مختلفة، مثل ما بين الفقرات المميزة بأساليب العناوين.

والرمز الوارد أدناه يبين كيفية تحقيق ذلك. وهو مثال بسيط يستخرج المحتوى بين أول درجة من أسلوبي " القيادة ١ " و " الرأس ٣ " دون انتزاع العناوين أيضا. لنفعل هذا لقد وضعنا آخر بارامتر false, التي تنص على أنه لا ينبغي إدراج العقد.

In a proper implementation, this should be run in a cycle to extract content between all paragraphs of these fashions from the document. المحتوى المستخرج مستنسخ في وثيقة جديدة

ويبيّن المثال الرمزي التالي كيفية استخراج المحتوى بين الفقرات ذات الأنماط المحددة باستخدام **ExtractContent** الطريقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

وفيما يلي نتيجة العملية السابقة.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Extract Content Between Specific Runs

يمكنك الحصول على المحتوى بين العواميد الداخلية مثل **Run** كذلك **Runs** ويمكن اعتماد الفقرات المختلفة كعلامات. ويبيّن الرمز الوارد أدناه كيفية استخلاص نص محدد في الموقع نفسه. **Paragraph** موكب

ويبيّن المثال الرمزي التالي كيفية استخراج المحتوى بين مسارات محددة من نفس الفقرة باستخدام **ExtractContent** الطريقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

النص المستخرج معروض على الكولونيل

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## معارضة باستخدام حقل

لإستخدام الحقل كعلامة `FieldStart` لا بد من أن يُغمى عليها آخر بارامتر إلى `ExtractContent` وسوف تحدد الطريقة ما إذا كان ينبغي إدراج الحقل بأكمله أم لا. دعونا نستخلص المضمون بين ميدان " فلينام " ونبذة في الوثيقة. نحن نستخدم [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)طريقة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) الصف هذا سيعيد **FieldStart** موكب من اسم الميدان المدمج مر به

وفي حالتنا دعونا نحدد آخر البارامترات التي انتقلت إلى **ExtractContent** طريقة false لاستبعاد الحقل من الاستخراج سوف نرسل المحتوى المستخرج لـ PDF

ويبيّن المثال الرمزي التالي كيفية استخلاص المحتوى بين ميدان محدد والفقرة الواردة في الوثيقة باستخدام **ExtractContent** الطريقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

The extracted content between the field and paragraph, without the field and paragraph marker nodes rendered to PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## مقتطف من علامة كتاب

وفي وثيقة ما، يلخص المحتوى الذي يُعرَّف في علامة كتابية ما `BookmarkStart` "و "بوكماركيند المحتوى الذي وجد بين هذين العقدين هو علامة الكتاب يمكنك أن تعبر أياً من هذه العقدات كأي علامة، حتى تلك من علامات كتاب مختلفة، طالما أن علامة البداية تظهر قبل علامة النهاية في الوثيقة.

وفي وثيقة العينة لدينا علامة كتاب واحدة، تسمى " بوكمارك 1 ". ويرد في وثيقتنا ما يلي:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

وسوف نستخرج هذا المحتوى في وثيقة جديدة تستخدم الرمز أدناه. The **IsInclusive** ويبين خيار البارامترات كيفية الاحتفاظ بعلامة الكتاب أو التخلص منها.

ويبيّن المثال الرمزي التالي كيفية استخراج المحتوى المشار إليه علامة كتاب باستخدام **ExtractContent** الطريقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

الناتج المستخرج مع `IsInclusive` مجموعة البارامترات true. وستحتفظ النسخة بعلامة الكتاب أيضا.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

الناتج المستخرج مع **IsInclusive** مجموعة البارامترات false. النسخة تحتوي على المحتوى لكن بدون علامة الكتاب

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## مقتطف من التعليق

ويرد في التعليق على التعليق، والتعليق، والتعليق. كل هذه الأكواد مصممة ويلخص العقدان الأولان المضمون الوارد في الوثيقة المشار إليه في التعليق، على النحو المبين في التصويب أدناه.

The **Comment** الشعار نفسه هو [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) التي يمكن أن تحتوي على فقرات وركضات. وهو يمثل رسالة التعليق التي يُنظر إليها على أنها فقاعة تعليق في مقصورة الاستعراض. بما أن هذا العقد مُخطّط و سفاح لجسد يمكنك أيضاً استخراج المحتوى من داخل هذه الرسالة أيضاً

وفي وثيقتنا، لدينا تعليق واحد. فلنعرضه بالظهور في جدول الاستعراض:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

ويلخص التعليق العنوان والفقرة الأولى والجدول في الفرع الثاني. ولنستخلص هذا التعليق في وثيقة جديدة. The **IsInclusive** ويقضي الخيار بالاحتفاظ بالتعليق نفسه أو التخلي عنه.

ويبين المثال الرمزي التالي ما يلي:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

أولا، الناتج المستخرج مع `IsInclusive` مجموعة البارامترات true. وستتضمن النسخة التعليق أيضا.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

ثانيا، الناتج المستخرج مع **غير شامل** المجموعة false. The copy contains the content but without the comment.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Extract Content using DocumentVisitor

Aspose.Words لا يمكن استخدامها فقط لخلق Microsoft Word (ب) الوثائق عن طريق بناء نماذج دينامية أو دمجها مع البيانات، ولكن أيضاً من أجل فرز الوثائق من أجل استخلاص عناصر وثيقة منفصلة مثل المرشدين والقدماء والفقرات والجداول والصور وغيرها. وتتمثل مهمة ممكنة أخرى في إيجاد جميع نصوص أشكال أو أسلوب محدد.

استخدام [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) درجة لتنفيذ سيناريو الاستخدام هذا هذا الفصل يطابق نمط تصميم الزائرين المعروف جيداً مع [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)يمكنك تحديد وتنفيذ العمليات العرفية التي تتطلب عدلاً على شجرة الوثائق

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) يوفر مجموعة من **VisitXXX** الطرائق التي يُحتج بها عندما يُصادف عنصر معين من عناصر الوثائق (المعيار). على سبيل المثال، [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) يُستدعى عندما يُعثر على بداية فقرة نصية، [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) يُستدعى عندما يُعثر على نهاية النص. كل واحد **DocumentVisitor.VisitXXX** الطريقة تقبل الجسم المقابل الذي تصادفه حتى تتمكن من استخدامه حسب الحاجة (يقال استرجاع الشكل) [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) و [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) قبول [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) هدف

كل واحد **DocumentVisitor.VisitXXX** طريقة العودة(أ) **VisitorAction** القيمة التي تتحكم في عد الأنهار يمكنك أن تطلب إما أن تستمر في العد أو أن تتخطى العقد الحالي (ولكن أن تستمر في العد) أو أن تتوقف عن عد العقد

وهذه هي الخطوات التي ينبغي أن تتبعها لتحديد واستخراج مختلف أجزاء الوثيقة من الناحية البرنامجية:

- إنشاء طبقة مستمدة من [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- تجاوز وتنفيذ بعض أو كل **DocumentVisitor.VisitXXX** أساليب للقيام ببعض العمليات المعتادة
-اتصل [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) على العقد من حيث تريد أن تبدأ العد على سبيل المثال، إذا كنت ترغب في تعداد كامل الوثيقة، استخدام [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) توفير عمليات التنفيذ الافتراضي لجميع **DocumentVisitor.VisitXXX** طرق This makes it easier to create new document visitors as only the methods required for the particular visitor need to be overridden. وليس من الضروري تجاوز جميع أساليب الزوار.

ويبين المثال التالي كيفية استخدام نمط الزوار لإضافة عمليات جديدة إلى Aspose.Words نموذج الجسم. وفي هذه الحالة، ننشئ محولا بسيطا للوثائق في شكل نص:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## نص مقتطف فقط

وفيما يلي طرق استرجاع النص من الوثيقة:

- استخدام [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) مع [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) ليحفظ كنص عادي في ملف أو تيار
- استخدام [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) ويمرر `SaveFormat.Text` البارامترات وداخلياً، يُحتج بهذا الأمر إلا نصاً في مجرى الذاكرة ويعيد الخيط الناتج
- استخدام [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) لاسترجاع النص مع الجميع Microsoft Word سمات الرقابة بما في ذلك الرموز الميدانية
- تنفيذ العرف [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) القيام بعمليات استخراج مصممة حسب الطلب

### استخدام `Node.GetText` و `Node.ToString`

ألف ويمكن أن تتضمن الوثيقة الوردية سمات تحكم تحدد عناصر خاصة مثل الميدان، ونهاية الخلية، ونهاية الفرع، وما إلى ذلك. The full list of possible Word control characters is defined in the **ControlChar** الصف The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) الطريقة تعيد النص مع كل شخصيات التحكم الموجودة في العقد

ودعوة " توسترينغ " إلى إعادة النص الواضح للوثيقة دون أن يكون لها طابع السيطرة. وللاطلاع على مزيد من المعلومات بشأن التصدير بوصفه نصاً سهلاً، انظر **Using SaveFormat.Text**.

المثال الرمزي التالي يبين الفرق بين تسمية **GetText** و [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) الأساليب على العقد:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### استخدام `SaveFormat.Text`

ويحتفظ هذا المثال بالوثيقة على النحو التالي:

- فرز الشخصيات الميدانية والرموز الميدانية والشكل والحاشية والملاحظة
- يستعاض عن نهاية الفقرة [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) الشخصيات مع [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) التركيبات
- استخدام زينة يو تي 8

The following code example shows how to save a document in TXT format:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## مقتطفات من أشبال

قد تحتاج إلى استخراج صور وثائقية لأداء بعض المهام. Aspose.Words يسمح لك بفعل هذا أيضاً

ويبين المثال الرمزي التالي كيفية استخراج الصور من الوثيقة:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
