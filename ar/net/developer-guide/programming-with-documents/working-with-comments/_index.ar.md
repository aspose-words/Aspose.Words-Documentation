---
title: العمل مع التعليقات في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع التعليقات
linktitle: العمل مع التعليقات
description: "العمل مع التعليقات باستخدام C#."
type: docs
weight: 260
url: /ar/net/working-with-comments/
---

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [إزالة التعليقات التوضيحية مجانًا عبر الإنترنت](https://products.aspose.app/words/annotation) الخاص بنا.

{{% /alert %}}

يتيح Aspose.Words للمستخدمين العمل مع التعليقات - يتم تمثيل التعليقات الموجودة في مستند في Aspose.Words بواسطة فئة [Comment](https://reference.aspose.com/words/ar/net/aspose.words/comment/). استخدم أيضًا فئات [CommentRangeStart](https://reference.aspose.com/words/ar/net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/ar/net/aspose.words/commentrangeend/) لتحديد منطقة النص التي يجب أن ترتبط بالتعليق.

## اضف تعليق

يسمح لك Aspose.Words بإضافة التعليقات بعدة طرق:

1. استخدام فئة [Comment](https://reference.aspose.com/words/ar/net/aspose.words/comment/)
2. استخدام فئتي [CommentRangeStart](https://reference.aspose.com/words/ar/net/aspose.words/commentrangestart/) و[CommentRangeEnd](https://reference.aspose.com/words/ar/net/aspose.words/commentrangeend/)

يوضح مثال التعليمات البرمجية التالي كيفية إضافة تعليق إلى فقرة باستخدام فئة **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة تعليق إلى فقرة باستخدام منطقة نص وفئتي **CommentRangeStart** و**CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## استخراج أو إزالة التعليقات

يعد استخدام التعليقات في مستند Word (بالإضافة إلى تعقب التغييرات) ممارسة شائعة عند مراجعة المستندات، خاصة عندما يكون هناك عدة مراجعين. يمكن أن تكون هناك مواقف يكون فيها الشيء الوحيد الذي تحتاجه من المستند هو التعليقات. لنفترض أنك تريد إنشاء قائمة بنتائج المراجعة، أو ربما قمت بجمع كل المعلومات المفيدة من المستند وتريد ببساطة إزالة التعليقات غير الضرورية. قد ترغب في عرض أو إزالة تعليقات مراجع معين.

في هذه العينة، سنلقي نظرة على بعض الأساليب البسيطة لجمع المعلومات من التعليقات داخل المستند ولإزالة التعليقات من المستند. سنغطي على وجه التحديد كيفية:

- استخراج كافة التعليقات من وثيقة أو فقط تلك التي أدلى بها مؤلف معين
- إزالة كافة التعليقات من مستند أو من مؤلف معين فقط

### كيفية استخراج أو إزالة التعليقات

التعليمات البرمجية الموجودة في هذه العينة بسيطة للغاية وتعتمد كافة الأساليب على نفس الأسلوب. يتم تمثيل التعليق في مستند Word بواسطة كائن [Comment](https://reference.aspose.com/words/ar/net/aspose.words/comment/) في نموذج كائن مستند Aspose.Words. لتجميع كل التعليقات في مستند، استخدم أسلوب [GetChildNodes](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/getchildnodes/) مع تعيين المعلمة الأولى على [NodeType.Comment](https://reference.aspose.com/words/ar/net/aspose.words/nodetype/). تأكد من تعيين المعلمة الثانية لأسلوب **GetChildNodes** على true: وهذا يفرض على **GetChildNodes** الاختيار من جميع العقد الفرعية بشكل متكرر، بدلاً من جمع العناصر الفرعية المباشرة فقط.

لتوضيح كيفية استخراج التعليقات وإزالتها من مستند، سنمر بالخطوات التالية:

1. افتح مستند Word باستخدام فئة [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/)
2. احصل على كافة التعليقات من المستند في مجموعة
3. لاستخراج التعليقات:
   1. انتقل إلى المجموعة باستخدام عامل التشغيل foreach
   2. قم باستخراج وإدراج اسم المؤلف والتاريخ والوقت ونص جميع التعليقات
   3. قم باستخراج وإدراج اسم المؤلف والتاريخ والوقت ونص التعليقات المكتوبة بواسطة مؤلف محدد، في هذه الحالة المؤلف 'ks'
4. لإزالة التعليقات:
   1. قم بالرجوع للخلف خلال المجموعة باستخدام عامل التشغيل for
   2. إزالة التعليقات
5. احفظ التغييرات

### كيفية استخراج كافة التعليقات

تعد طريقة **GetChildNodes** مفيدة جدًا ويمكنك استخدامها في كل مرة تحتاج فيها إلى الحصول على قائمة بعقد المستندات من أي نوع. لا تنشئ المجموعة الناتجة حملًا مباشرًا لأنه يتم تحديد العقد في هذه المجموعة فقط عند تعداد العناصر الموجودة فيها أو الوصول إليها.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج اسم المؤلف والتاريخ والوقت والنص لجميع التعليقات في المستند:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### كيفية استخراج تعليقات مؤلف محدد

بعد تحديد عقد **Comment** في المجموعة، كل ما عليك فعله هو استخراج المعلومات التي تحتاجها. في هذه العينة، يتم دمج الأحرف الأولى من اسم المؤلف والتاريخ والوقت والنص العادي للتعليق في سلسلة واحدة؛ يمكنك اختيار تخزينه بطرق أخرى بدلاً من ذلك.

الطريقة المثقلة التي تستخرج التعليقات من مؤلف معين هي نفسها تقريبًا، فهي تتحقق فقط من اسم المؤلف قبل إضافة المعلومات إلى المصفوفة.

يوضح مثال التعليمات البرمجية التالي كيفية استخراج اسم المؤلف وتاريخه ووقته ونص التعليقات بواسطة المؤلف المحدد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### كيفية إزالة التعليقات

إذا كنت تقوم بإزالة جميع التعليقات، فليست هناك حاجة للتنقل خلال المجموعة لحذف التعليقات واحدًا تلو الآخر. يمكنك إزالتها عن طريق استدعاء الأسلوب [Clear](https://reference.aspose.com/words/ar/net/aspose.words/nodecollection/clear/) في مجموعة التعليقات.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة كافة التعليقات في المستند:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

عندما تحتاج إلى إزالة التعليقات بشكل انتقائي، تصبح العملية أكثر تشابهًا مع الكود الذي استخدمناه لاستخراج التعليقات.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة التعليقات بواسطة المؤلف المحدد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

النقطة الرئيسية التي يجب تسليط الضوء عليها هنا هي استخدام عامل التشغيل. على عكس الاستخراج البسيط، هنا تريد حذف تعليق. الحيلة المناسبة هي تكرار المجموعة بشكل عكسي من التعليق الأخير إلى التعليق الأول. والسبب في ذلك هو أنه إذا بدأت من النهاية وانتقلت للخلف، فسيظل فهرس العناصر السابقة دون تغيير، ويمكنك العودة إلى العنصر الأول في المجموعة.

يوضح مثال التعليمات البرمجية التالي طرق استخراج التعليقات وإزالتها:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### كيفية إزالة تعليق بين CommentRangeStart وCommentRangeEnd

باستخدام Aspose.Words، يمكنك أيضًا إزالة التعليقات بين عقدتي **CommentRangeStart** و**CommentRangeEnd**.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة النص بين **CommentRangeStart** و**CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## إضافة أو إزالة الرد على التعليق

تضيف طريقة [AddReply](https://reference.aspose.com/words/ar/net/aspose.words/comment/addreply/) ردًا على هذا التعليق. يرجى ملاحظة أنه نظرًا للقيود الحالية لمكتب Microsoft، يُسمح فقط بمستوى واحد من الردود في المستند. سيتم ظهور استثناء من النوع *InvalidOperationException* إذا تم استدعاء هذه الطريقة على تعليق الرد الموجود.

يمكنك استخدام طريقة [RemoveReply](https://reference.aspose.com/words/ar/net/aspose.words/comment/removereply/) لإزالة الرد المحدد على هذا التعليق.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة رد على التعليق وإزالة رد التعليق:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## اقرأ رد التعليق

تقوم الخاصية [Replies](https://reference.aspose.com/words/ar/net/aspose.words/comment/replies/) بإرجاع مجموعة من كائنات [Comment](https://reference.aspose.com/words/ar/net/aspose.words/comment/) التي تعتبر أبناء مباشرين للتعليق المحدد.

يوضح مثال التعليمات البرمجية التالي كيفية تكرار ردود التعليقات وحلها:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
