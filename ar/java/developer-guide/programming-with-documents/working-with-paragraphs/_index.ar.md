---
title: العمل مع الفقرات Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الفقرات
linktitle: العمل مع الفقرات
description: "ممارسات التلاعب في الفقرة المعينة باستخدام Java."
type: docs
weight: 210
url: /ar/java/working-with-paragraphs/
---

فالفقرة عبارة عن مجموعة من الشخصيات مجتمعة في كتلة منطقية وتنتهي بطابع خاص - وهو " استراحة فقرة ". In Aspose.Words, a paragraph is represented by the [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) الصف

## إدراج فقرة

إدراج فقرة جديدة في الوثيقة، في الواقع، يجب أن تُدرَج فيها فقرة تكسر فيها. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) لا تُدرج في الوثيقة فحسب سلسلة من النصوص، بل تضيف أيضاً استراحة فقرة.

ويحدّد الشكل البياني الحالي أيضاً [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) الممتلكات، وتُحدَّد صيغة الفقرة الحالية من خلال [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) ملكية وفي الفرع التالي، سنخوض في مزيد من التفاصيل بشأن صياغة الفقرة.

ويبين المثال الرمزي التالي كيفية إدراج فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## الصيغة

تُمثّل صيغة الفقرة الحالية بصيغة [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) الجسم الذي يعيده [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) ملكية هذا الجسم يلخص مختلف الفقرات التي تشكل الممتلكات المتاحة في Microsoft Word. يمكنك بسهولة إعادة صياغة فقرة إلى تخلفها... نمط عادي، يسار، لا هوية، [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

The following code example shows how to set paragraph formatting:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## تطبيق الفقرة Style

بعض الأشياء المشكله مثل أسلوب الدعم A single built-in or user-defined method is represented by a [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) الجسم الذي يحتوي على خصائص النمط المناظرة مثل الاسم، وأسلوب القاعدة، ونسخة وصيغة الفقرة من الأسلوب، وهكذا.

(أ) **Style** الجسم ينص على [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) الممتلكات التي تُعيد مُحدِّد للأسلوب المحلي المعتمد **StyleIdentifier** قيمة العد المغزى هو أن اسماء الموضة في Microsoft Word تُحَوَّل لمختلف اللغات. وباستخدام جهاز تحديد هويّة، يمكنك إيجاد الأسلوب الصحيح بغض النظر عن لغة الوثيقة. قيم التعداد متطابقة مع Microsoft Word أساليب البناء مثل *Normal*, * الرعاية ١*، * الرعاية ٢*، الخ. تم تعيين جميع الأساليب المحددة للمستعملين **مُحدّد هوية. قيمة المستعملين**.

ويبين المثال الرمزي التالي كيفية تطبيق أسلوب الفقرة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insert Style Separator to Put Different Paragraph Styles

ويمكن إضافة فصل عن الأسلوب إلى نهاية فقرة تستخدم طريق " Ctrl + Alt + Enter Keyboard Shortcut into MS Word ". وتتيح هذه السمة استخدام أسلوبين مختلفين في فقرة مطبوعة منطقية واحدة. إذا كنت ترغب في بعض النص من بداية عنوان معين أن تظهر في جدول المحتويات ولكن لا تريد كامل العنوان في جدول المحتويات، يمكنك استخدام هذه الميزة.

ويبيّن المثال الرمزي التالي كيف يُدرَج مُناظر نمطي لاستيعاب مختلف أساليب الفقرات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## تطبيق الحدود والتقاسم على فقرة

الحدود Aspose.Words ممثلة في الدورة [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) هذه مجموعة [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) الأجسام التي يتم الوصول إليها حسب الرقم القياسي أو حسب نوع الحدود. The `Border` النوع مُمثَّل من قِبل [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) العد وتنطبق بعض قيم التعداد على عدد من عناصر الوثيقة أو على عنصر واحد فقط. على سبيل المثال، **BorderType.Bottom** ينطبق على فقرة أو زنزانة طاولة في حين **BorderType.DiagonalDown** يحدد الحدود التشخيصية في خلية طاولة فقط

ولكل من مجموعة الحدود وكل حدود منفصلة خصائص مماثلة مثل اللون، وأسلوب الخط، واتباع خط، وبعد عن النص، والظل الاختياري. وهي ممثَّلة بممتلكات ذات الاسم. يمكنك تحقيق أنواع مختلفة من الحدود عن طريق الجمع بين قيم الملكية بالإضافة إلى ذلك، كلاهما **BorderCollection** و **Border** الأشياء تسمح لك بإعادة هذه القيم إلى التقصير عن طريق الاتصال [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) طريقة

{{% alert color="primary" %}}

ويلاحظ أنه عندما تعاد ملكية الحدود إلى القيم الافتراضية، فإن الحدود غير مرئية.

{{% /alert %}}

Aspose.Words أيضاً [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) ويتضمن الفصل سمات مظلة لعناصر الوثائق. يمكنك وضع النسيج المظلي المرغوب والألوان التي تُطبق على خلفية العنصر

النسيج المظل مع [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) قيمة التعداد التي تسمح بتطبيق أنماط مختلفة على **Shading** هدف For example, to set a background color for a document element, use the `TextureIndex.TextureSolid` القيمة ووضع لون المظلة الأمامية حسب الاقتضاء ويبين المثال الرمزي الوارد أدناه كيفية تطبيق الحدود والظل على فقرة.

ويبين المثال الرمزي التالي كيفية تطبيق الحدود والظل على فقرة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
