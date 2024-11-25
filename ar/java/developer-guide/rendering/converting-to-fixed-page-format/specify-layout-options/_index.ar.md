---
title: حدد خيارات التخطيط في Java
second_title: Aspose.Words ل Java
articleTitle: تحديد خيارات التخطيط
linktitle: تحديد خيارات التخطيط
description: "إنشاء مستندات الإخراج مع تخطيطات مختلفة، اعتمادا على المعلمات المحددة في المستند باستخدام Java."
type: docs
weight: 10
url: /ar/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words تمكنك من إنشاء مستندات الإخراج مع تخطيطات مختلفة، اعتمادا على المعلمات المحددة في [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) خاصية **Document**. تشبه هذه الخاصية بعض خيارات قائمة واجهة المستخدم Microsoft Word الموضحة في هذه المقالة.

للحصول على قائمة كاملة بالمعلمات مثل [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) لحساب أرقام الصفحات في قسم مستمر يعيد تشغيل ترقيم الصفحات، أو [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) لتجاهل خيار التوافق "استخدام مقاييس الطابعة لوضع المستند"، راجع صفحة فئة [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## علامات التنسيق

Aspose.Words يسمح لإدارة علامات التنسيق باستخدام الخصائص التالية:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - قيمة `Boolean`، والتي تحدد ما إذا كان النص المخفي قد تم عرضه.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - قيمة `Boolean`، والتي تحدد ما إذا كان يتم عرض أحرف علامة الفقرة.

تحتوي الصفحة الموضحة في المثال أدناه على ثلاث فقرات. والثاني مخفي. يمكن للمستخدم تغيير الخيار **ShowHiddenText** لعرض هذا النص المخفي على الصفحة. أيضا، كل فقرة لها علامة فقرة في النهاية. عادة ما تكون علامة الفقرة غير مرئية ما لم يتم تعيين خاصية **ShowParagraphMarks** لعرضها.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

في Microsoft Word، يتم تعيين هذه المعلمات باستخدام مربع الحوار "ملف Options خيارات Display عرض" على النحو التالي:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## التعليقات والتنقيحات

باستخدام Aspose.Words، يمكنك عرض تعليقات المستندات التي ستبدو كما هي في Microsoft Word. لتحديد ما إذا كان يتم تقديم التعليقات، استخدم الخاصية [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

في Microsoft Word، يتم تعيين هذه المعلمة باستخدام مربع الحوار "تتبع خيارات التغييرات"، كما هو موضح أدناه:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

أيضا، Aspose.Words يسمح لك بعرض المراجعات في مستند. استخدم خاصية [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) من فئة **LayoutOptions** لتحديد ما إذا كان يتم عرض مراجعات المستند. للتحكم في مظهرها (لون تمييز المراجعة، لون شريط المراجعة، إلخ.)، استخدم فئة [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

يمكنك أيضا عرض المراجعات كتعليقات على المحتوى. لهذا الغرض، استخدم خاصية [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) وقيمة [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

يوضح مثال التعليمات البرمجية التالية كيفية تخصيص عرض المراجعات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

توضح الصورة أدناه كيفية عرض Aspose.Words للتعليقات ومراجعات الحذف:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## المشكل النص لتقديم الطباعة المتقدمة

تمكنك خاصية [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) من تعيين وظيفة تشكيل النص، بالإضافة إلى دعم ميزات `OpenType`.

استخدم تشكيل النص لمعالجة المستندات في الحالات الرئيسية التالية:

- يستخدم المستند تقنين الأحرف أو تشكيل الأرقام أو الأشكال الرقمية أو الأحرف المركبة.
- يستخدم المستند نصوصا معقدة، مثل العربية والخمير والتايلاندية وما إلى ذلك.

{{% alert color="primary" %}}

سيتم تمكين تشكيل النص فقط عند تصدير مستند إلى PDF أو XPS.

{{% /alert %}}
