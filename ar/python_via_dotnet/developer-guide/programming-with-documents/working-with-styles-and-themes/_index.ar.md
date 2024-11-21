---
title: العمل مع الأنماط والموضوعات
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الأنماط والموضوعات
linktitle: العمل مع الأنماط والموضوعات
description: "الوصول إلى الأنماط والسمات وإدارتها في مستند باستخدام Python."
type: docs
weight: 110
url: /ar/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

يتم استخدام فئة [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) لإدارة الإعدادات المضمنة وتطبيقها على الأنماط.

## الوصول إلى الأنماط

يمكنك الحصول على مجموعة من الأنماط المحددة في المستند باستخدام خاصية [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). تحتوي هذه المجموعة على الأنماط المضمنة والمحددة من قبل المستخدم في المستند. يمكن الحصول على نمط معين من خلال اسمه/اسمه المستعار أو معرف النمط أو الفهرس. يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى مجموعة الأنماط المحددة في المستند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## كيفية استخراج المحتوى بناءً على الأنماط

على مستوى بسيط، يمكن أن يكون استرجاع المحتوى استنادًا إلى الأنماط من مستند Word مفيدًا في تحديد وسرد وإحصاء الفقرات ومجموعات النص المنسقة بنمط معين. على سبيل المثال، قد تحتاج إلى تحديد أنواع معينة من المحتوى في المستند، مثل الأمثلة والعناوين والمراجع والكلمات الأساسية وأسماء الأشكال ودراسات الحالة.

ولأخذ بضع خطوات أخرى إلى الأمام، يمكن أيضًا استخدام هذا للاستفادة من بنية المستند، التي تحددها الأنماط التي يستخدمها، لإعادة استخدام المستند لمخرجات أخرى، مثل HTML. هذه في الواقع هي الطريقة التي يتم بها إنشاء وثائق Aspose، مما يضع Aspose.Words قيد الاختبار. تأخذ الأداة التي تم إنشاؤها باستخدام Aspose.Words مستندات Word المصدر وتقسمها إلى موضوعات عند مستويات عناوين معينة. يتم إنتاج ملف XML باستخدام Aspose.Words والذي يُستخدم لإنشاء شجرة التنقل التي يمكنك رؤيتها على اليسار. ثم يقوم Aspose.Words بتحويل كل موضوع إلى HTML.

عادةً ما يكون حل استرداد النص المنسق بأنماط محددة في مستند Word اقتصاديًا ومباشرًا باستخدام Aspose.Words.

### الحل

لتوضيح مدى سهولة تعامل Aspose.Words مع استرداد المحتوى بناءً على الأنماط، فلنلقِ نظرة على مثال. في هذا المثال، سنقوم باسترداد النص المنسق بنمط فقرة محدد ونمط أحرف من نموذج مستند Word. وعلى مستوى عالٍ، سيشمل ذلك ما يلي:
- فتح مستند Word باستخدام فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- الحصول على مجموعات من كافة الفقرات وجميع العمليات في الوثيقة.
- اختيار الفقرات والتشغيلات المطلوبة فقط. على وجه التحديد، سنقوم باسترداد النص المنسق بنمط الفقرة "العنوان 1" ونمط الأحرف "التأكيد المكثف" من نموذج مستند Word هذا.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


في نموذج المستند هذا، النص المنسق بنمط الفقرة "العنوان 1" هو "إدراج علامة تبويب" و"أنماط سريعة" و"السمة"، والنص المنسق بنمط الأحرف "التشديد المكثف" هو مثيلات اللون الأزرق المتعددة، نص مائل وغامق مثل "المعارض" و"المظهر العام".

### الرمز

يعد تنفيذ الاستعلام المستند إلى النمط أمرًا بسيطًا للغاية في نموذج كائن مستند Aspose.Words، لأنه يستخدم ببساطة الأدوات الموجودة بالفعل. يتم تنفيذ طريقتين فئة لهذا الحل:
- **paras_by_style_name** - تقوم هذه الطريقة باسترداد مجموعة من الفقرات الموجودة في المستند والتي لها اسم نمط محدد.
- **run_by_style_name** - تسترد هذه الطريقة مصفوفة من تلك التي يتم تشغيلها في المستند والتي لها اسم نمط محدد. كلتا الطريقتين متشابهتان جدًا، والاختلاف الوحيد هو أنواع العقد وتمثيل معلومات النمط داخل الفقرة وعقد التشغيل. إليك تطبيق `paragraphs_by_style_name`: ستجد أدناه المثال كافة الفقرات المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

يستخدم هذا التنفيذ أيضًا طريقة [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) لفئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)، والتي تُرجع مجموعة من جميع العقد بالنوع المحدد، والتي في هذه الحالة في جميع الفقرات.

لاحظ أنه تم تعيين المعلمة الثانية لطريقة [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) على `True`. وهذا يفرض على طريقة [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) الاختيار من جميع العقد الفرعية بشكل متكرر، بدلاً من تحديد العناصر الفرعية المباشرة فقط.

{{% /alert %}}

تجدر الإشارة أيضًا إلى أن مجموعة الفقرات لا تنشئ حملاً مباشرًا لأنه يتم تحميل الفقرات في هذه المجموعة فقط عند الوصول إلى العناصر الموجودة فيها. بعد ذلك، كل ما عليك فعله هو تصفح المجموعة، باستخدام عامل التشغيل القياسي foreach وإضافة فقرات لها النمط المحدد إلى مصفوفةparas_with_style. يمكن العثور على اسم نمط `Paragraph` في خاصية [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) لكائن [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). إن تطبيق **run_by_style_name** هو نفسه تقريبًا، على الرغم من أننا نستخدم بوضوح [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) لاسترداد عقد التشغيل. يتم استخدام خاصية [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) لكائن [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) للوصول إلى معلومات النمط في عقد [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). ستجد أدناه المثال كافة عمليات التشغيل المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


عند تنفيذ كلا الاستعلامين، كل ما عليك فعله هو تمرير كائن مستند وتحديد أسماء أنماط المحتوى الذي تريد استرداده: أدناه مثال على تشغيل الاستعلامات وعرض النتائج. يمكنك تنزيل ملف القالب الخاص بهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### النتيجة النهائية

عند الانتهاء من كل شيء، سيؤدي تشغيل العينة إلى عرض الإخراج التالي:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


كما ترون، هذا مثال بسيط للغاية، يوضح عدد ونص الفقرات المجمعة ويتم تشغيلها في نموذج مستند Word.

## انسخ كافة الأنماط من القالب

هناك حالات تريد فيها نسخ كافة الأنماط من مستند إلى آخر. يمكنك استخدام طريقة [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) لنسخ الأنماط من القالب المحدد إلى مستند. عندما يتم نسخ الأنماط من قالب إلى مستند، تتم إعادة تعريف الأنماط ذات الأسماء المتشابهة في المستند لتتوافق مع أوصاف الأنماط في القالب. يتم نسخ الأنماط الفريدة من القالب إلى المستند. تظل الأنماط الفريدة في المستند سليمة. يوضح مثال Below code كيفية نسخ الأنماط من مستند إلى آخر.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## كيفية التعامل مع خصائص الموضوع

لقد أضفنا API الأساسي في Aspose.Words للوصول إلى خصائص سمة المستند. في الوقت الحالي، يتضمن API هذا الكائنات العامة التالية:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

إليك كيفية الحصول على خصائص السمة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

وإليك كيفية تعيين خصائص السمة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
