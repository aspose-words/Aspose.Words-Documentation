---
title: العمل مع الفقرات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الفقرات
linktitle: العمل مع الفقرات
description: "إدراج فقرة وتحديد تنسيقها في مستند باستخدام Python."
type: docs
weight: 210
url: /ar/python-net/working-with-paragraphs/
---

الفقرة عبارة عن مجموعة من الأحرف المدمجة في كتلة منطقية وتنتهي بحرف خاص - *فاصل الفقرة*. في Aspose.Words، يتم تمثيل الفقرة بواسطة فئة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## إدراج فقرة

لإدراج فقرة جديدة في المستند، في الواقع، تحتاج إلى إدراج حرف فاصل فقرة فيه. يقوم [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) بإدراج سلسلة نصية في المستند أيضًا، ولكنه يضيف أيضًا فاصل فقرات.

يتم تحديد تنسيق الخط الحالي أيضًا بواسطة خاصية [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) ويتم تحديد تنسيق الفقرة الحالي بواسطة خاصية [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

يوضح مثال التعليمات البرمجية التالي كيفية إدراج فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## تنسيق الفقرة

يتم تمثيل تنسيق الفقرة الحالي بواسطة كائن [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) الذي يتم إرجاعه بواسطة خاصية [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). يقوم هذا الكائن بتغليف خصائص تنسيق الفقرة المتنوعة المتوفرة في Microsoft Word. يمكنك بسهولة إعادة تعيين تنسيق الفقرة إلى الوضع الافتراضي إلى النمط العادي، ومحاذاة إلى اليسار، بدون مسافة بادئة، بدون مسافات، بدون حدود، وبدون تظليل عن طريق استدعاء [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تنسيق الفقرة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## تطبيق نمط الفقرة

تدعم بعض كائنات التنسيق مثل [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) أو [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) أنماطًا. يتم تمثيل النمط المضمن أو المحدد من قبل المستخدم بواسطة كائن [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) الذي يحتوي على خصائص النمط المقابلة مثل الاسم والنمط الأساسي وتنسيق الخط والفقرة للنمط، وما إلى ذلك.

علاوة على ذلك، يوفر كائن [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) خاصية [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) التي تُرجع معرف نمط مستقل عن اللغة يمثله قيمة تعداد [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). النقطة المهمة هي أن أسماء الأنماط المضمنة في Microsoft Word مترجمة للغات مختلفة. باستخدام معرف النمط، يمكنك العثور على النمط الصحيح بغض النظر عن لغة المستند. تتوافق قيم التعداد مع أنماط Microsoft Word المضمنة مثل Normal وHeading 1 وHeading 2 وما إلى ذلك. ويتم تعيين قيمة [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) لجميع الأنماط المعرفة من قبل المستخدم

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق نمط الفقرة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## قم بإدراج فاصل النمط لوضع أنماط فقرات مختلفة

يمكن إضافة فاصل النمط إلى نهاية الفقرة باستخدام Ctrl + Alt + Enter Keyboard Shortcut في MS Word. تتيح هذه الميزة استخدام نمطين مختلفين للفقرة في فقرة مطبوعة منطقية واحدة. إذا كنت تريد ظهور بعض النص من بداية عنوان معين في جدول المحتويات ولكنك لا تريد العنوان بأكمله في جدول المحتويات، فيمكنك استخدام هذه الميزة

يوضح مثال التعليمات البرمجية التالي كيفية إدراج فاصل نمط لاستيعاب أنماط الفقرة المختلفة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## تحديد فاصل نمط الفقرة

يوفر Aspose.Words خاصية عامة [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) في فئة [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) تسمح بتحديد فقرة فاصل النمط كما هو موضح في المثال الموضح أدناه:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## تطبيق الحدود والتظليل على الفقرة

يتم تمثيل الحدود بواسطة [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). هذه مجموعة من كائنات [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) التي يتم الوصول إليها عن طريق الفهرس أو عن طريق نوع الحدود. يتم تمثيل نوع الحدود بواسطة تعداد [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). تنطبق بعض قيم التعداد على عدة عناصر مستند أو عنصر واحد فقط. على سبيل المثال، ينطبق [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) على فقرة أو خلية جدول بينما يحدد [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) الحد القطري في خلية الجدول فقط.

تحتوي كل من مجموعة الحدود وكل حد منفصل على سمات متشابهة مثل اللون ونمط الخط وعرض الخط والمسافة من النص والظل الاختياري. يتم تمثيلهم بخصائص تحمل نفس الاسم. يمكنك تحقيق أنواع مختلفة من الحدود من خلال دمج قيم الخاصية. بالإضافة إلى ذلك، يسمح لك كل من كائنات [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) و[Border](https://reference.aspose.com/words/python-net/aspose.words/border/) بإعادة تعيين هذه القيم إلى الوضع الافتراضي عن طريق استدعاء أسلوب [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

لاحظ أنه عند إعادة تعيين خصائص الحدود إلى قيمها الافتراضية، تصبح الحدود غير مرئية.

{{% /alert %}}

يحتوي Aspose.Words أيضًا على فئة [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) التي تحتوي على سمات تظليل لعناصر المستند. يمكنك ضبط نسيج التظليل المطلوب والألوان التي يتم تطبيقها على خلفية ومقدمة العنصر.

يتم تعيين نسيج التظليل بقيمة تعداد [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) التي تسمح بتطبيق أنماط مختلفة على كائن [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). على سبيل المثال، لتعيين لون خلفية لعنصر مستند، استخدم قيمة [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) وقم بتعيين لون تظليل المقدمة بالشكل المناسب. يوضح المثال أدناه كيفية تطبيق الحدود والتظليل على الفقرة.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق الحدود والتظليل على فقرة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
