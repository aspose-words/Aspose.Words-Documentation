---
title: Mail Merge Mustache بناء الجملة
second_title: Aspose.Words ل Python via .NET
articleTitle: Mail Merge قالب من Mustache بناء الجملة
linktitle: Mail Merge قالب من Mustache بناء الجملة
type: docs
description: "إنشاء قوالب مع Mustache بناء الجملة باستخدام Python. بناء الجملة Mustache هو الخيار الوحيد للاستخدام مع القوالب التي لا تحتوي على حقول (HTML أو TXT). مع Word قوالب، لديك خياران: الحقول أو Mustache بناء الجملة."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /ar/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يسمح لك بإنشاء قوالب باستخدام mustache بناء الجملة بالإضافة إلى القوالب المألوفة. أ Mustache هو متغير بديل لبناء جملة القالب يتكون من أسماء العلامات المحاطة بـ `{{ }}` ومدعوم بكائن نموذج يحتوي على بيانات القالب.

بناء الجملة Mustache هو الخيار الوحيد للاستخدام مع القوالب التي لا تحتوي على حقول، مثل HTML و TXT القوالب. مع Word قوالب، لديك خياران إما لاستخدام الحقول أو Mustache بناء الجملة.

يدعم بناء الجملة Mustache علامة *foreach*، وهي بديل لاستخدام Mail Merge مع المناطق. لذا فإن الفائدة هي أنه يمكنك استخدام mustache بناء الجملة إذا لم تكن قادرا لسبب ما أو ببساطة لا تريد استخدام حقول الدمج ومناطق الدمج.

يمكنك أيضا دمج حقول Mail Merge مع بعض الحقول الإضافية باستخدام علامة *foreach* كما هو موضح في الصورة أدناه.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## إنشاء قالب Mustache

أول نقطة مهمة يجب توضيحها هي أن Mustache ليس محركا نموذجيا. Mustache هو متغير بناء جملة آخر متاح لأي قالب في [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) مدعوم بـ Aspose.Words. لذلك، يمكنك إنشاء مثل هذا القالب برمجيا ومن خلال واجهة، ما عليك سوى تضمين بناء جملة معين والامتثال لمواصفات Mustache.

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

يتم تمثيل Mustache كترتيب بدون منطق لأنه يفتقر إلى أي بيانات تدفق تحكم محددة مثل *for* حلقات و *if* و *else* شروط. ولكن يمكنك استخدام قوائم معالجة علامات القسم واللامداس لتحقيق التقييم الشرطي والحلقات. لذلك لتضمين صيغة Mustache ضمن عملية Mail Merge، ستحتاج إلى استخدام خاصية [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) وتعيين قيمتها على *True*.

## استخدم `IF` الحقول لجعل Mail Merge ذكي

Aspose.Words يسمح لك باستخدام Mail Merge الحقول و Mustache العلامات مع بيان `IF`. يمكن استخدام الحقول `IF` في أي مستند Mail Merge لمنع المسافات والفواصل غير المرغوب فيها إذا كان الحقل فارغا.

تظهر صيغة الحقل `IF` أدناه:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

هنا، يمكن أن يكون الشرط إما حقل دمج أو علامة Mustache.

على سبيل المثال، يمكنك استخدام `IF` الحقول إذا كنت بحاجة إلى إدراج "له" أو "لها" أو " هو "أو" هي " حسب الجنس على النحو التالي:

**{ IF { MERGEFIELD Gender } = "MALE" "نص صحيح" "نص خاطئ"}**

**{ IF "{{ GENDER }}" = "MALE" "نص صحيح" "نص خاطئ"}**

يوضح مثال الكود التالي كيفية إجراء عملية Mail Merge باستخدام علامات Mustache وحقول `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

يمكنك ملاحظة الفرق بين المستند قبل تطبيق خاصية [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

وبعد تطبيق خاصية [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
