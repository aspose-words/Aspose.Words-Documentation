---
title: حدد خيارات التخطيط في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحديد خيارات التخطيط
linktitle: تحديد خيارات التخطيط
description: "حدد خيارات التخطيط لتخطيطات المستندات المختلفة باستخدام C#."
type: docs
weight: 10
url: /ar/net/specify-layout-options/
---

يمكّنك Aspose.Words من إنشاء مستندات مخرجات بتخطيطات مختلفة، اعتمادًا على المعلمات المحددة في خصائص فئة [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). تشبه بعض هذه الخصائص بعض خيارات قائمة واجهة مستخدم Microsoft Word - والتي سيتم وصفها في هذه المقالة.

للحصول على قائمة كاملة من المعلمات مثل [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) لحساب أرقام الصفحات في قسم مستمر يعيد تشغيل ترقيم الصفحات، أو [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) لتجاهل خيار التوافق "استخدام مقاييس الطابعة لتخطيط المستند"، راجع صفحة فئة [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## علامات التنسيق

يسمح Aspose.Words بإدارة علامات التنسيق باستخدام الخصائص التالية:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – قيمة `Boolean`، التي تحدد ما إذا كان سيتم عرض النص المخفي أم لا.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) - قيمة `Boolean`، التي تحدد ما إذا كان سيتم عرض أحرف علامة الفقرة.

تحتوي الصفحة الموضحة في المثال أدناه على ثلاث فقرات. والثاني مخفي. يمكن للمستخدم تغيير خيار **ShowHiddenText** لعرض هذا النص المخفي على الصفحة. بالإضافة إلى ذلك، تحتوي كل فقرة على علامة فقرة في النهاية. عادةً ما تكون علامة الفقرة غير مرئية ما لم يتم تعيين خاصية **ShowParagraphMarks** لعرضها.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

في Microsoft Word، يتم تعيين هذه المعلمات باستخدام مربع الحوار "ملف → خيارات → عرض" كما يلي:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## التعليقات والمراجعات

باستخدام Aspose.Words، يمكنك تقديم تعليقات المستند التي ستبدو كما هي في Microsoft Word. لتحديد ما إذا كان سيتم عرض التعليقات أم لا، استخدم خاصية [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

في Microsoft Word، يتم تعيين هذه المعلمة باستخدام مربع الحوار "خيارات تتبع التغييرات"، كما هو موضح أدناه:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

كما يسمح لك Aspose.Words بعرض المراجعات في المستند. استخدم خاصية [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) لفئة **LayoutOptions** لتحديد ما إذا كان سيتم عرض مراجعات المستند أم لا. للتحكم في مظهرها (لون تمييز المراجعة، لون شريط المراجعة، وما إلى ذلك)، استخدم فئة [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

يمكنك أيضًا عرض المراجعات كتعليقات على المحتوى. لهذا الغرض، استخدم خاصية [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) وقيمة [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

يوضح مثال التعليمات البرمجية التالي كيفية تخصيص عرض المراجعات:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

توضح الصورة أدناه كيفية عرض Aspose.Words للتعليقات وحذف المراجعات:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## مشكل النص لتقديم الطباعة المتقدمة

تتيح لك خاصية [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) ضبط وظيفة تشكيل النص، بالإضافة إلى دعم ميزات `OpenType`.

استخدم تشكيل النص لمعالجة المستندات في الحالات الرئيسية التالية:

- يستخدم المستند تقنين الأحرف، أو التشكيل الرقمي، أو النماذج الرقمية، أو الحروف المركبة.
- يستخدم المستند نصوصًا معقدة، مثل العربية والخميرية والتايلاندية وما إلى ذلك.

{{% alert color="primary" %}}

سيتم تمكين تشكيل النص فقط عند تصدير مستند إلى PDF أو XPS.

{{% /alert %}}
