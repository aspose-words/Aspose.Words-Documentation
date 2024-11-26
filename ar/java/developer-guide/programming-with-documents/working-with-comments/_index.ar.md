---
title: العمل مع التعليقات في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع التعليقات
linktitle: العمل مع التعليقات
description: "العمل مع التعليقات باستخدام Java."
type: docs
weight: 260
url: /ar/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**جرب عبر الإنترنت**

يمكنك تجربة هذه الوظيفة من خلال [إزالة التعليقات التوضيحية المجانية عبر الإنترنت](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words يسمح للمستخدمين بالعمل مع التعليقات-يتم تمثيل التعليقات في مستند في Aspose.Words بواسطة فئة [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). استخدم أيضا الفئتين [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) لتحديد منطقة النص التي يجب أن ترتبط بتعليق.

## إضافة تعليق

Aspose.Words يسمح لك بإضافة التعليقات بعدة طرق:

1. باستخدام فئة [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. باستخدام [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) الطبقات

يوضح مثال التعليمات البرمجية التالية كيفية إضافة تعليق إلى فقرة باستخدام فئة **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

يوضح مثال التعليمة البرمجية التالية كيفية إضافة تعليق إلى فقرة باستخدام منطقة نص وفئات **CommentRangeStart** و **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## استخراج أو إزالة التعليقات

يعد استخدام التعليقات في مستند ورد (بالإضافة إلى تتبع التغييرات) ممارسة شائعة عند مراجعة المستندات، خاصة عندما يكون هناك العديد من المراجعين. يمكن أن تكون هناك مواقف يكون فيها الشيء الوحيد الذي تحتاجه من المستند هو التعليقات. لنفترض أنك تريد إنشاء قائمة بنتائج المراجعة، أو ربما تكون قد جمعت جميع المعلومات المفيدة من المستند وتريد ببساطة إزالة التعليقات غير الضرورية. قد ترغب في عرض أو إزالة تعليقات مراجع معين.

في هذه العينة، سنلقي نظرة على بعض الطرق البسيطة لجمع المعلومات من التعليقات داخل المستند ولإزالة التعليقات من المستند. على وجه التحديد، سنغطي كيفية:

- استخراج جميع التعليقات من وثيقة أو فقط تلك التي أدلى بها مؤلف معين.
- قم بإزالة جميع التعليقات من مستند أو من مؤلف معين فقط.

### كيفية استخراج أو إزالة التعليقات

الكود في هذه العينة بسيط للغاية وتستند جميع الطرق إلى نفس النهج. يتم تمثيل التعليق في مستند ورد بكائن `Comment` في نموذج كائن المستند Aspose.Words. لجمع كل التعليقات في مستند، استخدم طريقة [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) مع تعيين المعلمة الأولى على `NodeType.Comment`. تأكد من تعيين المعلمة الثانية لطريقة **getChildNodes** على صحيح: هذا يفرض **getChildNodes** للاختيار من بين جميع العقد الفرعية بشكل متكرر، بدلا من جمع الأطفال المباشرين فقط.

لتوضيح كيفية استخراج التعليقات وإزالتها من مستند، سنتبع الخطوات التالية:

1. افتح مستند ورد باستخدام فئة [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. احصل على جميع التعليقات من المستند في مجموعة
1. لاستخراج التعليقات:
   1. تذهب من خلال جمع باستخدام للمشغل
   1. استخراج وقائمة اسم المؤلف والتاريخ والوقت ونص جميع التعليقات
   1. استخراج وقائمة اسم المؤلف والتاريخ والوقت ونص التعليقات التي كتبها مؤلف معين، في هذه الحالة، المؤلف 'كس'
1. لإزالة التعليقات:
   1. العودة إلى الوراء من خلال جمع باستخدام للمشغل
   1. إزالة التعليقات
1. احفظ التغييرات.

سوف نستخدم مستند الكلمة التالي لهذا التمرين:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

كما ترون، فإنه يحتوي على عدة تعليقات من اثنين من المؤلفين مع الأحرف الأولى "بيإم" و "كس".

### كيفية استخراج جميع التعليقات

طريقة [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) مفيدة للغاية ويمكنك استخدامها في كل مرة تحتاج فيها إلى الحصول على قائمة بعقد المستندات من أي نوع. لا تنشئ المجموعة الناتجة حملا فوريا لأن العقد يتم تحديدها في هذه المجموعة فقط عند تعداد العناصر الموجودة فيها أو الوصول إليها.

يوضح مثال الكود التالي كيفية استخراج اسم المؤلف والتاريخ والوقت ونص جميع التعليقات في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### كيفية استخراج تعليقات مؤلف محدد

بعد تحديد عقد التعليق في مجموعة، كل ما عليك فعله هو استخراج المعلومات التي تحتاجها. في هذه العينة، يتم دمج الأحرف الأولى للمؤلف والتاريخ والوقت والنص العادي للتعليق في سلسلة واحدة ؛ يمكنك اختيار تخزينه بطرق أخرى بدلا من ذلك.

الطريقة المثقلة التي تستخرج التعليقات من مؤلف معين هي نفسها تقريبا، فهي تتحقق فقط من اسم المؤلف قبل إضافة المعلومات إلى المصفوفة.

يوضح مثال الكود التالي كيفية استخراج اسم المؤلف والتاريخ والوقت ونص التعليقات من قبل المؤلف المحدد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### كيفية إزالة التعليقات

إذا كنت تقوم بإزالة جميع التعليقات، فلا داعي للتنقل عبر المجموعة حذف التعليقات واحدا تلو الآخر ؛ يمكنك إزالتها عن طريق الاتصال [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) في مجموعة التعليقات.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة كافة التعليقات في المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

عندما تحتاج إلى إزالة التعليقات بشكل انتقائي، تصبح العملية أكثر تشابها مع الكود الذي استخدمناه لاستخراج التعليقات.

يوضح مثال الكود التالي كيفية إزالة التعليقات من قبل المؤلف المحدد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

النقطة الرئيسية التي يجب تسليط الضوء عليها هنا هي استخدام المشغل. على عكس الاستخراج البسيط، هنا تريد حذف تعليق. الحيلة المناسبة هي تكرار المجموعة للخلف من التعليق الأخير إلى التعليق الأول. والسبب في ذلك إذا بدأت من النهاية وانتقلت للخلف، فسيظل فهرس العناصر السابقة دون تغيير، ويمكنك العودة إلى العنصر الأول في المجموعة.

يوضح مثال التعليمات البرمجية التالية طرق استخراج التعليقات وإزالتها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

عند التشغيل، تعرض العينة النتائج التالية. أولا، يسرد جميع التعليقات من قبل جميع المؤلفين، ثم يسرد التعليقات من قبل المؤلف المحدد فقط. وأخيرا، رمز إزالة جميع التعليقات.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

وثيقة كلمة الإخراج لديها الآن تعليقات إزالتها منه:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### كيفية إزالة النص بين CommentRangeStart و CommentRangeEnd

باستخدام Aspose.Words يمكنك أيضا إزالة التعليقات بين العقدتين CommentRangeStart و CommentRangeEnd.

يوضح مثال الكود التالي كيفية إزالة النص بين CommentRangeStart و CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## إضافة أو إزالة رد التعليق

تضيف طريقة [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) ردا على هذا التعليق. يرجى ملاحظة أنه نظرا لقيود المكتب الحالية MS، لا يسمح إلا بمستوى واحد (1) من الردود في المستند. سيتم رفع استثناء من النوع InvalidOperationException إذا تم استدعاء هذه الطريقة في تعليق الرد الحالي.

يمكنك استخدام طريقة [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) لإزالة الرد المحدد على هذا التعليق.

يوضح مثال الكود التالي كيفية إضافة رد إلى تعليق وإزالة رد تعليق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## اقرأ رد التعليق

Aspose.Words دعم لقراءة الرد على تعليق. تقوم الخاصية [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) بإرجاع مجموعة من الكائنات [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) التي تكون تابعة مباشرة للتعليق المحدد.

يوضح مثال الكود التالي كيفية التكرار من خلال ردود التعليق وحلها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
