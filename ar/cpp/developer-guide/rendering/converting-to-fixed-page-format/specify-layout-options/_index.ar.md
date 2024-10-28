---
title: حدد خيارات التخطيط في C++
second_title: Aspose.Words ل C++
articleTitle: تحديد خيارات التخطيط
linktitle: تحديد خيارات التخطيط
description: "حدد خيارات التخطيط لتخطيطات المستندات المختلفة."
type: docs
weight: 20
url: /ar/cpp/specify-layout-options/
---

Aspose.Words تمكنك من إنشاء مستندات الإخراج مع تخطيطات مختلفة، اعتمادا على المعلمات المحددة في [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) خاصية **Document**. تشبه هذه الخاصية بعض خيارات قائمة واجهة المستخدم Microsoft Word الموضحة في هذه المقالة.

للحصول على قائمة كاملة بالمعلمات مثل [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) لحساب أرقام الصفحات في قسم مستمر يعيد تشغيل ترقيم الصفحات، أو [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) لتجاهل خيار التوافق "استخدام مقاييس الطابعة لوضع المستند"، راجع صفحة فئة [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## علامات التنسيق

Aspose.Words يسمح لإدارة علامات التنسيق باستخدام الخصائص التالية:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - قيمة `Boolean`، والتي تحدد ما إذا كان النص المخفي قد تم عرضه.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - قيمة `Boolean`، والتي تحدد ما إذا كان يتم عرض أحرف علامة الفقرة.

تحتوي الصفحة الموضحة في المثال أدناه على ثلاث فقرات. والثاني مخفي. يمكن للمستخدم تغيير الخيار **ShowHiddenText** لعرض هذا النص المخفي على الصفحة. أيضا، كل فقرة لها علامة فقرة في النهاية. عادة ما تكون علامة الفقرة غير مرئية ما لم يتم تعيين خاصية **ShowParagraphMarks** لعرضها.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

في Microsoft Word، يتم تعيين هذه المعلمات باستخدام مربع الحوار "ملف Options خيارات Display عرض" على النحو التالي:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## التعليقات والتنقيحات

باستخدام Aspose.Words، يمكنك عرض تعليقات المستندات التي ستبدو كما هي في Microsoft Word. لتحديد ما إذا كان يتم تقديم التعليقات، استخدم الخاصية [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

في Microsoft Word، يتم تعيين هذه المعلمة باستخدام مربع الحوار "تتبع خيارات التغييرات"، كما هو موضح أدناه:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

أيضا، Aspose.Words يسمح لك بعرض المراجعات في مستند. استخدم خاصية [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) من فئة **LayoutOptions** لتحديد ما إذا كان يتم عرض مراجعات المستند. للتحكم في مظهرها (لون تمييز المراجعة، لون شريط المراجعة، إلخ.)، استخدم فئة [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

يمكنك أيضا عرض المراجعات كتعليقات على المحتوى. لهذا الغرض، استخدم خاصية [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) وقيمة [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

يوضح مثال التعليمات البرمجية التالية كيفية تخصيص عرض المراجعات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

توضح الصورة أدناه كيفية عرض Aspose.Words للتعليقات ومراجعات الحذف:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## المشكل النص لتقديم الطباعة المتقدمة

تمكنك خاصية [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) من تعيين وظيفة تشكيل النص، بالإضافة إلى دعم ميزات `OpenType`.

استخدم تشكيل النص لمعالجة المستندات في الحالات الرئيسية التالية:

- يستخدم المستند تقنين الأحرف أو تشكيل الأرقام أو الأشكال الرقمية أو الأحرف المركبة.
- يستخدم المستند نصوصا معقدة، مثل العربية والخمير والتايلاندية وما إلى ذلك.

{{% alert color="primary" %}}

سيتم تمكين تشكيل النص فقط عند تصدير مستند إلى PDF أو XPS.

{{% /alert %}}
