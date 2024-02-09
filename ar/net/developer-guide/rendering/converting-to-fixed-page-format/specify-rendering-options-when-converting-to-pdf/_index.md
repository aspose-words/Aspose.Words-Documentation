---
title: الخيارات عند التحويل إلى PDF
second_title: Aspose.Words لـ .NET
articleTitle: حدد خيارات العرض عند التحويل إلى PDF
linktitle: حدد خيارات العرض عند التحويل إلى PDF
description: "قم بتحويل مستند إلى PDF باستخدام الخيارات المتقدمة باستخدام C#. تحويل نماذج DOCX إلى PDF C#. استخدم PdfSaveOptions لتغيير نتيجة حفظ مستند إلى PDF."
type: docs
weight: 20
url: /ar/net/specify-rendering-options-when-converting-to-pdf/
---

تنسيق PDF هو تنسيق صفحة ثابتة يحظى بشعبية كبيرة بين المستخدمين ويدعمه على نطاق واسع العديد من التطبيقات، لأن مستند PDF يبدو بنفس الشكل على أي جهاز. ولهذا السبب، يعد التحويل إلى PDF ميزة مهمة في Aspose.Words.

PDF هو تنسيق معقد. هناك حاجة إلى عدة مراحل من العمليات الحسابية في عملية تحويل مستند إلى PDF، بما في ذلك حساب التخطيط. وبما أن هذه المراحل تتضمن حسابات معقدة، فإنها تستغرق وقتا طويلا. كما أن تنسيق PDF معقد إلى حد ما في حد ذاته. يحتوي على بنية ملف محددة ونموذج رسومات وتضمين خط. علاوة على ذلك، فهو يتميز ببعض وظائف الإخراج المعقدة، مثل علامات بنية المستند، والتشفير، والتوقيعات الرقمية، والنماذج القابلة للتحرير.

يقلد محرك تخطيط Aspose.Words الطريقة التي يعمل بها محرك تخطيط الصفحة في Microsoft Word. ولذلك، فإن Aspose.Words يجعل مستندات إخراج PDF تبدو أقرب ما يمكن إلى ما يمكنك رؤيته في Microsoft Word. في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ المستند بتنسيق PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)، التي تحتوي على الخصائص التي تحدد كيفية عرض مخرجات PDF.

بعض الأمثلة على استخدام **PdfSaveOptions** موضحة أدناه.

{{% alert color="primary" %}}

حاليًا، يمكنك الحفظ بتنسيقات PDF 1.7، وPDF 2.0، وPDF/A-1a، وPDF/A-1b، وPDF/A-2a، وPDF/A-2u، وPDF/UA-1. استخدم تعداد [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) لتعيين مستوى الامتثال لمعايير PDF. لاحظ أنه مع تنسيق PDF/A، يكون حجم ملف الإخراج أكبر من حجم ملف PDF العادي.

تم وضع علامة على [PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) و[PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) على أنهما قديمان.

لمزيد من المعلومات حول PDF/A، راجع المقالة التالية، "تعرف على ميزات التحويل إلى PDF/A".

{{% /alert %}}

## إنشاء مستند PDF بنماذج قابلة للتعبئة

من الممكن أيضًا تصدير النماذج القابلة للتعبئة من مستند Microsoft Word إلى ملف PDF الناتج، والذي يحتوي على نماذج قابلة للتعبئة بدلاً من النص العادي. استخدم خاصية [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) لحفظ مستند بصيغة PDF مع نماذج قابلة للتعبئة.

لاحظ أنه على النقيض من Microsoft Word، فإن تنسيق PDF يحتوي على عدد محدود من الخيارات للنماذج القابلة للتحرير، مثل مربع النص ومربع التحرير والسرد ومربع الاختيار. يحتوي Microsoft Word على المزيد من أنواع النماذج، على سبيل المثال، منتقي تاريخ التقويم. بشكل عام، ليس من الممكن تقليد سلوك Microsoft Word بشكل كامل في PDF. ولذلك، في بعض الحالات المعقدة، قد يختلف إخراج PDF عما تراه في Microsoft Word.

يوضح مثال الكود أدناه كيفية حفظ مستند بصيغة PDF مع نماذج قابلة للتعبئة مع ضغط وجودة Jpeg محددة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## تصدير بنية المستند والخصائص المخصصة

تتيح لك خاصية [https://reference.aspose.com/words/net/aspose.words. Saving/pdfsaveoptions/properties/exportdocumentstructure) تصدير بنية المستند إلى مخرجات PDF.

توفر مرافق البنية المنطقية لـ PDF آلية لدمج المعلومات المتعلقة ببنية محتوى المستند في ملف PDF. يحتفظ Aspose.Words بمعلومات حول البنية من مستند Microsoft Word، مثل الفقرات والقوائم والجداول والحواشي السفلية/التعليقات الختامية وما إلى ذلك.

يوضح المثال التالي كيفية حفظ مستند بتنسيق PDF، مع الحفاظ على بنية المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

يسمح لك Aspose.Words أيضًا بتصدير خصائص المستند المخصصة إلى PDF، وهو ما يتضح من المثال التالي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## تصدير الخطوط العريضة من الإشارات المرجعية والعناوين في إخراج PDF

إذا كنت تريد تصدير الإشارات المرجعية كمخططات تفصيلية في ملف PDF الناتج، فيمكنك استخدام خاصية [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). تحدد هذه الخاصية المستوى الافتراضي في المخطط التفصيلي للمستند، والذي يتم فيه عرض إشارات Microsoft Word المرجعية. إذا كانت الوثيقة تحتوي على إشارات مرجعية في رأس/تذييل الوثيقة، فيمكنك تعيين خاصية [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) إلى [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) أو [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) لتحديد كيفية تصديرها في ملف PDF الناتج. لا يتم تصدير الإشارات المرجعية الموجودة في الرؤوس/التذييلات عندما تكون قيمة **HeaderFooterBookmarksExportMode** هي [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

يوضح مثال الكود أدناه كيفية تصدير الإشارات المرجعية من الرأس/التذييل الأول للقسم:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

يظهر أدناه ملف PDF الناتج لهذا المثال:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

عند تعيين **HeaderFooterBookmarksExportMode** على [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) وكان المستند يحتوي على رؤوس/تذييلات فردية أو زوجية أو رأس/تذييل مختلف للصفحة الأولى، يتم تصدير الإشارات المرجعية للرؤوس/التذييلات الفريدة الأولى في القسم.

يمكنك أيضًا تصدير العناوين في ملف PDF الناتج، باستخدام خاصية [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). تحدد هذه الخاصية عدد مستويات العناوين المضمنة في المخطط التفصيلي للمستند.

يوضح مثال الكود أدناه كيفية تصدير العناوين بثلاثة مستويات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

تم توضيح ملف PDF الناتج لهذا المثال أدناه:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

قد يكون للإشارة المرجعية أو التنقل في العنوان مظاهر مختلفة في برامج عرض PDF المختلفة. علاوة على ذلك، في بعض التطبيقات، لا تتوفر الإشارات المرجعية والتنقل في العناوين في واجهة المستخدم.

{{% /alert %}}

## تقليص حجم الصور لتقليل حجم المستند

يوفر Aspose.Words القدرة على تقليل حجم الصور من أجل تقليل حجم ملف PDF الناتج، باستخدام خاصية [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). يتم تمكين الاختزال بشكل افتراضي في خاصية [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

لاحظ أنه من الممكن أيضًا تعيين دقة معينة في خاصية [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/)، أو حد دقة في خاصية [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). في الحالة الثانية، إذا كانت دقة الصورة أقل من قيمة العتبة، فلن يتم تطبيق الاختزال.

يعرض مثال الكود أدناه كيفية تغيير دقة الصور في مستند PDF الناتج:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

يتم حساب الدقة وفقًا لحجم الصورة الحقيقي على الصفحة.

## تضمين الخطوط بتنسيق Adobe PDF

يمكّنك Aspose.Words أيضًا من التحكم في كيفية تضمين الخطوط في مستندات PDF الناتجة. يجب تضمين الخطوط في أي مستند Adobe PDF لضمان إمكانية عرض المستند بشكل صحيح على أي جهاز (راجع المزيد من التفاصيل حول عرض الخطوط في القسم [استخدام خطوط تروتايب](/words/ar/net/using-truetype-fonts/)). افتراضيًا، يقوم Aspose.Words بتضمين مجموعة فرعية من الخطوط المستخدمة في المستند في ملف PDF الذي تم إنشاؤه. في هذه الحالة، يتم حفظ glyphs (الأحرف) المستخدمة في المستند فقط في PDF.

### متى تستخدم الخطوط الكاملة ومتى تستخدم المجموعة الفرعية

توجد طريقة لتحديد خيار لـ Aspose.Words لتضمين الخطوط الكاملة. مزيد من التفاصيل، إلى جانب بعض المزايا والعيوب لكل إعداد موضحة في الجدول أدناه.

| وضع الخطوط المضمنة |  مزايا | سلبيات |
|  :-  |  :-  |  :-  |
|  `Full`  | يكون مفيدًا عندما تريد تحرير ملف PDF الناتج لاحقًا عن طريق إضافة النص أو تعديله. تم تضمين جميع الخطوط، وبالتالي فإن جميع ملفات glyph موجودة. | نظرًا لأن بعض الخطوط كبيرة الحجم (عدة ميغابايت)، فإن تضمينها بدون تعيين فرعي يمكن أن يؤدي إلى ملفات مخرجات كبيرة. |
|  `Subset`  | يعد الإعداد الفرعي مفيدًا إذا كنت تريد الاحتفاظ بحجم ملف الإخراج أصغر. | <p>لا يمكن للمستخدم إضافة نص أو تحريره بالكامل باستخدام الخط الفرعي في مستند PDF الناتج. وذلك لأنه ليس كل ملفات glyph الخاصة بالخط موجودة.</p><p>إذا تم حفظ ملفات PDF متعددة بخطوط فرعية وتم تجميعها معًا، فقد يحتوي مستند PDF المدمج على خط يحتوي على العديد من المجموعات الفرعية غير الضرورية.</p> |

### تضمين الخطوط الكاملة في PDF

تتيح لك خاصية [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) إمكانية تحديد كيفية قيام Aspose.Words بتضمين الخطوط في مستند PDF الناتج.

- لتضمين الخطوط الكاملة في مستند PDF الناتج، اضبط **EmbedFullFonts** على true
- لتعيين الخطوط فرعيًا عند الحفظ في ملف PDF، اضبط **EmbedFullFonts** على false

يوضح المثال التالي كيفية تضمين الخطوط الكاملة في مستند PDF الناتج:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

يوضح المثال التالي كيفية ضبط Aspose.Words على الخطوط الفرعية في ملف PDF الناتج:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## كيفية التحكم في تضمين الخطوط الأساسية وخطوط Windows القياسية

الخطوط الأساسية وخطوط Windows القياسية هي مجموعات الخطوط "القياسية"، والتي عادة ما تكون موجودة على الجهاز المستهدف أو يتم توفيرها بواسطة قارئ المستندات، وبالتالي لا يلزم تضمينها في ملف PDF الناتج. من خلال عدم تضمين هذه الخطوط، يمكنك تقليل حجم مستندات PDF المقدمة مع الحفاظ على إمكانية النقل.

يوفر Aspose.Words خيارات لاختيار كيفية تصدير الخطوط إلى PDF. يمكنك اختيار إما تضمين الخطوط الأساسية والقياسية في ملف PDF الناتج أو تخطي تضمينها واستخدام خطوط PDF الأساسية القياسية أو خطوط النظام على الجهاز المستهدف بدلاً من ذلك. يؤدي استخدام أي من هذه الخيارات عادةً إلى تقليل حجم الملف بشكل كبير لمستندات PDF التي يتم إنشاؤها بواسطة Aspose.Words.

- نظرًا لأن هذه الخيارات متنافية، يجب عليك اختيار خيار واحد فقط في كل مرة.
- عند الحفظ باستخدام التوافق مع PDF/A-1، يجب تضمين جميع الخطوط المستخدمة في مستند PDF. عند الحفظ باستخدام هذا التوافق، يجب تعيين خاصية [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) على false ويجب تعيين خاصية [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) على [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### تضمين الخطوط الأساسية

يمكن تمكين أو تعطيل خيار تضمين الخطوط الأساسية باستخدام خاصية [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). عند تعيينه على true، لا يتم تضمين خطوط "True Type" الأكثر شيوعًا التالية (خطوط Base 14) في مستند PDF الناتج:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

يتم استبدال هذه الخطوط بخطوط Type 1 الأساسية المقابلة، والتي يوفرها القارئ عند فتح ملف PDF.

يوضح المثال الموضح أدناه كيفية ضبط Aspose.Words لتجنب تضمين الخطوط الأساسية والسماح للقارئ باستبدالها بخطوط PDF Type 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

نظرًا لأن برامج عرض PDF توفر خطوطًا أساسية على أي نظام أساسي مدعوم، فإن هذا الخيار يكون مفيدًا أيضًا عند الحاجة إلى إمكانية نقل أكبر للمستندات. ومع ذلك، قد تبدو الخطوط الأساسية مختلفة عن خطوط النظام.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط مع نص ترميز ANSI (Windows-1252). ستتطلب كتابة نص بخلاف ANSI إلى PDF دائمًا تضمين الخطوط المقابلة.

{{% /alert %}}

### تضمين خطوط النظام

يمكن تمكين هذا الخيار أو تعطيله باستخدام خاصية [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). عند تعيين هذه الخاصية إلى [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/)، لا يتم تضمين خطوط نوع true "Arial" و"Times New Roman" في مستند PDF. في هذه الحالة، يعتمد عارض العميل على الخطوط المثبتة على نظام التشغيل الخاص بالعميل. عند تعيين خاصية **FontEmbeddingMode** إلى [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/)، لا يقوم Aspose.Words بتضمين أي خطوط.

يوضح المثال أدناه كيفية ضبط Aspose.Words لتخطي تضمين خطوط Arial وTimes New Roman في مستند PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

يكون هذا الوضع مفيدًا للغاية عندما ترغب في عرض مستنداتك على نفس النظام الأساسي، مع الحفاظ على المظهر الدقيق للخطوط في ملف PDF الناتج.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط مع نص ترميز ANSI (Windows-1252). تتطلب كتابة نص غير ANSI إلى PDF تضمين الخط المقابل.

{{% /alert %}}
