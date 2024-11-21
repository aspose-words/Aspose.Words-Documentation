---
title: حدد خيارات التخطيط في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحديد خيارات التخطيط
linktitle: تحديد خيارات التخطيط
description: "حدد خيارات التخطيط لتخطيطات المستندات المختلفة باستخدام Python."
type: docs
weight: 10
url: /ar/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

يمكّنك Aspose.Words من إنشاء مستندات مخرجات بتخطيطات مختلفة، اعتمادًا على المعلمات المحددة في خصائص فئة [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). تشبه بعض هذه الخصائص بعض خيارات قائمة واجهة مستخدم Microsoft Word - والتي سيتم وصفها في هذه المقالة.

للحصول على قائمة كاملة من المعلمات مثل [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) لحساب أرقام الصفحات في قسم مستمر يعيد تشغيل ترقيم الصفحات، أو [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) لتجاهل خيار التوافق "استخدام مقاييس الطابعة لتخطيط المستند"، راجع صفحة فئة [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## علامات التنسيق

يسمح Aspose.Words بإدارة علامات التنسيق باستخدام الخصائص التالية:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – قيمة `Boolean`، التي تحدد ما إذا كان سيتم عرض النص المخفي أم لا.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - قيمة `Boolean`، التي تحدد ما إذا كان سيتم عرض أحرف علامة الفقرة.

تحتوي الصفحة الموضحة في المثال أدناه على ثلاث فقرات. والثاني مخفي. يمكن للمستخدم تغيير خيار [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) لعرض هذا النص المخفي على الصفحة. بالإضافة إلى ذلك، تحتوي كل فقرة على علامة فقرة في النهاية. عادةً ما تكون علامة الفقرة غير مرئية ما لم يتم تعيين خاصية [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) لعرضها.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

في Microsoft Word، يتم تعيين هذه المعلمات باستخدام مربع الحوار "ملف → خيارات → عرض" كما يلي:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## التعليقات والمراجعات

باستخدام Aspose.Words، يمكنك تقديم تعليقات المستند التي ستبدو كما هي في Microsoft Word. لتحديد ما إذا كان سيتم عرض التعليقات أم لا، استخدم خاصية [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

في Microsoft Word، يتم تعيين هذه المعلمة باستخدام مربع الحوار "خيارات تتبع التغييرات"، كما هو موضح أدناه:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

كما يسمح لك Aspose.Words بعرض المراجعات في المستند. استخدم خاصية [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) لفئة [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) لتحديد ما إذا كان سيتم عرض مراجعات المستند أم لا. للتحكم في مظهرها (لون تمييز المراجعة، لون شريط المراجعة، وما إلى ذلك)، استخدم فئة [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

يمكنك أيضًا عرض المراجعات كتعليقات على المحتوى. لهذا الغرض، استخدم خاصية [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) وقيمة [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

يوضح مثال التعليمات البرمجية التالي كيفية تخصيص عرض المراجعات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

توضح الصورة أدناه كيفية عرض Aspose.Words للتعليقات وحذف المراجعات:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
