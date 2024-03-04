---
title: العمل مع الفقرات في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الفقرات
linktitle: العمل مع الفقرات
description: "إدراج فقرة في مستند C#. قم بتعيين أنماط الفقرة في C#. العمل مع فاصل نمط الفقرة C#. التعامل مع عقدة الفقرة باستخدام C#."
type: docs
weight: 210
url: /ar/net/working-with-paragraphs/
---

الفقرة عبارة عن مجموعة من الأحرف المدمجة في كتلة منطقية وتنتهي بحرف خاص - *فاصل الفقرة*. في Aspose.Words، يتم تمثيل الفقرة بواسطة فئة [Paragraph](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/).

## إدراج فقرة

لإدراج فقرة جديدة في المستند، في الواقع، تحتاج إلى إدراج حرف فاصل فقرة فيه. لا يقوم [DocumentBuilder.Writeln](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/writeln/) بإدراج سلسلة نصية في المستند فحسب، بل يضيف أيضًا فاصل فقرات.

يتم تحديد تنسيق الخط الحالي أيضًا بواسطة خاصية [Font](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/font/)، ويتم تحديد تنسيق الفقرة الحالي بواسطة خاصية [ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/paragraphformat/). في القسم التالي، سنتناول المزيد من التفاصيل حول تنسيق الفقرة.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج فقرة في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## تنسيق الفقرة

يتم تمثيل تنسيق الفقرة الحالي بواسطة كائن [ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/) الذي يتم إرجاعه بواسطة خاصية [ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/paragraphformat/). يقوم هذا الكائن بتغليف خصائص تنسيق الفقرة المتنوعة المتوفرة في Microsoft Word. يمكنك بسهولة إعادة تعيين تنسيق الفقرة إلى وضعها الافتراضي - نمط عادي، محاذاة إلى اليسار، بدون مسافة بادئة، بدون مسافات، بدون حدود، بدون تظليل - عن طريق استدعاء [ClearFormatting](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/clearformatting/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تنسيق الفقرة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## تطبيق نمط الفقرة

تدعم بعض كائنات التنسيق، مثل **Font** أو **ParagraphFormat**، الأنماط. يتم تمثيل أحد الأنماط المضمنة أو المحددة من قبل المستخدم بواسطة كائن [Style](https://reference.aspose.com/words/ar/net/aspose.words/style/)، والذي يحتوي على خصائص النمط المناسبة مثل الاسم والنمط الأساسي والخط وتنسيق فقرة النمط وما إلى ذلك.

بالإضافة إلى ذلك، يعرض كائن **Style** خاصية [StyleIdentifier](https://reference.aspose.com/words/ar/net/aspose.words/style/styleidentifier/)، التي تُرجع معرف النمط المستقل عن اللغة الذي تمثله قيمة تعداد [StyleIdentifier](https://reference.aspose.com/words/ar/net/aspose.words/styleidentifier/). الحقيقة هي أن أسماء الأنماط المضمنة في Microsoft Word مترجمة للغات مختلفة. باستخدام معرف النمط، يمكنك العثور على النمط الصحيح بغض النظر عن لغة المستند. تتوافق قيم التعداد مع أنماط Microsoft Word المضمنة مثل *Normal* و*Heading 1* و*Heading 2* وما إلى ذلك. يتم تعيين كافة الأنماط المعرفة من قبل المستخدم على قيمة تعداد **StyleIdentifier.User**.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق نمط الفقرة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### قم بإدراج فاصل النمط لوضع أنماط فقرات مختلفة

يمكن إضافة فاصل النمط إلى نهاية الفقرة باستخدام اختصار لوحة المفاتيح Ctrl+Alt+Enter في Microsoft Word. تتيح لك هذه الميزة استخدام نمطين مختلفين للفقرة في نفس الفقرة المطبوعة المنطقية. إذا كنت تريد ظهور بعض النص من بداية عنوان معين في جدول المحتويات، ولكن لا تريد ظهور العنوان بالكامل في جدول المحتويات، فيمكنك استخدام هذه الوظيفة.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج فاصل نمط لاستيعاب أنماط الفقرة المختلفة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### تحديد فاصل نمط الفقرة

يعرض Aspose.Words خاصية [BreakIsStyleSeparator](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/breakisstyleseparator/) العامة في فئة `Paragraph` لتعريف فقرة بفاصل نمط، كما هو موضح في المثال أدناه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## تطبيق الحدود والتظليل على الفقرة

يتم تمثيل الحدود في Aspose.Words بواسطة فئة [BorderCollection](https://reference.aspose.com/words/ar/net/aspose.words/bordercollection/) - وهي عبارة عن مجموعة من كائنات [Border](https://reference.aspose.com/words/ar/net/aspose.words/border/) التي يتم الوصول إليها عن طريق الفهرس أو عن طريق نوع الحدود. يتم تمثيل نوع الحد بدوره بواسطة تعداد [BorderType](https://reference.aspose.com/words/ar/net/aspose.words/bordertype/). تنطبق بعض قيم التعداد على عناصر وثيقة متعددة أو واحدة فقط. على سبيل المثال، ينطبق **BorderType.Bottom** على فقرة أو خلية جدول، بينما يحدد **BorderType.DiagonalDown** حدًا قطريًا في خلية جدول فقط.

تحتوي كل من مجموعة الحدود وكل حد منفصل على سمات متشابهة مثل اللون ونمط الخط وعرض الخط والمسافة من النص والظل الاختياري. يتم تمثيلهم بخصائص تحمل نفس الاسم. يمكنك الحصول على أنواع حدود مختلفة من خلال الجمع بين قيم الخصائص. بالإضافة إلى ذلك، تسمح لك كائنات **BorderCollection** و**Border** بإعادة تعيين هذه القيم إلى قيمها الافتراضية عن طريق استدعاء أسلوب [ClearFormatting](https://reference.aspose.com/words/ar/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

لاحظ أنه عند إعادة تعيين خصائص الحدود إلى قيمها الافتراضية، تصبح الحدود غير مرئية.

{{% /alert %}}

يحتوي Aspose.Words أيضًا على فئة [Shading](https://reference.aspose.com/words/ar/net/aspose.words/shading/) التي تحتوي على سمات التظليل لعناصر المستند. يمكنك تعيين مادة التظليل والألوان المطلوبة التي يتم تطبيقها على الخلفية والمقدمة لعنصر ما باستخدام قيمة تعداد [TextureIndex](https://reference.aspose.com/words/ar/net/aspose.words/textureindex/). يتيح لك **TextureIndex** أيضًا تطبيق أنماط مختلفة على كائن **Shading**. على سبيل المثال، لتعيين لون الخلفية لعنصر مستند، استخدم قيمة **TextureIndex.TextureSolid** وقم بتعيين لون تظليل المقدمة بالشكل المناسب.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق الحدود والتظليل على فقرة:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## عد خطوط الفقرة

إذا كنت تريد حساب عدد الأسطر في فقرة لأي مستند Word، فيمكن استخدام نموذج التعليمات البرمجية التالي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}