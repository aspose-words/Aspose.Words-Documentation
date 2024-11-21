---
title: تحديد خيارات الشباب في Java
second_title: Aspose.Words for Java
articleTitle: تحديد الخيارات المتاحة
linktitle: تحديد الخيارات المتاحة
description: "وضع وثائق للنواتج مع مخططات مختلفة، حسب البارامترات المحددة في الوثيقة باستخدام Java."
type: docs
weight: 10
url: /ar/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يُمكّنُك أَنْ تَخْلقَ وثائقَ النواتجَ مَع مختلف المخططاتِ، إعتماداً على البارامتراتِ المحددة في [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) ممتلكات **Document**. هذه الملكية تشبه بعض Microsoft Word خيارات قائمة الوصلات البينية للمستعملين الموصوفة في هذه المادة.

لقائمة كاملة من البارامترات مثل [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) لحساب عدد الصفحات في قسم مستمر يعيد ترقيم الصفحات، أو [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) لتجاهل "استخدام مقاييس الطابعات لوضع الوثيقة" [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) صفحة الصف

## صياغة العلامات

Aspose.Words يسمح بإدارة علامات التكوين باستخدام الخواص التالية:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - أ `Boolean` القيمة التي تحدد ما إذا كان النص الخفي قد صدر.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - أ `Boolean` القيمة، التي تحدد ما إذا كانت الفقرة ذات طابع علامة.

وتتضمن الصفحة المبينة في المثال أدناه ثلاث فقرات. الثاني مخبأ يمكن للمستعمل أن يغير **ShowHiddenText** خيار عرض هذا النص الخفي على الصفحة كما أن لكل فقرة علامة في النهاية. عادة ما تكون علامة الفقرة غير واضحة ما لم تكن **ShowParagraphMarks** العقارات مُصممة لإرسالها

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, هذه البارامترات مُحدّدة باستخدام صندوق "الخيارات الملفوفة" على النحو التالي:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## التعليقات والتنقيحات

مع Aspose.Words, يمكنك أن تقدم تعليقات الوثائق التي ستبدو كما هي Microsoft Word. To specify whether comments are rendered, use the [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) ملكية

In Microsoft Word, هذه البارامترات مُحدّدة باستخدام صندوق "تغيّرات المسار" للجوال، كما هو مبيّن أدناه:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

أيضاً Aspose.Words يسمح لك بعرض التنقيحات في وثيقة. استخدام [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) ممتلكات **LayoutOptions** درجة لتحديد ما إذا كانت تنقيحات الوثيقة معروضة. To control their appearance (revision highlighting color, revision bar color, etc.), use the [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) الصف

ويمكنك أيضاً أن تُظهر التنقيحات كتعليقات على المحتوى. لهذا الغرض، استخدم [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) الممتلكات والممتلكات [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) قيمة

ويبين المثال الرمزي التالي كيفية تكييف التنقيحات على النحو التالي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

الصورة الواردة أدناه تبين كيف Aspose.Words يبدي تعليقات ويحذف التنقيحات التالية:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## نص " Shaper for Advanced Typography Render "

The [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) الملكية تمكنك من وضع النص الذي يُشكّل وظيفية، وكذلك `OpenType` الدعم

(ب) استخدام النص في تشكيل تجهيز الوثائق في الحالات الرئيسية التالية:

- تستخدم الوثيقة Kerning, Numeral Shaping, Numeral Forms, or Ligatures.
- تُستخدم هذه الوثيقة ملحقات معقدة مثل العربية والخمير والتايلندية وما إلى ذلك.

{{% alert color="primary" %}}

لن يُسمح بتشكيل النصوص إلا عند تصدير وثيقة إلى قوات الدفاع الشعبي أو XPS.

{{% /alert %}}
