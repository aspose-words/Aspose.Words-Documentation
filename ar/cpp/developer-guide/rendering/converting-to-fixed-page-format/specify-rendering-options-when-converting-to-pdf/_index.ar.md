---
title: حدد خيارات العرض عند التحويل إلى PDF
second_title: Aspose.Words ل C++
articleTitle: حدد خيارات العرض عند التحويل إلى PDF
linktitle: حدد خيارات العرض عند التحويل إلى PDF
description: "تحويل مستند إلى PDF مع خيارات متقدمة باستخدام C++. استخدم PdfSaveOptions لتغيير نتيجة حفظ مستند إلى تنسيق PDF."
type: docs
weight: 30
url: /ar/cpp/specify-rendering-options-when-converting-to-pdf/
---

تنسيق PDF هو تنسيق صفحة ثابتة يحظى بشعبية كبيرة بين المستخدمين ويدعمه على نطاق واسع العديد من التطبيقات لأن ملف PDF يبدو المستند كما هو على أي جهاز. لهذا السبب، يعد التحويل إلى PDF ميزة مهمة في Aspose.Words.

PDF هو شكل معقد. مطلوب عدة مراحل من الحسابات في عملية تحويل مستند إلى PDF، بما في ذلك حساب التخطيط. نظرا لأن هذه المراحل تتضمن حسابات معقدة، فهي تستغرق وقتا طويلا. أيضا، تنسيق PDF معقد إلى حد ما في حد ذاته. يحتوي على بنية ملف محددة ونموذج رسومات وتضمين للخط. علاوة على ذلك، فإنه يتميز ببعض وظائف الإخراج المعقدة، مثل علامات بنية المستند والتشفير والتوقيعات الرقمية والنماذج القابلة للتحرير.

محرك تخطيط Aspose.Words يقلد الطريقة التي يعمل بها محرك تخطيط الصفحة Microsoft Word. لذلك، Aspose.Words يجعل PDF وثائق الإخراج تبدو أقرب ما يمكن إلى ما ترون في Microsoft Word. في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند في تنسيق PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members)، التي تحتوي على الخصائص التي تحدد كيفية عرض إخراج PDF.

يتم توفير بعض الأمثلة على استخدام **PdfSaveOptions** أدناه.

{{% alert color="primary" %}}

حاليا، يمكنك حفظ إلى PDF 1.7, PDF 2.0, PDF/A-1أ، PDF/A-1ب، PDF/A-2أ، PDF/A-2 ش، و PDF/UA-1 التنسيقات. استخدم التعداد [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) لتعيين مستوى امتثال المعايير PDF. لاحظ أنه باستخدام تنسيق PDF/A، يكون حجم ملف الإخراج أكبر من حجم ملف PDF العادي.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) و [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) تم وضع علامة على أنها قديمة.

لمزيد من المعلومات حول PDF/A، راجع المقالة التالية، "تعرف على ميزات التحويل إلى PDF/A".

{{% /alert %}}

## إنشاء مستند PDF بنماذج قابلة للتعبئة

من الممكن أيضا تصدير النماذج القابلة للتعبئة من مستند Microsoft Word إلى الإخراج PDF، والذي يحتوي على نماذج قابلة للتعبئة بدلا من نص عادي. استخدم خاصية [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) لحفظ مستند باسم PDF بنماذج قابلة للتعبئة.

لاحظ أنه على عكس Microsoft Word، يحتوي تنسيق PDF على عدد محدود من الخيارات للنماذج القابلة للتحرير، مثل مربع نص ومربع تحرير وسرد ومربع اختيار. Microsoft Word لديها المزيد من أنواع النماذج، على سبيل المثال، منتقي تاريخ التقويم. بشكل عام، لا يمكن تقليد سلوك Microsoft Word بالكامل في PDF. لذلك، في بعض الحالات المعقدة، قد يختلف إخراج PDF عما تراه في Microsoft Word.

يوضح مثال التعليمات البرمجية أدناه كيفية حفظ مستند باسم PDF مع نماذج قابلة للتعبئة مع ضغط جبيغ المحدد والجودة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## تصدير هيكل المستند والخصائص المخصصة

تمكنك خاصية [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) من تصدير بنية المستند إلى إخراج PDF.

PDF توفر مرافق الهيكل المنطقي آلية لدمج المعلومات، فيما يتعلق بهيكل محتوى المستند، في ملف PDF. Aspose.Words يحتفظ بمعلومات حول الهيكل من مستند Microsoft Word، مثل الفقرات والقوائم والجداول والحواشي السفلية/التعليقات الختامية، إلخ.

يوضح المثال التالي كيفية حفظ مستند بتنسيق PDF، مع الحفاظ على بنية المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words يسمح لك أيضا بتصدير خصائص المستندات المخصصة إلى PDF، والتي يتم توضيحها في المثال التالي:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## تصدير الخطوط العريضة من الإشارات المرجعية والعناوين في الإخراج PDF

إذا كنت ترغب في تصدير الإشارات المرجعية كمخططات في الإخراج PDF، يمكنك استخدام الخاصية [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). تحدد هذه الخاصية المستوى الافتراضي في مخطط المستند، حيث يتم عرض الإشارات المرجعية Microsoft Word. إذا كان المستند يحتوي على إشارات مرجعية في رأس / تذييل المستند، فيمكنك تعيين الخاصية [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) إلى [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) أو [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) لتحديد كيفية تصديرها في الإخراج PDF. لا يتم تصدير الإشارات المرجعية في الرؤوس/التذييلات عندما تكون قيمة **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

يوضح مثال الكود أدناه كيفية تصدير الإشارات المرجعية من الرأس/التذييل الأول للقسم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

يظهر الإخراج PDF من هذا المثال أدناه:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

عندما يتم تعيين **HeaderFooterBookmarksExportMode** إلى الأول والمستند يحتوي على رؤوس/تذييلات زوجية وغريبة أو رأس/تذييل مختلف للصفحة الأولى، يتم تصدير الإشارات المرجعية لأول رؤوس/تذييلات فريدة في قسم.

يمكنك أيضا تصدير العناوين في الإخراج PDF، باستخدام خاصية [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). تحدد هذه الخاصية عدد مستويات العناوين المضمنة في مخطط المستند.

يوضح مثال الكود أدناه كيفية تصدير العناوين بثلاثة مستويات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

الناتج PDF من هذا المثال موضح أدناه:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

قد يكون للإشارة المرجعية أو التنقل في العنوان مظاهر مختلفة في مختلف PDF المشاهدين. علاوة على ذلك، في بعض التطبيقات، لا تتوفر الإشارات المرجعية والتنقل في العنوان في UI.

{{% /alert %}}

## اختزال الصور لتقليل حجم المستند

Aspose.Words يوفر القدرة على تقليص الصور من أجل تقليل حجم الإخراج PDF، باستخدام خاصية [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). يتم تمكين الاختزال افتراضيا في الخاصية [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

لاحظ أنه من الممكن أيضا تعيين دقة محددة في خاصية [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/)، أو عتبة دقة في خاصية [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). في الحالة الثانية، إذا كانت دقة الصورة أقل من قيمة العتبة، فلن يتم تطبيق الاختزال.

يعرض مثال الكود أدناه كيفية تغيير دقة الصور في مستند الإخراج PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

يتم حساب الدقة وفقا لحجم الصورة الحقيقي على الصفحة.

## تضمين الخطوط في تنسيق أدوبي PDF

يمكنك Aspose.Words أيضا من التحكم في كيفية تضمين الخطوط في المستندات PDF الناتجة. الخطوط تحتاج إلى أن تكون جزءا لا يتجزأ في أي أدوبي PDF وثيقة لضمان أن الوثيقة يمكن أن تقدم بشكل صحيح على أي جهاز (انظر مزيد من التفاصيل حول تقديم الخط في القسم [باستخدام TrueType الخطوط](/words/cpp/using-truetype-fonts/)). بشكل افتراضي، يقوم Aspose.Words بتضمين مجموعة فرعية من الخطوط المستخدمة في المستند في PDF الذي تم إنشاؤه. في هذه الحالة، يتم حفظ الحروف الرسومية (الأحرف) المستخدمة في المستند فقط في PDF.

### متى تستخدم الخطوط الكاملة ومتى يتم تعيين فرعي

هناك طريقة لتحديد خيار لـ Aspose.Words لتضمين خطوط كاملة. مزيد من التفاصيل، جنبا إلى جنب مع بعض مزايا وعيوب كل إعداد موصوفة في الجدول أدناه.

| تضمين وضع الخطوط | المزايا | العيوب |
| :- | :- | :- |
| `Full` | مفيد عندما تريد تحرير الناتج PDF لاحقا عن طريق إضافة النص أو تعديله. يتم تضمين كافة الخطوط، وبالتالي كل رموزا موجودة. | نظرا لأن بعض الخطوط كبيرة (عدة ميغا بايت)، فإن تضمينها بدون تعيين فرعي يمكن أن يؤدي إلى ملفات إخراج كبيرة. |
| `Subset` | يعد الإعداد الفرعي مفيدا إذا كنت تريد الاحتفاظ بحجم ملف الإخراج أصغر. | <p>لا يمكن للمستخدم إضافة النص أو تحريره بالكامل باستخدام الخط الفرعي في مستند الإخراج PDF. هذا لأنه ليست كل الحروف الرسومية للخط موجودة.</p><p>إذا تم حفظ عدة PDFs بخطوط فرعية وتجميعها معا، فقد يحتوي المستند PDF المدمج على خط يحتوي على العديد من المجموعات الفرعية غير الضرورية.</p> |

### تضمين الخطوط الكاملة في PDF

تمكنك خاصية [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) من تحديد كيفية تضمين Aspose.Words الخطوط في مستند الإخراج PDF.

- لتضمين خطوط كاملة في مستند الإخراج PDF، اضبط **EmbedFullFonts** على صحيح
- لتعيين الخطوط الفرعية عند الحفظ إلى PDF، اضبط **EmbedFullFonts** على خطأ

يوضح المثال التالي كيفية تضمين الخطوط الكاملة في الإخراج PDF وثيقة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

يوضح المثال التالي كيفية تعيين Aspose.Words إلى مجموعة فرعية من الخطوط في الإخراج PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## كيفية التحكم في تضمين الخطوط الأساسية والخطوط القياسية Windows

الخطوط الأساسية و Windows الخطوط القياسية هي مجموعات" قياسية " من الخطوط، والتي عادة ما تكون موجودة على الجهاز المستهدف أو يقدمها قارئ المستندات، وبالتالي لا تحتاج إلى تضمينها في الإخراج PDF. من خلال عدم تضمين هذه الخطوط، يمكنك تقليل حجم المستندات المقدمة PDF والحفاظ على قابلية النقل.

Aspose.Words يوفر خيارات لاختيار كيفية تصدير الخطوط إلى PDF. يمكنك اختيار إما لتضمين الخطوط الأساسية والقياسية في الإخراج PDF أو لتخطي تضمينها واستخدام الخطوط الأساسية القياسية PDF أو خطوط النظام على الجهاز المستهدف بدلا من ذلك. يؤدي استخدام أي من هذين الخيارين عادة إلى تقليل حجم الملف بشكل كبير لـ PDF المستندات التي تم إنشاؤها بواسطة Aspose.Words.

- نظرا لأن هذه الخيارات حصرية بشكل متبادل، يجب عليك اختيار واحد فقط في كل مرة.
- عند الحفظ بامتثال PDF/A-1، يجب تضمين جميع الخطوط المستخدمة في مستند PDF. عند الحفظ باستخدام هذا الامتثال، يجب تعيين الخاصية [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) على خطأ ويجب تعيين الخاصية [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) على [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### تضمين الخطوط الأساسية

يمكن تمكين خيار تضمين الخطوط الأساسية أو تعطيلها باستخدام خاصية `UseCoreFonts`. عند ضبطه على صحيح، لا يتم تضمين خطوط "النوع الحقيقي" الأكثر شيوعا (الخطوط الأساسية 14) في مستند الإخراج PDF:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

يتم استبدال هذه الخطوط بالنوع الأساسي المقابل 1 الخطوط، والتي يتم توفيرها بواسطة القارئ عند فتح PDF.

يوضح المثال الموضح أدناه كيفية تعيين Aspose.Words لتجنب تضمين الخطوط الأساسية والسماح للقارئ باستبدالها بخطوط PDF اكتب 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

نظرا لأن المشاهدين PDF يوفرون خطوطا أساسية على أي نظام أساسي مدعوم، فإن هذا الخيار مفيد أيضا عند الحاجة إلى قابلية أكبر لنقل المستندات. ومع ذلك، قد تبدو الخطوط الأساسية مختلفة عن خطوط النظام.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط ل ANSI (Windows-1252) ترميز النص. تتطلب كتابة نص غيرANSI إلى PDF دائما تضمين الخطوط المقابلة.

{{% /alert %}}

### تضمين خطوط النظام

يمكن تمكين هذا الخيار أو تعطيله باستخدام خاصية [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). عندما يتم تعيين هذه الخاصية إلى [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)، لا يتم تضمين خطوط النوع الحقيقي" أريال "و" تايمز نيو رومان " في مستند PDF. في هذه الحالة، يعتمد عارض العميل على الخطوط المثبتة على نظام تشغيل العميل. عندما يتم تعيين الخاصية **FontEmbeddingMode** إلى [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)، Aspose.Words لا تقم بتضمين أي خطوط.

يوضح المثال أدناه كيفية تعيين Aspose.Words لتخطي تضمين خطوط أريال وتايمز نيو رومان في مستند PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

يكون هذا الوضع مفيدا للغاية عندما ترغب في عرض مستنداتك على نفس النظام الأساسي، مع الحفاظ على المظهر الدقيق للخطوط في الإخراج PDF.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط ل ANSI (Windows-1252) ترميز النص. تتطلب كتابة نص غيرANSI إلى PDF تضمين الخط المقابل.

{{% /alert %}}
