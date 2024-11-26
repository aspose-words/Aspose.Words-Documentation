---
title: العمل مع التعليقات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع التعليقات
linktitle: العمل مع التعليقات
description: "كيفية إضافة التعليقات أو إزالتها أو معالجتها في مستند باستخدام Python."
type: docs
weight: 260
url: /ar/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [إزالة التعليقات التوضيحية مجانًا عبر الإنترنت](https://products.aspose.app/words/annotation) الخاص بنا.

{{% /alert %}}

يتيح Aspose.Words للمستخدمين العمل مع التعليقات - يتم تمثيل التعليقات الموجودة في مستند في Aspose.Words بواسطة فئة [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). استخدم أيضًا فئات [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) لتحديد منطقة النص التي يجب أن ترتبط بالتعليق.

## اضف تعليق

يسمح لك Aspose.Words بإضافة التعليقات بعدة طرق:

1. استخدام فئة [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. استخدام فئتي [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

يوضح مثال التعليمات البرمجية التالي كيفية إضافة تعليق إلى فقرة باستخدام فئة **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة تعليق إلى فقرة باستخدام منطقة نص وفئتي **CommentRangeStart** و**CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## استخراج أو إزالة التعليقات

يعد استخدام التعليقات في مستند Word (بالإضافة إلى تعقب التغييرات) ممارسة شائعة عند مراجعة المستندات، خاصة عندما يكون هناك عدة مراجعين. يمكن أن تكون هناك مواقف يكون فيها الشيء الوحيد الذي تحتاجه من المستند هو التعليقات. لنفترض أنك تريد إنشاء قائمة بنتائج المراجعة، أو ربما قمت بجمع كل المعلومات المفيدة من المستند وتريد ببساطة إزالة التعليقات غير الضرورية. قد ترغب في عرض أو إزالة تعليقات مراجع معين.

في هذه العينة، سنلقي نظرة على بعض الأساليب البسيطة لجمع المعلومات من التعليقات داخل المستند ولإزالة التعليقات من المستند. سنغطي على وجه التحديد كيفية:

- استخراج كافة التعليقات من وثيقة أو فقط تلك التي أدلى بها مؤلف معين.
- إزالة كافة التعليقات من مستند أو من مؤلف معين فقط.

### كيفية استخراج أو إزالة التعليقات

التعليمات البرمجية الموجودة في هذه العينة بسيطة للغاية وتعتمد كافة الأساليب على نفس الأسلوب. يتم تمثيل التعليق في مستند Word بواسطة كائن [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) في نموذج كائن مستند Aspose.Words. لتجميع كل التعليقات في مستند، استخدم أسلوب [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) مع تعيين المعلمة الأولى على [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). تأكد من تعيين المعلمة الثانية لأسلوب **get_child_nodes** على true: وهذا يفرض على **get_child_nodes** الاختيار من جميع العقد الفرعية بشكل متكرر، بدلاً من جمع العناصر الفرعية المباشرة فقط.

لتوضيح كيفية استخراج التعليقات وإزالتها من مستند، سنمر بالخطوات التالية:

1. افتح مستند Word باستخدام فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. احصل على كافة التعليقات من المستند في مجموعة
1. لاستخراج التعليقات:
   1. انتقل إلى المجموعة باستخدام عامل التشغيل foreach
   1. قم باستخراج وإدراج اسم المؤلف والتاريخ والوقت ونص جميع التعليقات
   1. قم باستخراج وإدراج اسم المؤلف والتاريخ والوقت ونص التعليقات المكتوبة بواسطة مؤلف محدد، في هذه الحالة المؤلف 'ks'
1. لإزالة التعليقات:
   1. قم بالرجوع للخلف خلال المجموعة باستخدام عامل التشغيل for
   1. إزالة التعليقات
1. احفظ التغييرات

### كيفية استخراج كافة التعليقات

تعد طريقة [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) مفيدة جدًا ويمكنك استخدامها في كل مرة تحتاج فيها إلى الحصول على قائمة بعقد المستندات من أي نوع. لا تنشئ المجموعة الناتجة حملًا مباشرًا لأنه يتم تحديد العقد في هذه المجموعة فقط عند تعداد العناصر الموجودة فيها أو الوصول إليها.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج اسم المؤلف والتاريخ والوقت والنص لجميع التعليقات في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### كيفية استخراج تعليقات مؤلف محدد

بعد تحديد عقد [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) في المجموعة، كل ما عليك فعله هو استخراج المعلومات التي تحتاجها. في هذه العينة، يتم دمج الأحرف الأولى من اسم المؤلف والتاريخ والوقت والنص العادي للتعليق في سلسلة واحدة؛ يمكنك اختيار تخزينه بطرق أخرى بدلاً من ذلك.

الطريقة المثقلة التي تستخرج التعليقات من مؤلف معين هي نفسها تقريبًا، فهي تتحقق فقط من اسم المؤلف قبل إضافة المعلومات إلى المصفوفة.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج اسم المؤلف وتاريخه ووقته ونص التعليقات بواسطة المؤلف المحدد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### كيفية إزالة التعليقات

إذا كنت تقوم بإزالة جميع التعليقات، فليست هناك حاجة للتنقل عبر المجموعة لحذف التعليقات واحدًا تلو الآخر؛ يمكنك إزالتها عن طريق الاتصال بـ [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) في مجموعة التعليقات.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة كافة التعليقات في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

عندما تحتاج إلى إزالة التعليقات بشكل انتقائي، تصبح العملية أكثر تشابهًا مع الكود الذي استخدمناه لاستخراج التعليقات.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة التعليقات بواسطة المؤلف المحدد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

النقطة الرئيسية التي يجب تسليط الضوء عليها هنا هي استخدام عامل التشغيل. على عكس الاستخراج البسيط، هنا تريد حذف تعليق. الحيلة المناسبة هي تكرار المجموعة بشكل عكسي من آخر [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) إلى الأول. والسبب في ذلك هو أنه إذا بدأت من النهاية وانتقلت للخلف، فسيظل فهرس العناصر السابقة دون تغيير، ويمكنك العودة إلى العنصر الأول في المجموعة.

يوضح مثال التعليمات البرمجية التالي طرق استخراج التعليقات وإزالتها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### كيفية إزالة تعليق بين CommentRangeStart وCommentRangeEnd

باستخدام Aspose.Words، يمكنك أيضًا إزالة التعليقات بين عقدتي **CommentRangeStart** و**CommentRangeEnd**.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة النص بين **CommentRangeStart** و**CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## إضافة أو إزالة الرد على التعليق

تضيف طريقة [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) ردًا على هذا التعليق. يرجى ملاحظة أنه نظرًا للقيود الحالية لمكتب Microsoft، يُسمح فقط بمستوى واحد من الردود في المستند. سيتم ظهور استثناء من النوع **InvalidOperationException** إذا تم استدعاء هذه الطريقة على تعليق الرد الموجود.

يمكنك استخدام طريقة [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) لإزالة الرد المحدد على هذا التعليق.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رد على التعليق وإزالة رد التعليق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## اقرأ رد التعليق

تقوم الخاصية [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) بإرجاع مجموعة من كائنات [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) التي تعتبر أبناء مباشرين للتعليق المحدد.

يوضح مثال التعليمات البرمجية التالي كيفية تكرار ردود التعليقات وحلها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
