---
title: العمل مع الأنماط في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الأنماط
linktitle: العمل مع الأنماط
description: "ميزات التنسيق المحسنة Microsoft Word، والعمل مع الأنماط والسمات باستخدام C++."
type: docs
weight: 110
url: /ar/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

يتم استخدام فئة [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) لإدارة الإعدادات المضمنة وتطبيق الإعدادات المعرفة من قبل المستخدم على الأنماط.

## كيفية استخراج المحتوى بناء على الأنماط

على مستوى بسيط، واسترجاع المحتوى على أساس أنماط من وثيقة كلمة يمكن أن تكون مفيدة لتحديد وقائمة وعدد الفقرات ويدير النص تنسيق مع نمط معين. على سبيل المثال، قد تحتاج إلى تحديد أنواع معينة من المحتوى في المستند، مثل الأمثلة والعناوين والمراجع والكلمات الرئيسية وأسماء الأشكال ودراسات الحالة.

لاتخاذ هذا بضع خطوات أخرى، يمكن أيضا استخدام هذا للاستفادة من بنية المستند، المحددة بواسطة الأنماط التي يستخدمها، لإعادة الغرض من المستند لإخراج آخر، مثل HTML. هذا هو في الواقع كيف يتم بناء وثائق أسبوس، ووضع Aspose.Words على المحك. أداة بنيت باستخدام Aspose.Words يأخذ وثائق كلمة المصدر وتقسيمها إلى مواضيع في مستويات عنوان معينة. يتم إنتاج ملف XML باستخدام Aspose.Words والذي يستخدم لبناء شجرة التنقل التي يمكنك رؤيتها على اليسار. ثم Aspose.Words يحول كل موضوع إلى HTML.

عادة ما يكون حل استرداد النص المنسق بأنماط محددة في مستند ورد اقتصاديا ومباشرا باستخدام Aspose.Words.

### الحل

لتوضيح مدى سهولة معالجة Aspose.Words لاسترجاع المحتوى بناء على الأنماط، دعنا نلقي نظرة على مثال. في هذا المثال، سنقوم باسترداد نص منسق بنمط فقرة معين ونمط حرف من نموذج مستند ورد. على مستوى عال، سيشمل هذا:
- فتح مستند ورد باستخدام فئة `Document`.
- الحصول على مجموعات من جميع الفقرات وجميع يعمل في الوثيقة.
- تحديد الفقرات والأشواط المطلوبة فقط. على وجه التحديد، سنقوم استرداد النص المنسق مع' عنوان 1 'نمط الفقرة و' التركيز الشديد ' نمط الحرف من هذا المستند كلمة عينة.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


في هذا المستند النموذجي، النص المنسق مع' العنوان 1 'نمط الفقرة هو ' إدراج علامة التبويب'، 'أنماط سريعة' و 'موضوع'، والنص المنسق مع' التركيز الشديد 'نمط الحرف هو عدة حالات من الأزرق، مائل، نص غامق مثل' المعارض 'و'نظرة شاملة'.

### الرمز

يعد تنفيذ الاستعلام المستند إلى النمط أمرا بسيطا للغاية في نموذج كائن المستند Aspose.Words، لأنه يستخدم ببساطة الأدوات الموجودة بالفعل. يتم تنفيذ طريقتين فئة لهذا الحل: **ParagraphsByStyleName** - هذا الأسلوب باسترداد مجموعة من تلك الفقرات في المستند التي لها اسم نمط معين. **RunsByStyleName** - تسترد هذه الطريقة مصفوفة من تلك العمليات في المستند التي لها اسم نمط معين. كلتا الطريقتين متشابهتان للغاية، والاختلافات الوحيدة هي أنواع العقدة وتمثيل معلومات النمط داخل الفقرة وعقد التشغيل. هنا هو تنفيذ ParagraphsByStyleName. المثال أدناه ابحث عن جميع الفقرات المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

يستخدم هذا التنفيذ أيضا طريقة `Document.GetChildNodes` لفئة `Document`، والتي تقوم بإرجاع مجموعة من جميع العقد بالنوع المحدد، والتي في هذه الحالة في جميع الفقرات.

لاحظ أنه تم تعيين المعلمة الثانية لطريقة **Document.GetChildNodes** على صحيح. هذا يفرض طريقة **Document.GetChildNodes** للاختيار من بين جميع العقد الفرعية بشكل متكرر، بدلا من تحديد الأطفال المباشرين فقط.

{{% /alert %}}

تجدر الإشارة أيضا إلى أن مجموعة الفقرات لا تنشئ عبئا فوريا لأن الفقرات يتم تحميلها في هذه المجموعة فقط عند الوصول إلى العناصر الموجودة فيها. ثم، كل ما عليك القيام به هو الذهاب من خلال جمع، وذلك باستخدام معيار لكل عامل وإضافة الفقرات التي لديها النمط المحدد إلى paragraphsWithStyle مجموعة. يمكن العثور على اسم النمط `Paragraph` في النمط. خاصية اسم الكائن `Paragraph.ParagraphFormat`. تنفيذ RunsByStyleName هو نفسه تقريبا، على الرغم من أننا من الواضح أننا نستخدم `NodeType.Run` لاسترداد عقد التشغيل. يتم استخدام خاصية `Font.Style` لكائن `Run` للوصول إلى معلومات النمط في العقد **Run**. مثال كنlow code ابحث عن جميع عمليات التشغيل المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


عند تنفيذ كلا الاستعلامين، كل ما عليك فعله هو تمرير كائن مستند وتحديد أسماء أنماط المحتوى الذي تريد استرداده: أدناه مثال تشغيل الاستعلامات وعرض النتائج. يمكنك تنزيل ملف القالب لهذا المثال من هنا.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### النتيجة النهائية

عندما يتم كل شيء، سيؤدي تشغيل العينة إلى عرض الإخراج التالي:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


كما ترون، وهذا هو مثال بسيط جدا، والتي تبين عدد ونص الفقرات التي تم جمعها ويعمل في وثيقة كلمة عينة.

## كيفية إدراج والعمل مع حقل جدول المحتويات

غالبا ما ستعمل مع المستندات التي تحتوي على جدول محتويات (TOC). باستخدام Aspose.Words يمكنك إدراج جدول المحتويات الخاص بك أو إعادة بناء جدول المحتويات الحالي بالكامل في المستند باستخدام بضعة أسطر فقط من التعليمات البرمجية. توضح هذه المقالة كيفية العمل مع حقل جدول المحتويات وتوضح:

- كيفية إدراج علامة تجارية جديدة `TOC`
- تحديث جديد أو موجود TOCs في المستند.
- تحديد مفاتيح للتحكم في التنسيق والهيكل العام و TOC.
- كيفية تعديل أنماط ومظهر جدول المحتويات.
- كيفية إزالة حقل `TOC` بالكامل مع جميع الإدخالات من المستند.

### أدخل TC الحقول

غالبا ما يتم تعيين سطر معين من النص لـ `TOC` ويتم تمييزه بحقل `TC`. الطريقة السهلة للقيام بذلك في MS كلمة هي تسليط الضوء على النص واضغط *ALT+SHIFT+O*. يؤدي هذا تلقائيا إلى إنشاء حقل `TC` باستخدام النص المحدد. يمكن تحقيق نفس الأسلوب من خلال الكود. سيجد الرمز أدناه نصا مطابقا للإدخال وإدراج حقل `TC` في نفس موضع النص. يعتمد الرمز على نفس التقنية المستخدمة في المقالة. يوضح المثال أدناه كيفية العثور على حقل `TC` وإدراجه في النص في مستند.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### تعديل جدول المحتويات

#### تغيير تنسيق الأنماط

لا يستخدم تنسيق الإدخالات في `TOC` الأنماط الأصلية للإدخالات المحددة، وبدلا من ذلك، يتم تنسيق كل مستوى باستخدام نمط `TOC` مكافئ. على سبيل المثال، يتم تنسيق المستوى الأول في `TOC` مع نمط **TOC1**، والمستوى الثاني تنسيق مع نمط **TOC2** وهلم جرا. هذا يعني أنه لتغيير مظهر `TOC` يجب تعديل هذه الأنماط. في Aspose.Words يتم تمثيل هذه الأنماط بواسطة الإعدادات المحلية المستقلة `StyleIdentifier.TOC1` حتى `StyleIdentifier.TOC9` ويمكن استرجاعها من `Document.Styles` مجموعة باستخدام هذه المعرفات. بمجرد استرداد النمط المناسب للمستند، يمكن تعديل تنسيق هذا النمط. ستنعكس أي تغييرات على هذه الأنماط تلقائيا على TOCs في المستند. يغير مثال كنlow code خاصية تنسيق مستخدمة في نمط المستوى الأول `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

من المفيد أيضا ملاحظة أن أي تنسيق مباشر لفقرة (محدد في الفقرة نفسها وليس في النمط) تم وضع علامة عليه ليتم تضمينه `TOC` سيتم نسخها في الإدخال في TOC. على سبيل المثال، إذا تم استخدام نمط العنوان 1 لتمييز محتوى `TOC` وكان هذا النمط يحتوي على تنسيق غامق بينما تحتوي الفقرة أيضا على تنسيق مائل مطبق عليه مباشرة. لن يكون الإدخال `TOC` الناتج غامقا لأن هذا جزء من تنسيق النمط ولكنه سيكون مائلا حيث يتم تنسيق هذا مباشرة في الفقرة. يمكنك أيضا التحكم في تنسيق الفواصل المستخدمة بين كل إدخال ورقم الصفحة. بشكل افتراضي، هذا خط منقط ينتشر عبر ترقيم الصفحات باستخدام حرف علامة تبويب وتوقف علامة تبويب يمين مصطف بالقرب من الهامش الأيمن.

باستخدام فئة `Style` التي تم استردادها لمستوى `TOC` المحدد الذي تريد تعديله، يمكنك أيضا تعديل كيفية ظهورها في المستند. لتغيير كيفية ظهور هذا أولا، يجب استدعاء `Style.ParagraphFormat` لاسترداد تنسيق الفقرة للنمط. من هذا، يمكن استرداد علامات التبويب توقف عن طريق الاتصال `ParagraphFormat.TabStops` وتعديل علامة التبويب المناسبة. باستخدام هذه التقنية نفسها، يمكن نقل علامة التبويب نفسها أو إزالتها تماما. يوضح مثال كنlow code كيفية تعديل موضع علامة التبويب اليمنى في الفقرات ذات الصلة `TOC`. يمكنك تنزيل ملف القالب لهذا المثال من هنا.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### إزالة جدول محتويات من المستند

يمكن إزالة جدول المحتويات من المستند عن طريق إزالة جميع العقد الموجودة بين عقدة `FieldStart` و FieldEnd في حقل `TOC`. يوضح الرمز أدناه هذا. إزالة الحقل `TOC` أبسط من الحقل العادي لأننا لا نتتبع الحقول المتداخلة. بدلا من ذلك، نتحقق من أن العقدة `FieldEnd` من النوع `FieldType.FieldTOC` مما يعني أننا واجهنا نهاية TOC الحالي. يمكن استخدام هذه التقنية في هذه الحالة دون القلق بشأن أي حقول متداخلة حيث يمكننا أن نفترض أن أي مستند تم تكوينه بشكل صحيح لن يحتوي على حقل `TOC` متداخل بالكامل داخل حقل `TOC` آخر. أولا `FieldStart` يتم جمع العقد من كل `TOC` وتخزينها. ثم يتم تعداد `TOC` المحدد بحيث تتم زيارة جميع العقد داخل الحقل وتخزينها. ثم تتم إزالة العقد من المستند. يوضح مثال كنlow code كيفية إزالة `TOC` محدد من مستند. يمكنك تنزيل ملف القالب لهذا المثال من هنا.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## إدراج نمط فاصل لوضع أنماط الفقرة المختلفة

يمكن إضافة فاصل النمط إلى نهاية الفقرة باستخدام كترل + ألت + أدخل اختصار لوحة المفاتيح في MS كلمة. تسمح هذه الميزة لنمطين مختلفين للفقرة المستخدمة في فقرة مطبوعة منطقية واحدة. إذا كنت تريد ظهور بعض النصوص من بداية عنوان معين في جدول المحتويات ولكنك لا تريد العنوان بأكمله في جدول المحتويات، فيمكنك استخدام هذه الميزة. يوضح مثال كنlow code كيفية إدراج فاصل نمط لوضع أنماط فقرة مختلفة.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## انسخ جميع الأنماط من القالب

هناك حالات تريد فيها نسخ جميع الأنماط من مستند إلى آخر. يمكنك استخدام طريقة `Document.CopyStylesFromTemplate` لنسخ الأنماط من القالب المحدد إلى مستند. عندما يتم نسخ الأنماط من قالب إلى مستند، يتم إعادة تعريف الأنماط المسماة في المستند لتتناسب مع أوصاف الأنماط في القالب. يتم نسخ الأنماط الفريدة من القالب إلى المستند. تظل الأنماط الفريدة في المستند سليمة. يوضح مثال كنlow code كيفية نسخ الأنماط من مستند إلى آخر.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}