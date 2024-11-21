---
title: العمل مع التعليقات في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع التعليقات
linktitle: العمل مع التعليقات
description: "العمل مع التعليقات باستخدام Java."
type: docs
weight: 260
url: /ar/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**حاول على الإنترنت**

يمكنك أن تجرب هذه الوظيفة معنا [إزالة الشروح مجانا على الإنترنت](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words يسمح للمستعملين بالعمل مع التعليقات - التعليقات الواردة في وثيقة من الوثائق Aspose.Words ممثلة في الدورة [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) الصف Also use the [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) أصناف تحدد منطقة النص التي ينبغي ربطها بتعليق.

## يضاف تعليق

Aspose.Words وتسمح لكم بإضافة تعليقات بعدة طرق:

1 استخدام [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) الصف
2. استخدام [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) الفصول

ويبين المثال الرمزي التالي كيفية إضافة تعليق إلى فقرة باستخدام **Comment** الفصل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

ويبيّن المثال الرمزي التالي كيفية إضافة تعليق إلى فقرة باستخدام منطقة نص **CommentRangeStart** و **CommentRangeEnd** الصفوف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extract or Remove Comments

واستخدام التعليقات في وثيقة كلمة (بالإضافة إلى تغييرات المسار) ممارسة شائعة عند استعراض الوثائق، لا سيما عندما يكون هناك مراجعون متعددون. يمكن أن يكون هناك حالات حيث الشيء الوحيد الذي تحتاجه من وثيقة هو التعليقات. قل أنك تريد وضع قائمة بنتائج الاستعراض، أو ربما تكون قد جمعت جميع المعلومات المفيدة من الوثيقة وتريد ببساطة إزالة التعليقات غير الضرورية. قد ترغب في رؤية أو إزالة تعليقات مستعرض معين.

وفي هذه العينة، سننظر في بعض الأساليب البسيطة لجمع المعلومات من التعليقات الواردة في وثيقة، ولحذف التعليقات من وثيقة. وعلى وجه التحديد، سنغطي كيفية:

- استخلاص جميع التعليقات الواردة من وثيقة أو فقط التعليقات التي أبداها مؤلف معين.
- إلغاء جميع التعليقات الواردة من وثيقة ما أو من صاحب معين فقط.

### How to Extract or Remove Comments

والرمز الوارد في هذه العينة بسيط جداً وتستند جميع الأساليب إلى نفس النهج. A comment in a Word document is represented by a `Comment` الجسم في Aspose.Words نموذج الجسم الوثائقي جمع جميع التعليقات الواردة في وثيقة ما [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) طريقة مع أول بارامتر `NodeType.Comment`. تأكد من أن ثاني بارامتر **الحصول على شيلد نودس** طريقة محددة true: هذا يُجبر **الحصول على شيلد نودس** أن تختار من جميع الأطفال الذين يقدمون عروضاً علاجية، بدلاً من جمع الأطفال المباشرين فقط.

ولتوضيح كيفية استخلاص التعليقات من وثيقة ما وإزالتها، سنتجاوز الخطوات التالية:

1 فتح وثيقة كلمة باستخدام [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الصف
1 الحصول على جميع التعليقات من الوثيقة إلى مجموعة
1 لاستخلاص التعليقات:
   1. Go through the collection using the for the operator
   1 - استخلاص قائمة بأسماء صاحب البلاغ وتاريخها ونص جميع التعليقات
   1. Extract and list the author name, date &apos; time and text of comments written by a specific author, in this case, the author ‘ks’
1 لحذف التعليقات:
   1 - العودة إلى الوراء من خلال المجموعة باستخدام المشغل
   1- إلغاء التعليقات
1 احتفظ بالتغييرات

وسنستخدم الوثيقة الوردية التالية لهذه العملية:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

وكما ترون، يتضمن التقرير عدة تعليقات من اثنين من المؤلفين مع " ص " و " ص " أوليين.

### How to Extract All Comments

The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) الطريقة مفيدة جداً ويمكنك استخدامها في كل مرة تحتاج فيها إلى قائمة بوثائق من أي نوع المجموعة الناتجة لا تخلق رأساً إضافياً فورياً لأن العقد يتم إختياره في هذه المجموعة فقط عندما تعدين أو تدخلين فيها

ويبين المثال الرمزي التالي كيفية استخراج اسم صاحب البلاغ وتاريخه ونص جميع التعليقات الواردة في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### كيف يمكن استخلاص التعليقات على المؤلف المحدد

بعد أن تختاري عقدة تعليقات في مجموعة، كل ما عليك فعله هو استخراج المعلومات التي تحتاجها. في هذه العينة، مبدئيات صاحب البلاغ وتاريخه وزمانه والنص الواضح للتعليق مدمجة في سلسلة واحدة، يمكنك اختيار تخزينها بطرق أخرى بدلاً من ذلك.

والطريقة التي يتم تحميلها بشكل مفرط والتي تستخلص التعليقات من أحد المؤلفين هي نفس الطريقة تقريبا، فهي تدقق في اسم صاحب البلاغ قبل إضافة المعلومات إلى الصفيفة.

ويبيّن المثال الرمزي التالي كيفية استخراج اسم صاحب البلاغ، والتاريخ، ونص تعليقات صاحب البلاغ المحدد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### كيفية إزالة التعليقات

إذا قمت بإزالة جميع التعليقات، ليس هناك حاجة للتحرك من خلال مجموعة حذف التعليقات واحد تلو الآخر؛ يمكنك إزالتها بالاتصال [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) على مجموعة التعليقات.

ويبين المثال الرمزي التالي كيفية إزالة جميع التعليقات الواردة في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

عندما تحتاج إلى إزالة التعليقات بشكل انتقائي تصبح العملية أكثر تشابهاً مع الشفرة التي استخدمناها لاستخراج التعليقات

ويبين المثال الرمزي التالي كيفية إزالة تعليقات صاحب البلاغ المحدد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

والنقطة الرئيسية التي تبرز هنا هي استخدام المشغل. على عكس الاستخراج البسيط هنا تريد حذف تعليق الخدعة المناسبة هي تكرّر المجموعة بالعكس من آخر تعليق إلى الأول السبب في هذا إذا بدأت من النهاية وتراجعت فهرس البنود السابقة لم يتغير ويمكنك العودة إلى أول بند في المجموعة

The following code example shows the methods for the comments extraction and removal:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

وعند إطلاقها، تبين العينة النتائج التالية. أولاً، تورد جميع تعليقات جميع أصحاب البلاغ، ثم تورد تعليقات صاحب البلاغ المختار فقط. وأخيرا، يزيل الرمز جميع التعليقات.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

وقد أُزيلت من الوثيقة المعنونة " وورد " التعليقات التالية:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### How to Remove Text between CommentRangeStart and CommentRangeEnd

استخدام Aspose.Words ويمكنكم أيضاً أن تزيلوا التعليقات بين عُقدي التعليق (RangeStart) والتعليق (RangeEnd).

The following code example shows how to remove text between CommentRangeStart and CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## أضف أو ألغي رد التعليق

The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) وتضيف طريقة الرد على هذا التعليق. ويرجى الانتباه إلى أنه نظراً إلى أن مكتب خدمات المشاريع المتعدد الوسائط الحالي لا يسمح إلا بمستوى واحد (1) من الردود في الوثيقة. وسوف يُثار استثناء من نوع " التلقيم غير القابل للتنفيذ " إذا دعت هذه الطريقة إلى تعليق الرد القائم.

يمكنك استخدام [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) طريقة لإزالة الرد المحدد على هذا التعليق.

المثال الرمزي التالي يظهر كيف يضيف رد على تعليق ويزيل رد التعليق

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## اقرأ رد التعليق

Aspose.Words تأييد قراءة رد التعليق. The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) إعادة الممتلكات [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) الأجسام التي هي أطفال فوريين للتعليق المحدد.

المثال الرمزي التالي يُظهر كيف يُكرّر من خلال ردود التعليق ويحلّها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
