---
title: العمل مع الفقرات في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الفقرات
linktitle: العمل مع الفقرات
description: "ممارسات معالجة عقدة الفقرة باستخدام C++."
type: docs
weight: 210
url: /ar/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

الفقرة عبارة عن مجموعة من الأحرف مجتمعة في كتلة منطقية وتنتهي بحرف خاص – *paragraph break*. في Aspose.Words، يتم تمثيل الفقرة بفئة [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## تدرج فقرة

لإدراج فقرة جديدة في المستند، في الواقع، تحتاج إلى إدراج حرف فاصل فقرة فيه. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) إدراج ليس فقط سلسلة من النص في المستند، ولكن أيضا يضيف فاصل فقرة.

يتم تحديد تنسيق الخط الحالي أيضا بواسطة خاصية [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)، ويتم تحديد تنسيق الفقرة الحالي بواسطة خاصية [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). في القسم التالي، سنذهب إلى مزيد من التفاصيل حول تنسيق الفقرة.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## شكل الفقرة

يتم تمثيل تنسيق الفقرة الحالي بواسطة كائن **ParagraphFormat** يتم إرجاعه بواسطة خاصية **ParagraphFormat**. هذا الكائن بتغليف مختلف خصائص تنسيق الفقرة المتاحة في Microsoft Word. يمكنك بسهولة إعادة تعيين تنسيق الفقرة إلى الافتراضي إلى النمط العادي، محاذاة اليسار لا المسافة البادئة، لا تباعد، لا حدود ولا التظليل عن طريق الاتصال [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

يوضح مثال التعليمات البرمجية التالية كيفية تعيين تنسيق الفقرة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## تطبيق نمط الفقرة

بعض كائنات التنسيق مثل الخط أو ParagraphFormat أنماط الدعم. يتم تمثيل نمط واحد مدمج أو معرف من قبل المستخدم بواسطة كائن `Style` يحتوي على خصائص النمط المقابلة مثل الاسم والنمط الأساسي والخط وتنسيق الفقرة للنمط وما إلى ذلك.

علاوة على ذلك، يوفر كائن **Style** خاصية [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) التي ترجع معرف نمط مستقل عن اللغة يمثله **StyleIdentifier** قيمة التعداد. النقطة المهمة هي أن أسماء الأنماط المضمنة في Microsoft Word مترجمة للغات مختلفة. باستخدام معرف النمط، يمكنك العثور على النمط الصحيح بغض النظر عن لغة المستند. تتوافق قيم التعداد مع الأنماط المضمنة Microsoft Word مثل *Normal*, *Heading 1*, *Heading 2* الخ. يتم تعيين قيمة **StyleIdentifier.User** لجميع الأنماط المعرفة من قبل المستخدم.

يوضح مثال التعليمات البرمجية التالية كيفية تطبيق نمط فقرة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## إدراج نمط فاصل لوضع أنماط الفقرة المختلفة

يمكن إضافة فاصل النمط إلى نهاية الفقرة باستخدام كترل + ألت + أدخل اختصار لوحة المفاتيح في MS كلمة. تسمح هذه الميزة لنمطين مختلفين للفقرة المستخدمة في فقرة مطبوعة منطقية واحدة. إذا كنت تريد ظهور بعض النصوص من بداية عنوان معين في جدول المحتويات ولكنك لا تريد العنوان بأكمله في جدول المحتويات، فيمكنك استخدام هذه الميزة.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج فاصل نمط لاستيعاب أنماط فقرة مختلفة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## تحديد فاصل نمط الفقرة

` `Aspose.Words يوفر خاصية عامة [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) في فئة `Paragraph` يسمح بتحديد فقرة فاصل النمط كما هو موضح في المثال الوارد أدناه:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## تطبيق الحدود والتظليل على فقرة

يتم تمثيل الحدود في Aspose.Words بواسطة فئة [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) - هذه مجموعة من [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) الكائنات التي يتم الوصول إليها بواسطة الفهرس أو حسب نوع الحدود. يتم تمثيل نوع الحدود بواسطة `BorderType` تعداد. بعض قيم التعداد قابلة للتطبيق على عدة أو عنصر مستند واحد فقط. على سبيل المثال، **BorderType.Bottom** ينطبق على فقرة أو خلية جدول بينما **BorderType.DiagonalDown** يحدد الحد القطري في خلية جدول فقط.

تحتوي كل من مجموعة الحدود وكل حد منفصل على سمات متشابهة مثل اللون ونمط الخط وعرض الخط والمسافة من النص والظل الاختياري. يتم تمثيلهم بخصائص تحمل نفس الاسم. يمكنك تحقيق أنواع مختلفة من الحدود من خلال الجمع بين قيم الخصائص. بالإضافة إلى ذلك، يسمح لك كل من **BorderCollection** و **Border** بإعادة تعيين هذه القيم إلى الوضع الافتراضي عن طريق استدعاء طريقة [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

لاحظ أنه عند إعادة تعيين خصائص الحدود إلى قيمها الافتراضية، يصبح الحد غير مرئي.

{{% /alert %}}

يحتوي Aspose.Words أيضا على فئة [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) التي تحتوي على سمات تظليل لعناصر المستند. يمكنك تعيين نسيج التظليل المطلوب والألوان التي يتم تطبيقها على الخلفية ومقدمة العنصر.

يتم تعيين نسيج التظليل بقيمة تعداد [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) تسمح بتطبيق أنماط مختلفة على الكائن **Shading**. على سبيل المثال، لتعيين لون خلفية لعنصر مستند، استخدم القيمة [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) وقم بتعيين لون تظليل المقدمة حسب الاقتضاء.

يوضح مثال الكود التالي كيفية تطبيق الحدود والتظليل على فقرة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
