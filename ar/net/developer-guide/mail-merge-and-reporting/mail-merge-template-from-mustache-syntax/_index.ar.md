---
title: Mail Merge قالب من Mustache بناء الجملة في C#
second_title: Aspose.Words ل .NET
articleTitle: Mail Merge قالب من Mustache بناء الجملة
linktitle: Mail Merge قالب من Mustache بناء الجملة
type: docs
description: "إنشاء قوالب مع Mustache بناء الجملة باستخدام C#. بناء الجملة Mustache هو الخيار الوحيد للاستخدام مع القوالب التي لا تحتوي على حقول (HTML أو TXT). باستخدام قوالب Word، لديك خياران: الحقول أو Mustache بناء الجملة."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /ar/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words يسمح لك بإنشاء قوالب باستخدام mustache بناء الجملة بالإضافة إلى القوالب المألوفة. و Mustache هو البديل البديل من بناء الجملة القالب الذي يتكون من أسماء العلامات محاطة ومدعومة من قبل كائن النموذج الذي يحتوي على البيانات للقالب.

بناء الجملة Mustache هو الخيار الوحيد للاستخدام مع القوالب التي لا تحتوي على حقول، مثل HTML و TXT القوالب. مع Word قوالب، لديك خياران إما لاستخدام الحقول أو Mustache بناء الجملة.

يدعم بناء الجملة Mustache علامة *foreach*، وهي بديل لاستخدام Mail Merge مع المناطق. لذا فإن الفائدة هي أنه يمكنك استخدام mustache بناء الجملة إذا لم تكن قادرا لسبب ما أو ببساطة لا تريد استخدام حقول الدمج ومناطق الدمج.

يمكنك أيضا دمج حقول Mail Merge مع بعض الحقول الإضافية باستخدام علامة *foreach* كما هو موضح في الصورة أدناه.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## إنشاء قالب Mustache

أول نقطة مهمة يجب توضيحها هي أن Mustache ليس محركا نموذجيا. Mustache هو متغير بناء جملة آخر متاح لأي قالب في [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) مدعوم بـ Aspose.Words. لذلك، يمكنك إنشاء مثل هذا القالب برمجيا ومن خلال واجهة، ما عليك سوى تضمين بناء جملة معين والامتثال لمواصفات Mustache.

لنفترض أنك بحاجة إلى إرسال نفس البريد الإلكتروني إلى 50 مستلما لتخصيص التحية بأسمائهم الأولى المقابلة. يمكنك استبدال الاسم الأول للمستلم ببعض العناصر النائبة على النحو التالي:

> Dear {{FirstName}}
>
> I hereby...

السؤال هنا: كيف يمكنك إنشاء 50 رسائل البريد الإلكتروني من 1 غير مرتبطة Mustache قالب? للإجابة على ذلك، تحتاج إلى تنفيذ Mail Merge مع المناطق لملء الأقواس المتعرجة للعناصر النائبة في القالب بالبيانات الفعلية وإنشاء مستند إخراج.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

كما لاحظت من المثال أعلاه، في Mustache تحتاج إلى استخدام الأقواس المتعرجة للعناصر النائبة التي تبدو وكأنها mustache عند تدوير الأقواس المتعرجة 90 درجة في اتجاه عقارب الساعة.

{{% /alert %}}

## العمل مع Mustache بناء الجملة

يتم تمثيل Mustache كترتيب بدون منطق لأنه يفتقر إلى أي بيانات تدفق تحكم محددة مثل *for* حلقات و *if* و *else* شروط. ولكن يمكنك استخدام قوائم معالجة علامات القسم واللامداس لتحقيق التقييم الشرطي والحلقات. لذلك لتضمين صيغة Mustache ضمن عملية Mail Merge، ستحتاج إلى استخدام خاصية [UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/) وتعيين قيمتها على *True*.

يوضح مثال التعليمات البرمجية التالية كيفية استبدال Mustache العلامات ببيانات محددة:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تنفيذ Mail Merge مع المناطق جنبا إلى جنب مع تطبيق الخاصية **UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

يبدأ القسم مع الجنيه وينتهي بشرطة مائلة. أي أن `{{#foreach list}}` يبدأ قسم" فوريش " بينما ينهي `{{/foreach list}}`.

{{% /alert %}}

وبعد تطبيق Mail Merge مع المناطق:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## استخدم `IF` الحقول لجعل Mail Merge ذكي

Aspose.Words يسمح لك باستخدام Mail Merge الحقول و Mustache العلامات مع بيان `IF`. يمكن استخدام الحقول `IF` في أي مستند Mail Merge لمنع المسافات والفواصل غير المرغوب فيها إذا كان الحقل فارغا.

تظهر صيغة الحقل `IF` أدناه:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

هنا، يمكن أن يكون الشرط إما حقل دمج أو علامة Mustache.

على سبيل المثال، يمكنك استخدام `IF` الحقول إذا كنت بحاجة إلى إدراج "له" أو "لها" أو " هو "أو" هي " حسب الجنس على النحو التالي:

**{ IF { MERGEFIELD Gender } = "MALE" "نص صحيح" "نص خاطئ"}**

**{ IF "{{ GENDER }}" = "MALE" "نص صحيح" "نص خاطئ"}**

يوضح مثال الكود التالي كيفية إجراء عملية Mail Merge باستخدام علامات Mustache وحقول `IF`:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق خاصية **UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

وبعد تطبيق خاصية **UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
