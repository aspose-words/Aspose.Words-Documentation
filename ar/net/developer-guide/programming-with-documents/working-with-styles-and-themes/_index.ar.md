---
title: العمل مع الأنماط والسمات في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الأنماط والموضوعات
linktitle: العمل مع الأنماط والموضوعات
description: "ميزات تنسيق Microsoft Word المتقدمة، والعمل مع الأنماط والموضوعات باستخدام C#."
type: docs
weight: 110
url: /ar/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

يتم استخدام فئة [StyleCollection](https://reference.aspose.com/words/ar/net/aspose.words/stylecollection/) لإدارة الإعدادات المضمنة وتطبيقها على الأنماط.

## الوصول إلى الأنماط

يمكنك الحصول على مجموعة من الأنماط المحددة في المستند باستخدام خاصية [Document.Styles](https://reference.aspose.com/words/ar/net/aspose.words/documentbase/styles/). تحتوي هذه المجموعة على الأنماط المضمنة والمحددة من قبل المستخدم في المستند. يمكن الحصول على نمط معين من خلال اسمه/اسمه المستعار أو معرف النمط أو الفهرس. يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى مجموعة الأنماط المحددة في المستند.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## كيفية استخراج المحتوى بناءً على الأنماط

على مستوى بسيط، يمكن أن يكون استرجاع المحتوى استنادًا إلى الأنماط من مستند Word مفيدًا في تحديد وسرد وإحصاء الفقرات ومجموعات النص المنسقة بنمط معين. على سبيل المثال، قد تحتاج إلى تحديد أنواع معينة من المحتوى في المستند، مثل الأمثلة والعناوين والمراجع والكلمات الأساسية وأسماء الأشكال ودراسات الحالة.

ولأخذ بضع خطوات أخرى إلى الأمام، يمكن استخدام هذا أيضًا للاستفادة من بنية المستند، التي تحددها الأنماط التي يستخدمها، لإعادة استخدام المستند لمخرجات أخرى، مثل HTML. هذه في الواقع هي الطريقة التي يتم بها إنشاء وثائق Aspose، مما يضع Aspose.Words قيد الاختبار. تأخذ الأداة التي تم إنشاؤها باستخدام Aspose.Words مستندات Word المصدر وتقسمها إلى موضوعات عند مستويات عناوين معينة. يتم إنتاج ملف XML باستخدام Aspose.Words والذي يُستخدم لإنشاء شجرة التنقل التي يمكنك رؤيتها على اليسار. ثم يقوم Aspose.Words بتحويل كل موضوع إلى HTML.

عادةً ما يكون حل استرداد النص المنسق بأنماط محددة في مستند Word اقتصاديًا ومباشرًا باستخدام Aspose.Words.

### الحل

لتوضيح مدى سهولة تعامل Aspose.Words مع استرداد المحتوى بناءً على الأنماط، فلنلقِ نظرة على مثال. في هذا المثال، سنقوم باسترداد النص المنسق بنمط فقرة محدد ونمط أحرف من نموذج مستند Word. على مستوى عالٍ، سيتضمن ذلك:# فتح مستند Word باستخدام فئة [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/).# الحصول على مجموعات من جميع الفقرات وجميع عمليات التشغيل في المستند. # تحديد الفقرات وعمليات التشغيل المطلوبة فقط. على وجه التحديد، سنقوم باسترداد النص المنسق بنمط الفقرة "العنوان 1" ونمط الأحرف "التأكيد المكثف" من نموذج مستند Word هذا.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


في نموذج المستند هذا، النص المنسق بنمط الفقرة "العنوان 1" هو "إدراج علامة تبويب" و"أنماط سريعة" و"السمة"، والنص المنسق بنمط الأحرف "التركيز المكثف" هو مثيلات اللون الأزرق المتعددة، نص مائل وغامق مثل "المعارض" و"المظهر العام".

### الرمز

يعد تنفيذ الاستعلام المستند إلى النمط أمرًا بسيطًا للغاية في نموذج كائن مستند Aspose.Words، لأنه يستخدم ببساطة الأدوات الموجودة بالفعل. يتم تنفيذ طريقتين للفصل لهذا الحل: **ParagraphsByStyleName** - تسترد هذه الطريقة مصفوفة من تلك الفقرات في المستند الذي له اسم نمط محدد. **RunsByStyleName** – تسترد هذه الطريقة مصفوفة من تلك التي يتم تشغيلها في المستند التي لها اسم نمط محدد. كلتا الطريقتين متشابهتان جدًا، والاختلاف الوحيد هو أنواع العقد وتمثيل النمط المعلومات الموجودة داخل الفقرة وتشغيل العقد. إليك تطبيق ParagraphsByStyleName: أدناه المثال، ابحث عن جميع الفقرات المنسقة بالنمط المحدد.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

يستخدم هذا التنفيذ أيضًا طريقة `Document.GetChildNodes` لفئة `Document`، والتي تُرجع مجموعة من جميع العقد بالنوع المحدد، والتي في هذه الحالة في جميع الفقرات.

لاحظ أنه تم تعيين المعلمة الثانية لطريقة **Document.GetChildNodes** على true. وهذا يفرض على طريقة **Document.GetChildNodes** الاختيار من جميع العقد الفرعية بشكل متكرر، بدلاً من تحديد العناصر الفرعية المباشرة فقط.

{{% /alert %}}

تجدر الإشارة أيضًا إلى أن مجموعة الفقرات لا تنشئ حملاً مباشرًا لأنه يتم تحميل الفقرات في هذه المجموعة فقط عند الوصول إلى العناصر الموجودة فيها. بعد ذلك، كل ما عليك فعله هو تصفح المجموعة، باستخدام عامل التشغيل القياسي foreach وإضافة فقرات لها النمط المحدد إلى مصفوفة ParasWithStyle. يمكن العثور على اسم نمط `Paragraph` في خاصية [Style.Name](https://reference.aspose.com/words/ar/net/aspose.words/style/name/) لكائن [Paragraph.ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/paragraphformat/). إن تنفيذ RunsByStyleName هو نفسه تقريبًا، على الرغم من أننا نستخدم [NodeType.Run](https://reference.aspose.com/words/ar/net/aspose.words/nodetype/) بوضوح لاسترداد عقد التشغيل. يتم استخدام خاصية [Font.Style](https://reference.aspose.com/words/ar/net/aspose.words/font/style/) لكائن [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/) للوصول إلى معلومات النمط في عقد **Run**. ستجد أدناه المثال كافة عمليات التشغيل المنسقة بالنمط المحدد.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


عند تنفيذ كلا الاستعلامين، كل ما عليك فعله هو تمرير كائن مستند وتحديد أسماء أنماط المحتوى الذي تريد استرداده: المثال أدناه، تشغيل الاستعلامات وعرض النتائج. يمكنك تنزيل ملف القالب الخاص بهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### النتيجة النهائية

عند الانتهاء من كل شيء، سيؤدي تشغيل العينة إلى عرض الإخراج التالي:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


كما ترون، هذا مثال بسيط للغاية، يوضح عدد ونص الفقرات المجمعة ويتم تشغيلها في نموذج مستند Word.

## انسخ كافة الأنماط من القالب

هناك حالات تريد فيها نسخ كافة الأنماط من مستند إلى آخر. يمكنك استخدام طريقة `Document.CopyStylesFromTemplate` لنسخ الأنماط من القالب المحدد إلى مستند. عندما يتم نسخ الأنماط من قالب إلى مستند، تتم إعادة تعريف الأنماط ذات الأسماء المتشابهة في المستند لتتوافق مع أوصاف الأنماط في القالب. يتم نسخ الأنماط الفريدة من القالب إلى المستند. تظل الأنماط الفريدة في المستند سليمة. يوضح مثال Below code كيفية نسخ الأنماط من مستند إلى آخر.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## كيفية التعامل مع خصائص الموضوع

لقد أضفنا API الأساسي في Aspose.Words للوصول إلى خصائص سمة المستند. في الوقت الحالي، يتضمن API هذا الكائنات العامة التالية:

- سمة
- الخطوط الموضوعية
- ألوان الموضوع

إليك كيفية الحصول على خصائص السمة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

وإليك كيفية تعيين خصائص السمة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
