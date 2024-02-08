---
title: الخيارات عند التحويل إلى PDF
second_title: Aspose.Words لـ Python via .NET
articleTitle: حدد خيارات العرض عند التحويل إلى PDF
linktitle: حدد خيارات العرض عند التحويل إلى PDF
description: "قم بتحويل مستند إلى PDF باستخدام الخيارات المتقدمة باستخدام Python. استخدم PdfSaveOptions لتغيير نتيجة حفظ مستند بتنسيق PDF."
type: docs
weight: 20
url: /ar/python-net/specify-rendering-options-when-converting-to-pdf/
---

تنسيق PDF هو تنسيق صفحة ثابتة يحظى بشعبية كبيرة بين المستخدمين ويدعمه على نطاق واسع العديد من التطبيقات، لأن مستند PDF يبدو بنفس الشكل على أي جهاز. ولهذا السبب، يعد التحويل إلى PDF ميزة مهمة في Aspose.Words.

PDF هو تنسيق معقد. هناك حاجة إلى عدة مراحل من العمليات الحسابية في عملية تحويل مستند إلى PDF، بما في ذلك حساب التخطيط. وبما أن هذه المراحل تتضمن حسابات معقدة، فإنها تستغرق وقتا طويلا. كما أن تنسيق PDF معقد إلى حد ما في حد ذاته. يحتوي على بنية ملف محددة ونموذج رسومات وتضمين خط. علاوة على ذلك، فهو يتميز ببعض وظائف الإخراج المعقدة، مثل علامات بنية المستند، والتشفير، والتوقيعات الرقمية، والنماذج القابلة للتحرير.

يقلد محرك تخطيط Aspose.Words الطريقة التي يعمل بها محرك تخطيط الصفحة في Microsoft Word. ولذلك، فإن Aspose.Words يجعل مستندات إخراج PDF تبدو أقرب ما يمكن إلى ما يمكنك رؤيته في Microsoft Word. في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ المستند بتنسيق PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)، التي تحتوي على الخصائص التي تحدد كيفية عرض مخرجات PDF.

بعض الأمثلة على استخدام [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) موضحة أدناه.

{{% alert color="primary" %}}

حاليًا، يمكنك أيضًا الحفظ بتنسيقات PDF/A-1 وPDF/A-2. لاحظ أنه مع تنسيق PDF/A، يكون حجم ملف الإخراج أكبر من حجم ملف PDF العادي.

تم وضع علامة على [PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) و[PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) على أنهما قديمان.

لمزيد من المعلومات حول PDF/A، راجع المقالة التالية، "تعرف على ميزات التحويل إلى PDF/A".

{{% /alert %}}

## إنشاء مستند PDF بنماذج قابلة للتعبئة

من الممكن أيضًا تصدير النماذج القابلة للتعبئة من مستند Microsoft Word إلى ملف PDF الناتج، والذي يحتوي على نماذج قابلة للتعبئة بدلاً من النص العادي. استخدم خاصية [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) لحفظ مستند بصيغة PDF مع نماذج قابلة للتعبئة.

لاحظ أنه على النقيض من Microsoft Word، فإن تنسيق PDF يحتوي على عدد محدود من الخيارات للنماذج القابلة للتحرير، مثل مربع النص ومربع التحرير والسرد ومربع الاختيار. يحتوي Microsoft Word على المزيد من أنواع النماذج، على سبيل المثال، منتقي تاريخ التقويم. بشكل عام، ليس من الممكن تقليد سلوك Microsoft Word بشكل كامل في PDF. ولذلك، في بعض الحالات المعقدة، قد يختلف إخراج PDF عما تراه في Microsoft Word.

يوضح مثال الكود أدناه كيفية حفظ مستند بصيغة PDF مع نماذج قابلة للتعبئة مع ضغط وجودة Jpeg محددة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## تصدير بنية المستند والخصائص المخصصة

تتيح لك خاصية [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) تصدير بنية المستند إلى مخرجات PDF.

توفر مرافق البنية المنطقية لـ PDF آلية لدمج المعلومات المتعلقة ببنية محتوى المستند في ملف PDF. يحتفظ Aspose.Words بمعلومات حول البنية من مستند Microsoft Word، مثل الفقرات والقوائم والجداول والحواشي السفلية/التعليقات الختامية وما إلى ذلك.

يوضح المثال التالي كيفية حفظ مستند بتنسيق PDF، مع الحفاظ على بنية المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

يسمح لك Aspose.Words أيضًا بتصدير خصائص المستند المخصصة إلى PDF، وهو ما يتضح من المثال التالي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## تصدير الخطوط العريضة من الإشارات المرجعية والعناوين في إخراج PDF

إذا كنت تريد تصدير الإشارات المرجعية كمخططات تفصيلية في ملف PDF الناتج، فيمكنك استخدام خاصية [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). تحدد هذه الخاصية المستوى الافتراضي في المخطط التفصيلي للمستند، والذي يتم فيه عرض إشارات Microsoft Word المرجعية. إذا كانت الوثيقة تحتوي على إشارات مرجعية في رأس/تذييل الوثيقة، فيمكنك تعيين خاصية [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) إلى [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) أو [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) لتحديد كيفية تصديرها في ملف PDF الناتج. لا يتم تصدير الإشارات المرجعية الموجودة في الرؤوس/التذييلات عندما تكون قيمة [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) هي [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

يوضح مثال الكود أدناه كيفية تصدير الإشارات المرجعية من الرأس/التذييل الأول للقسم:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

يظهر أدناه ملف PDF الناتج لهذا المثال:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

عند تعيين [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) على [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) وكان المستند يحتوي على رؤوس/تذييلات فردية أو زوجية أو رأس/تذييل مختلف للصفحة الأولى، يتم تصدير الإشارات المرجعية للرؤوس/التذييلات الفريدة الأولى في القسم.

يمكنك أيضًا تصدير العناوين في ملف PDF الناتج، باستخدام خاصية [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). تحدد هذه الخاصية عدد مستويات العناوين المضمنة في المخطط التفصيلي للمستند.

يوضح مثال الكود أدناه كيفية تصدير العناوين بثلاثة مستويات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

تم توضيح ملف PDF الناتج لهذا المثال أدناه:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

قد يكون للإشارة المرجعية أو التنقل في العنوان مظاهر مختلفة في برامج عرض PDF المتنوعة. علاوة على ذلك، في بعض التطبيقات، لا تتوفر الإشارات المرجعية والتنقل في العناوين في واجهة المستخدم.

{{% /alert %}}

## تقليص حجم الصور لتقليل حجم المستند

يوفر Aspose.Words القدرة على تقليل حجم الصور من أجل تقليل حجم ملف PDF الناتج، باستخدام خاصية [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). يتم تمكين الاختزال بشكل افتراضي في خاصية [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

لاحظ أنه من الممكن أيضًا تعيين دقة معينة في خاصية [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/)، أو حد دقة في خاصية [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). في الحالة الثانية، إذا كانت دقة الصورة أقل من قيمة العتبة، فلن يتم تطبيق الاختزال.

يعرض مثال الكود أدناه كيفية تغيير دقة الصور في مستند PDF الناتج:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

يتم حساب الدقة وفقًا لحجم الصورة الحقيقي على الصفحة.

## تضمين الخطوط بتنسيق Adobe PDF

يمكّنك Aspose.Words أيضًا من التحكم في كيفية تضمين الخطوط في مستندات PDF الناتجة. يجب تضمين الخطوط في أي مستند Adobe PDF لضمان إمكانية عرض المستند بشكل صحيح على أي جهاز (راجع المزيد من التفاصيل حول عرض الخطوط في القسم [استخدام خطوط تروتايب](/words/ar/python-net/using-truetype-fonts/)). افتراضيًا، يقوم Aspose.Words بتضمين مجموعة فرعية من الخطوط المستخدمة في المستند في ملف PDF الذي تم إنشاؤه. في هذه الحالة، يتم حفظ glyphs (الأحرف) المستخدمة في المستند فقط في PDF.

### متى تستخدم الخطوط الكاملة ومتى تستخدم المجموعة الفرعية

توجد طريقة لتحديد خيار لـ Aspose.Words لتضمين الخطوط الكاملة. مزيد من التفاصيل، إلى جانب بعض المزايا والعيوب لكل إعداد موضحة في الجدول أدناه.

| وضع الخطوط المضمنة |  مزايا | سلبيات |
|  :-  |  :-  |  :-  |
|  `Full`  | يكون مفيدًا عندما تريد تحرير ملف PDF الناتج لاحقًا عن طريق إضافة النص أو تعديله. تم تضمين جميع الخطوط، وبالتالي فإن جميع ملفات glyph موجودة. | نظرًا لأن بعض الخطوط كبيرة الحجم (عدة ميغابايت)، فإن تضمينها بدون تعيين فرعي يمكن أن يؤدي إلى ملفات مخرجات كبيرة. |
|  `Subset`  | يعد الإعداد الفرعي مفيدًا إذا كنت تريد الاحتفاظ بحجم ملف الإخراج أصغر. | <p>لا يمكن للمستخدم إضافة نص أو تحريره بالكامل باستخدام الخط الفرعي في مستند PDF الناتج. وذلك لأنه ليس كل ملفات glyph الخاصة بالخط موجودة.</p><p>إذا تم حفظ ملفات PDF متعددة بخطوط فرعية وتم تجميعها معًا، فقد يحتوي مستند PDF المدمج على خط يحتوي على العديد من المجموعات الفرعية غير الضرورية.</p> |

### تضمين الخطوط الكاملة في PDF

تتيح لك خاصية [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) إمكانية تحديد كيفية قيام Aspose.Words بتضمين الخطوط في مستند PDF الناتج.

- لتضمين الخطوط الكاملة في مستند PDF الناتج، اضبط [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) على *True*
- لتعيين الخطوط فرعيًا عند الحفظ في ملف PDF، اضبط [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) على *False*

يوضح المثال التالي كيفية تضمين الخطوط الكاملة في مستند PDF الناتج:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

يوضح المثال التالي كيفية ضبط Aspose.Words على الخطوط الفرعية في ملف PDF الناتج:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## كيفية التحكم في تضمين الخطوط الأساسية وخطوط Windows القياسية

الخطوط الأساسية وخطوط Windows القياسية هي مجموعات الخطوط "القياسية"، والتي عادة ما تكون موجودة على الجهاز المستهدف أو يتم توفيرها بواسطة قارئ المستندات، وبالتالي لا يلزم تضمينها في ملف PDF الناتج. من خلال عدم تضمين هذه الخطوط، يمكنك تقليل حجم مستندات PDF المقدمة مع الحفاظ على إمكانية النقل.

يوفر Aspose.Words خيارات لاختيار كيفية تصدير الخطوط إلى PDF. يمكنك اختيار إما تضمين الخطوط الأساسية والقياسية في ملف PDF الناتج أو تخطي تضمينها واستخدام خطوط PDF الأساسية القياسية أو خطوط النظام على الجهاز المستهدف بدلاً من ذلك. يؤدي استخدام أي من هذه الخيارات عادةً إلى تقليل حجم الملف بشكل كبير لمستندات PDF التي يتم إنشاؤها بواسطة Aspose.Words.

- نظرًا لأن هذه الخيارات متنافية، يجب عليك اختيار خيار واحد فقط في كل مرة.
- عند الحفظ باستخدام التوافق مع PDF/A-1، يجب تضمين جميع الخطوط المستخدمة في مستند PDF. عند الحفظ باستخدام هذا التوافق، يجب تعيين خاصية [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) على *False* ويجب تعيين خاصية [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) على [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### تضمين الخطوط الأساسية

يمكن تمكين أو تعطيل خيار تضمين الخطوط الأساسية باستخدام خاصية [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). عند تعيينه على true، لا يتم تضمين خطوط "True Type" الأكثر شيوعًا التالية (خطوط Base 14) في مستند PDF الناتج:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

يتم استبدال هذه الخطوط بخطوط Type 1 الأساسية المقابلة، والتي يوفرها القارئ عند فتح ملف PDF.

يوضح المثال الموضح أدناه كيفية ضبط Aspose.Words لتجنب تضمين الخطوط الأساسية والسماح للقارئ باستبدالها بخطوط PDF Type 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

نظرًا لأن برامج عرض PDF توفر خطوطًا أساسية على أي نظام أساسي مدعوم، فإن هذا الخيار يكون مفيدًا أيضًا عند الحاجة إلى إمكانية نقل أكبر للمستندات. ومع ذلك، قد تبدو الخطوط الأساسية مختلفة عن خطوط النظام.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط مع نص ترميز ANSI (Windows-1252). ستتطلب كتابة نص بخلاف ANSI إلى PDF دائمًا تضمين الخطوط المقابلة.

{{% /alert %}}

### تضمين خطوط النظام

يمكن تمكين هذا الخيار أو تعطيله باستخدام [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). عند تعيين هذه الخاصية إلى [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard)، لا يتم تضمين خطوط نوع true "Arial" و"Times New Roman" في مستند PDF. في هذه الحالة، يعتمد عارض العميل على الخطوط المثبتة على نظام التشغيل الخاص بالعميل. عند تعيين خاصية [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) على [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none)، لا يقوم Aspose.Words بتضمين أي خطوط.

يوضح المثال أدناه كيفية ضبط Aspose.Words لتخطي تضمين خطوط Arial وTimes New Roman في مستند PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

يكون هذا الوضع مفيدًا للغاية عندما ترغب في عرض مستنداتك على نفس النظام الأساسي، مع الحفاظ على المظهر الدقيق للخطوط في ملف PDF الناتج.

{{% alert color="primary" %}}

يعمل هذا الإعداد فقط مع نص ترميز ANSI (Windows-1252). تتطلب كتابة نص غير ANSI إلى PDF تضمين الخط المقابل.

{{% /alert %}}
