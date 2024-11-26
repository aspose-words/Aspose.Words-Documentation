---
title: العمل مع الأنماط والمواضيع
second_title: Aspose.Words ل Java
articleTitle: العمل مع الأنماط والمواضيع
linktitle: العمل مع الأنماط والمواضيع
description: "ميزات التنسيق المحسنة Microsoft Word، والعمل مع الأنماط والسمات باستخدام Java."
type: docs
weight: 110
url: /ar/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

يتم استخدام فئة [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) لإدارة الإعدادات المضمنة وتطبيق الإعدادات المعرفة من قبل المستخدم على الأنماط.

## كيفية استخراج المحتوى بناء على الأنماط

على مستوى بسيط، واسترجاع المحتوى على أساس أنماط من وثيقة كلمة يمكن أن تكون مفيدة لتحديد وقائمة وعدد الفقرات ويدير النص تنسيق مع نمط معين. على سبيل المثال، قد تحتاج إلى تحديد أنواع معينة من المحتوى في المستند، مثل الأمثلة والعناوين والمراجع والكلمات الرئيسية وأسماء الأشكال ودراسات الحالة.

لاتخاذ هذا بضع خطوات أخرى، يمكن أيضا استخدام هذا للاستفادة من بنية المستند، المحددة بواسطة الأنماط التي يستخدمها، لإعادة الغرض من المستند لإخراج آخر، مثل HTML. هذا هو في الواقع كيف يتم بناء وثائق أسبوس، ووضع Aspose.Words على المحك. أداة بنيت باستخدام Aspose.Words يأخذ وثائق كلمة المصدر وتقسيمها إلى مواضيع في مستويات عنوان معينة. يتم إنتاج ملف XML باستخدام Aspose.Words والذي يستخدم لبناء شجرة التنقل التي يمكنك رؤيتها على اليسار. ثم Aspose.Words يحول كل موضوع إلى HTML. عادة ما يكون حل استرداد النص المنسق بأنماط محددة في مستند ورد اقتصاديا ومباشرا باستخدام Aspose.Words.

لتوضيح مدى سهولة معالجة Aspose.Words لاسترجاع المحتوى بناء على الأنماط، دعنا نلقي نظرة على مثال. في هذا المثال، سنقوم باسترداد نص منسق بنمط فقرة معين ونمط حرف من نموذج مستند ورد.

على مستوى عال، سيشمل هذا:

1. فتح مستند ورد باستخدام فئة [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. الحصول على مجموعات من جميع الفقرات وجميع يعمل في الوثيقة.
1. تحديد الفقرات والأشواط المطلوبة فقط.

على وجه التحديد، سنقوم استرداد النص المنسق مع' Heading 1 'نمط الفقرة و' التركيز الشديد ' نمط الحرف من هذا المستند كلمة عينة.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

في هذه الوثيقة عينة، النص المنسق مع' Heading 1 'نمط الفقرة هو ' إدراج علامة التبويب'، 'أنماط سريعة' و 'موضوع'، والنص المنسق مع' التركيز الشديد 'نمط الحرف هو عدة حالات من الأزرق، مائل، النص الغامق مثل' المعارض 'و'نظرة شاملة'.

يعد تنفيذ الاستعلام المستند إلى النمط أمرا بسيطا للغاية في نموذج كائن المستند Aspose.Words، لأنه يستخدم ببساطة الأدوات الموجودة بالفعل. يتم تنفيذ طريقتين من الفئة لهذا الحل:

1. **ParagraphsByStyleName** - تسترد هذه الطريقة مصفوفة من تلك الفقرات في المستند لها اسم نمط معين.
1. **RunsByStyleName** - تقوم هذه الطريقة باسترداد مصفوفة من عمليات التشغيل هذه في المستند التي لها اسم نمط معين.

كلتا الطريقتين متشابهتان للغاية، والاختلافات الوحيدة هي أنواع العقدة وتمثيل معلومات النمط داخل الفقرة وعقد التشغيل. في ما يلي تنفيذ ParagraphsByStyleName الموضح في مثال الكود الموضح أدناه للعثور على جميع الفقرات المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

يستخدم هذا التنفيذ أيضا طريقة [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) من فئة `Document`، والتي ترجع مجموعة من جميع العقد الفرعية الفورية.

تجدر الإشارة أيضا إلى أن مجموعة الفقرات لا تنشئ عبئا فوريا لأن الفقرات يتم تحميلها في هذه المجموعة فقط عند الوصول إلى العناصر الموجودة فيها.ثم، كل ما عليك القيام به هو الذهاب من خلال جمع، وذلك باستخدام معيار لكل عامل وإضافة الفقرات التي لها النمط المحدد إلى paragraphsWithStyle مجموعة. يمكن العثور على اسم النمط `Paragraph` في خاصية [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) للكائن [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

تنفيذ RunsByStyleName هو نفسه تقريبا، على الرغم من أننا من الواضح أننا نستخدم `NodeType.Run` لاسترداد عقد التشغيل. يتم استخدام خاصية [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) لكائن [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) للوصول إلى معلومات النمط في العقد **Run**.

يجد مثال التعليمات البرمجية التالي جميع عمليات التشغيل المنسقة بالنمط المحدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

عند تنفيذ كلا الاستعلامين، كل ما عليك فعله هو تمرير كائن مستند وتحديد أسماء أنماط المحتوى الذي تريد استرداده:

{{% /alert %}}

المثال التعليمات البرمجية التالية تشغيل الاستعلامات وعرض النتائج.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

عندما يتم كل شيء، سيؤدي تشغيل العينة إلى عرض الإخراج التالي:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

كما ترون، وهذا هو مثال بسيط جدا، والتي تبين عدد ونص الفقرات التي تم جمعها ويعمل في وثيقة كلمة عينة.

## إدراج نمط فاصل لوضع أنماط الفقرة المختلفة

يمكن إضافة فاصل النمط إلى نهاية الفقرة باستخدام كترل + ألت + أدخل اختصار لوحة المفاتيح في MS كلمة. تسمح هذه الميزة لنمطين مختلفين للفقرة المستخدمة في فقرة مطبوعة منطقية واحدة. إذا كنت تريد ظهور بعض النصوص من بداية عنوان معين في جدول المحتويات ولكنك لا تريد العنوان بأكمله في جدول المحتويات، فيمكنك استخدام هذه الميزة.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج فاصل نمط لوضع أنماط فقرة مختلفة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## انسخ جميع الأنماط من القالب

هناك حالات تريد فيها نسخ جميع الأنماط من مستند إلى آخر. يمكنك استخدام طريقة `Document.CopyStylesFromTemplate` لنسخ الأنماط من القالب المحدد إلى مستند. عندما يتم نسخ الأنماط من قالب إلى مستند، يتم إعادة تعريف الأنماط المسماة في المستند لتتناسب مع أوصاف الأنماط في القالب. يتم نسخ الأنماط الفريدة من القالب إلى المستند. تظل الأنماط الفريدة في المستند سليمة.

يوضح مثال التعليمات البرمجية التالية كيفية نسخ الأنماط من مستند إلى آخر.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## كيفية التعامل مع خصائص الموضوع

واضاف لدينا الأساسية API في Aspose.Words للوصول إلى خصائص موضوع الوثيقة. في الوقت الحالي، يتضمن هذا API الكائنات العامة التالية:

- الموضوع
- ThemeFonts
- ThemeColors

هنا هو كيف يمكنك الحصول على خصائص الموضوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

وهنا هو كيف يمكنك تعيين خصائص الموضوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
