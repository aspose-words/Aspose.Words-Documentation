---
title: أنواع Mail Merge العملية في C#
second_title: Aspose.Words ل .NET
articleTitle: أنواع Mail Merge عملية
linktitle: أنواع Mail Merge عملية
type: docs
description: "تنفيذ نوعين مختلفين من Mail Merge العمليات: بسيطة Mail Merge و Mail Merge مع المناطق باستخدام C#. يكرر Mail Merge البسيط المستند بأكمله لكل سجل مصدر بيانات، بينما يكرر Mail Merge مع المناطق المناطق المعينة فقط لكل سجل."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /ar/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

الفكرة الرئيسية لـ Mail Merge هي إنشاء مستند أو مستندات متعددة تلقائيا بناء على القالب والبيانات التي تم جلبها من مصدر البيانات الخاص بك. Aspose.Words يسمح لك بإجراء نوعين مختلفين من Mail Merge العمليات: بسيطة Mail Merge و Mail Merge مع المناطق.

المثال الأكثر شيوعا لاستخدام بسيط Mail Merge هو عندما تريد إرسال مستند لعملاء مختلفين من خلال تضمين أسمائهم في بداية المستند. للقيام بذلك، تحتاج إلى إنشاء حقول دمج مثل *First Name* و *Last Name* في القالب الخاص بك، ثم تعبئتها بالبيانات من مصدر البيانات الخاص بك. في حين أن المثال الأكثر شيوعا لاستخدام Mail Merge مع المناطق هو عندما تريد إرسال مستند يتضمن أوامر محددة مع قائمة بجميع العناصر داخل كل طلب. للقيام بذلك، ستحتاج إلى إنشاء مناطق دمج داخل منطقة القالب الخاصة بك لكل طلب، من أجل ملئه بجميع البيانات المطلوبة للعناصر.

يتمثل الاختلاف الرئيسي بين عمليتي الدمج في أن Mail Merge البسيط (بدون مناطق) يكرر المستند بأكمله لكل سجل مصدر بيانات، بينما Mail Merge مع المناطق يكرر المناطق المعينة فقط لكل سجل. يمكنك التفكير في عملية Mail Merge بسيطة كحالة معينة من الدمج مع المناطق التي تكون فيها المنطقة الوحيدة هي المستند بأكمله.

{{% alert color="primary" %}}

تمثل فئة [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) وظيفة Mail Merge. مع خصائصه، يمكنك تخصيص السلوك المطلوب قبل تنفيذ عملية Mail Merge.

{{% /alert %}}

## عملية بسيطة Mail Merge {#simple-mail-merge-operation}

يتم استخدام Mail Merge بسيط لملء الحقول Mail Merge داخل القالب الخاص بك بالبيانات المطلوبة من مصدر البيانات الخاص بك (تمثيل جدول واحد). لذلك فهو مشابه للكلاسيكية Mail Merge في Microsoft Word.

يمكنك إضافة حقل دمج واحد أو أكثر في القالب الخاص بك ثم تنفيذ عملية Mail Merge البسيطة. يوصى باستخدامه إذا كان القالب الخاص بك لا يحتوي على أي مناطق دمج.

القيد الرئيسي لاستخدام هذا النوع هو أن محتوى المستند بأكمله سيتكرر لكل سجل في مصدر البيانات.

### كيفية تنفيذ عملية Mail Merge بسيطة {#how-to-execute-a-simple-mail-merge-operation}

بمجرد أن يصبح القالب جاهزا، يمكنك البدء في تنفيذ العملية البسيطة Mail Merge. Aspose.Words يسمح لك بتنفيذ عملية Mail Merge بسيطة باستخدام [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) مختلفة تقبل كائنات البيانات المختلفة كمصدر للبيانات.

يوضح مثال التعليمات البرمجية التالي كيفية تنفيذ عملية Mail Merge بسيطة باستخدام إحدى طرق [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تنفيذ بسيط mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

وبعد تنفيذ بسيط mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### كيفية إنشاء مستندات مدمجة متعددة

في Aspose.Words، تملأ العملية القياسية Mail Merge مستندا واحدا فقط بمحتوى من مصدر البيانات الخاص بك. لذلك، ستحتاج إلى تنفيذ عملية Mail Merge عدة مرات لإنشاء مستندات مدمجة متعددة كإخراج.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء مستندات مدمجة متعددة أثناء عملية Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge مع المناطق

يمكنك إنشاء مناطق مختلفة في القالب الخاص بك للحصول على مناطق خاصة يمكنك ببساطة ملؤها ببياناتك. استخدام Mail Merge مع المناطق إذا كنت ترغب في إدراج الجداول والصفوف مع تكرار البيانات لجعل المستندات الخاصة بك تنمو بشكل حيوي عن طريق تحديد تلك المناطق داخل القالب.

يمكنك إنشاء مناطق متداخلة (فرعية) بالإضافة إلى مناطق دمج. الميزة الرئيسية لاستخدام هذا النوع هي زيادة الأجزاء داخل المستند ديناميكيا. اطلع على مزيد من التفاصيل في المقالة التالية "متداخلة Mail Merge مع المناطق".

{{% alert color="primary" %}}

يمكن الحصول على معلومات حول منطقة Mail Merge باستخدام فئة [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### كيفية تنفيذ Mail Merge مع المناطق

المنطقة Mail Merge هي جزء محدد داخل مستند يحتوي على نقطة بداية ونقطة نهاية. يتم تمثيل كلتا النقطتين كحقول Mail Merge لها أسماء محددة *"TableStart:XXX"* و *"TableEnd:XXX"*. سيتم تكرار جميع المحتويات المضمنة في منطقة Mail Merge تلقائيا لكل سجل في مصدر البيانات.

Aspose.Words يسمح لك بتنفيذ Mail Merge مع مناطق تستخدم [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) مختلفة تقبل كائنات بيانات مختلفة كمصدر للبيانات.

كخطوة أولى، نحتاج إلى إنشاء `DataSet` لتمريرها لاحقا كمعلمة إدخال إلى طريقة `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تنفيذ Mail Merge مع المناطق باستخدام طريقة [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تنفيذ Mail Merge مع المناطق:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

وبعد تنفيذ Mail Merge مع المناطق:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### حدود Mail Merge مع المناطق

هناك بعض النقاط المهمة التي تحتاج إلى أخذها في الاعتبار عند إجراء Mail Merge مع المناطق:

* يجب أن تكون نقطة البداية *TableStart:Orders* ونقطة النهاية *TableEnd:Orders* في نفس الصف أو الخلية. على سبيل المثال، إذا بدأت منطقة دمج في خلية جدول، فيجب إنهاء منطقة الدمج في نفس الصف مثل الخلية الأولى.
* يجب أن يتطابق اسم حقل الدمج مع اسم العمود في DataTable. ما لم تكن قد حددت الحقول المعينة، فلن ينجح Mail Merge مع المناطق لأي حقل دمج له اسم مختلف عن اسم العمود.

إذا تم كسر إحدى هذه القواعد، فستحصل على نتائج غير متوقعة أو قد يتم طرح استثناء.

{{% alert color="primary" %}}

إذا كنت لا تستخدم مناطق Mail Merge، فستكون مشابهة لـ Microsoft Word mail merge، وسيتم تكرار محتوى المستند بالكامل لكل سجل في مصدر البيانات.

{{% /alert %}}

