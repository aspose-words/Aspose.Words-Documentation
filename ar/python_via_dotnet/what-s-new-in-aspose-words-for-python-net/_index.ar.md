---
title: ما هو الجديد
second_title: Aspose.Words لـ Python via .NET
articleTitle: ما الجديد في Aspose.Words لـ Python via .NET
linktitle: ما الجديد في Aspose.Words لـ Python via .NET
type: docs
description: "يتوسع Aspose.Words for Python via .NET ويتحسن يوميًا. في هذه الصفحة، يمكنك التعرف على الميزات الضخمة والأكثر إثارة للاهتمام للمنتج."
weight: 10
url: /ar/python-net/what-s-new-in-aspose-words-for-python-net/
---

تصف هذه الصفحة ميزات Aspose.Words الجديدة الأكثر إثارة للاهتمام والتي تم تقديمها في الإصدارات الأخيرة.

## Aspose.Words لـ Python via .NET 24.5

### التقديم والطباعة

#### التغييرات في Charts وShapes وDrawingML <sup>24.5</sup>

* تم تنفيذ عرض تأثيرات DrawingML لرسومات SVG، مما أدى إلى توسيع الوظائف السابقة التي تقتصر على الصور.
* تم تقديم الدعم لإنشاء مخططات مجمعة وضبط الخصائص مثل عرض الفجوة والتداخل ومقياس الفقاعات ضمن مجموعات السلسلة عن طريق إضافة [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) وفئات [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) وفئات [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* تم تنفيذ وظيفة معالجة تأثير SoftEdge للأشكال عن طريق إضافة فئة [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* تم تنفيذ القدرة على تعديل قيم ضبط الأشكال عن طريق إضافة **AdjustmentCollection** و**Adjustment** الفئات العامة و[adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) ملكية.

#### آخر

* تم تنفيذ وظيفة إزالة الصفحات الفارغة من المستند عن طريق إضافة طريقة [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* تم توفير القدرة على التحقق من وجود وحدات ماكرو VBA دون تحميل مستند عن طريق إضافة خاصية [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* أصبح الحفاظ على ترقيم المصدر أثناء إدراج مستند باستخدام محرك التقارير LINQ مدعومًا الآن. <sup>24.5</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [Aspose.Words لـ Python عبر ملاحظات الإصدار .NET 24.5](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Python via .NET 24.1, 24.2, 24.3, 24.4

يعمل Aspose.Words 24.1 على تحسين تجربة إدارة ألوان الحدود، ويعزز كائنات OLE، بالإضافة إلى تقديم مصادر المراجع الببليوغرافية الجديدة API العامة.

Aspose.Words 24.2 واجهة برمجة تطبيقات الرسوم البيانية الموسعة وإدارة الأنماط . يقدم هذا الإصدار من Aspose.Words أيضًا إمكانية تحديد SvgSaveOptions أثناء العرض، وتحكم أكثر مرونة في تحميل ملفات Markdown، والعمل مع النص المرجعي للحواشي السفلية والتعليقات الختامية.

Aspose.Words 24.3 يقدم قارئ / كاتب TIFF جديد ومحاكاة لعمليات الصور النقطية الثنائية لملفات WMF. يواصل Aspose.Words 24.3 أيضًا توسيع واجهة برمجة التطبيقات للرسوم البيانية.

Aspose.Words 24.4 يعزز حفظ التنسيقات ، بعض خيارات العرض ، وكذلك يحسن العمل مع التواقيع الرقمية.

### تنسيقات مدعومة <sup>24.4</sup>

تم دعم تنسيق الصور الحديث **WebP** الآن في Aspose.Words لـ .NET Framework 4.6.2 والإصدارات الأعلى. يمكنك الآن قراءة وإدراج صور WebP في المستندات ، وكذلك حفظ الصور بتنسيق WebP. 

يرجى ملاحظة أن WebP متاح حاليًا فقط في .NET Standard و .NET Framework v4.6.2 وما فوق.

### التقديم والطباعة

#### التحكم في لون السكتة الدماغية <sup>24.1</sup>

تم توسيع فئة [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) بمجموعة من الخصائص العامة الجديدة المتعلقة بإدارة ألوان الحدود: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/)و [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/)و [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/)و [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### <sup>24.2 / 24.3 / 24.4</sup> DrawingML Charts API ملحق

يستمر توسيع واجهة برمجة تطبيقات **DrawML Charts API**.

#### تضمين الخطوط المعلن عنها في قواعد @font-face <sup>24.4</sup>

تمت إضافة القدرة على تضمين الخطوط المعلن عنها في قواعد @font-face في تعريفات الخطوط للمستند الناتج من خلال إضافة خاصية جديدة تسمى [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### العمل مع تنسيق اللمعان والانعكاس <sup>24.4</sup>

تم تنفيذ القدرة على العمل مع تنسيق اللمعان والانعكاس لكائن الرسم.

### تحميل وحفظ المستندات

#### <sup>24.2</sup>  حدد SvgSaveOptions أثناء العرض

تمت إضافة القدرة على تحديد [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) أثناء العرض باستخدام الأساليب [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) و [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions). 

#### <sup>24.2</sup>  الحفاظ على الأسطر الفارغة عند تحميل ملفات Markdown

تمت إضافة القدرة على الحفاظ على الأسطر الفارغة عند تحميل ملفات Markdown.

#### <sup>24.3</sup> قارئ / كاتب TIFF جديد 

تم تطوير قارئ / كاتب TIFF جديد لـ Aspose.Words. أضاف Aspose.Words for .NET 24.3 دعمًا لقراءة صور TIFF بأنواع ضغط JPEG و Old JPEG ، وكما تم تحسين جودة عمليات القراءة والكتابة بشكل كبير.

### آخر

* تم تقديم القدرة على تعديل نص عنصر تحكم `TextBox` OLE عن طريق إضافة خاصية **Text** جديدة إلى فئة **TextBoxControl** الجديدة. <sup>24.1</sup>
* تم تنفيذ API العام لمصادر المراجع من خلال إضافة مساحة اسم جديدة [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) مع فئاتها وتعداداتها الجديدة، ومن خلال إضافة خاصية [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) جديدة إلى فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* تمت إضافة الخصائص العامة الجديدة [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/)، [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/)، و [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/)  لإدارة النمط المحسنة إلى فئة [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). <sup>24.2</sup>
* تم تحسين وظيفة استرداد نص العلامة المرجعية الفعلي للحواشي السفلية والتعليقات الختامية باستخدام خاصية [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) وأسلوب [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* تم تنفيذ محاكاة لعمليات الصور النقطية الثنائية لملفات WMF. <sup>24.3</sup>
* تمكين تعريف خيارات التوقيع للمستندات ضمن خيارات الحفظ من خلال إضافة فئة جديدة تسمى [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) بأعضاء عامة جديدة ، بالإضافة إلى إضافة خصائص جديدة إلى فئات [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) و [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) و [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Python via .NET 23.9، 23.10، 23.11، 23.12

يعمل Aspose.Words 23.9 على توسيع خيارات العرض ومحاكاة عرض ملف التعريف وخيارات حفظ markdown.

يعمل Aspose.Words 23.10 على تحسين العرض وتوسيع خيارات تحميل المستندات وحفظها، ويسمح للمستخدمين بدمج المستندات بطرق جديدة.

يعمل Aspose.Words 23.11 على تحسين العمل من خلال المراجعات وتنسيق XLSX والخطوط على وسيلة إيضاح المخطط مع خيارات إضافية.

يقدم Aspose.Words 23.12 خصائص وتعدادات جديدة للعمل مع مستندات PDF وOOXML، بالإضافة إلى دعم صور WebP.

### التقديم والطباعة

#### تخصيص عناوين المحاور في مخططات DrawML <sup>23.9</sup>

تم تقديم القدرة على تخصيص عناوين المحاور في مخططات DrawML من خلال تطبيق خاصية [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) و[title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) من الفئة العامة الجديدة.

####  تحديد الموضع الرأسي للخطوط ضمن الفقرة <sup>23.9</sup>

أصبح من الممكن الآن تحديد الموضع الرأسي للخطوط داخل الفقرة باستخدام خاصية [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) العامة الجديدة وتعداد [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) الجديد.

#### التحكم في الألوان الأمامية <sup>23.10</sup>

تمت إضافة القدرة على استرداد اللون الأمامي بدون معدلات إلى فئتي [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) و[Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) عبر خاصية **BaseForeColor**.

#### توسيع وظائف الرسوم البيانية <sup>23.10</sup>

تم توسيع وظائف فئات [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/) و[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) و[ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) بطرق وخصائص جديدة.

#### ضبط الصورة وملاءمتها تلقائيًا في الشكل <sup>23.10</sup>

تم توفير طريقة بسيطة لضبط الصورة وملاءمتها تلقائيًا داخل شكل معين من خلال طريقة [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) الجديدة.

#### تنسيق الخط الافتراضي لإدخالات وسيلة إيضاح مخطط DrawML <sup>23.11</sup>

تمت إضافة القدرة على تحديد تنسيق الخط الافتراضي لإدخالات وسيلة الإيضاح لمخططات DrawML عبر خاصية [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). تسهل هذه الميزة مظهرًا أكثر انسيابية وتناسقًا لعناصر المخطط، مما يؤدي إلى تحسين جماليات المستند بشكل عام.

#### حدد تخطيط الصفحة عند فتح ملف PDF في Reader <sup>23.12</sup>

تمت إضافة القدرة على تحديد تخطيط الصفحة المراد استخدامه عند فتح مستند في قارئ PDF من خلال إدخال خاصية [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) جديدة إلى فئة [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) وإدخال تعداد [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) جديد.

### تحميل وحفظ المستندات

#### تحديد اسم مجلد لإنشاء معرفات URI للصورة في Markdown <sup>23.9</sup>

تم توسيع فئة [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) من خلال تضمين خاصية [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/)، والتي تسمح بتحديد اسم المجلد المستخدم لإنشاء معرفات URI للصور المكتوبة في مستند Markdown.

#### تقليل حجم إخراج PDF <sup>23.10</sup>

تم تنفيذ تحسينات مختلفة لعرض PDF لتقليل حجم الإخراج عند استخدام إعدادات [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### التعرف على الارتباطات التشعبية عند تحميل مستندات TXT <sup>23.10</sup>

تم تنفيذ ميزة التعرف على الارتباطات التشعبية عند تحميل مستندات TXT عن طريق إضافة خاصية [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) جديدة.

### آخر

- تم تنفيذ محاكاة عرض ملف التعريف لتحديد حجم التنقيط، خصيصًا لعرض قلم WMF وعرض قلم التجميل EMF. ولتحقيق ذلك، تم استبدال خاصية **ScaleWmfFontsToMetafileSize** بخاصية [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) وتمت إضافة خاصية [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23.9</sup>
- تم تقديم طريقة مبسطة لإدراج مستند في مستند آخر في موضع المؤشر الحالي باستخدام طريقة [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- تمت إضافة إمكانية الوصول إلى خصائص النمط وتعديلها من خلال تقديم خاصية [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) الجديدة. <sup>23.10</sup>
- تمت إضافة معلمة نوع عامة إلى أساليب فئة [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23.10</sup>
- تم توفير القدرة على كتابة جميع أقسام المستند على نفس ورقة عمل XLSX من خلال نوع التعداد [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) الجديد وخاصية [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) الجديدة. <sup>23.11</sup>
* تم تنفيذ طريقة للتحكم في كيفية استخدام امتدادات تنسيق ZIP64 لمستندات OOXML من خلال خاصية Zip64Mode الجديدة لفئة `OoxmlSaveOptions` وتعداد Zip64Mode الجديد. <sup>23.12</sup>
* تم تقديم الدعم لصورة WebP. يرجى ملاحظة أن هذه الميزة متاحة فقط لإصدارات .NetStandart و.NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Python via .NET 23.5، 23.6، 23.7، 23.8

يعمل Aspose.Words 23.5 على تحسين القدرة على العمل مع بيانات سلسلة المخططات والقدرة على العمل مع مستندات ODT، بالإضافة إلى تحسين الرؤوس والتذييلات والتفاف النص الخاص بها.

يعمل Aspose.Words 23.6 على توسيع خيارات العرض وإضافة تنسيق تصدير جديد وتحسين تقارير LINQ وأدوات LowCode.

يعمل Aspose.Words 23.7 على تحسين قدرات إعداد التقارير وإضافة تنسيق تصدير جديد وإدخال تغييرات على العمل مع الجداول والتوقيعات الرقمية.

يعمل Aspose.Words 23.8 على توسيع إمكانيات التنسيقات المختلفة وتحسين العرض وإضافة خيارات جديدة للعمل مع الحقول

### التنسيقات المدعومة

* بدءًا من الإصدار 23.6، أصبح من الممكن حفظ مستند بتنسيق XLSX. الآن يمكنك تحويل مستنداتك إلى تنسيق Excel. <sup>23.6</sup>

* بدءًا من الإصدار 23.7، أصبح من الممكن حفظ صفحة أو شكل مستند بتنسيق EPS. <sup>23.7</sup>

### ميزات التنسيق الجديدة

- تم تقديم وظيفة إنشاء جدول المحتويات (TOC) لمستندات MOBI تلقائيًا. <sup>23.8</sup>
- تم توسيع مُنشئ [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) باستخدام [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- تم تنفيذ تشكيل النص الرأسي لملفات التعريف EMF. <sup>23.8</sup>

### استدعاء

#### الحصول على بيانات سلسلة المخططات وتعديلها <sup>23.5</sup>

تم توفير ميزة الحصول على بيانات سلسلة المخططات وتعديلها عن طريق إضافة:

- فئات جديدة: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/)، [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/)، [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/)، [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/)، [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/)، [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- أنواع التعداد الجديدة: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/)، [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### دعم الطباعة المتقدمة <sup>23.6</sup>

تمت إضافة دعم الطباعة المتقدمة في عرض WMF وEMF وEMF+.

#### المحتوى الملون على الصفحة <sup>23.6</sup>

تمت إضافة الخاصية العامة [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/)، التي تشير إلى ما إذا كانت الصفحة ملونة أم لا.

#### تنسيق تسميات بيانات المخطط <sup>23.6</sup>

تم تنفيذ القدرة على تعيين تنسيق التعبئة والحد ووسيلة الشرح لتسميات بيانات المخطط.

### Mail Merge وإعداد التقارير

#### إدراج HTML ديناميكي لمحرك تقارير LINQ <sup>23.6</sup>

تمت إضافة طريقة جديدة لإدراج HTML الديناميكي لمحرك التقارير LINQ.

#### دعم علامات Mustache <sup>23.7</sup>

أصبحت علامات Mustache مدعومة الآن في طريقتي [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) و[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### تحديد حجم الصور المعروضة <sup>23.8</sup>

تم تقديم ملكية عامة جديدة [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) لتحديد حجم الصور المعروضة بالبكسل.

#### الحفاظ على المسافات البيضاء لقيم سلسلة JSON – LINQ <sup>23.8</sup>

تمت إضافة خيار إلى LINQ Reporting Engine للحفاظ على المسافات البيضاء لقيم سلسلة JSON.

### LowCode <sup>23.6</sup>

تمت إضافة طرق LowCode جديدة تهدف إلى دمج أنواع مختلفة من المستندات في مستند إخراج واحد.

### آخر

- تم تنفيذ دعم التفاف النص في الرؤوس والتذييلات. <sup>23.5</sup>
- تمت إضافة القدرة على إزالة التوقيعات الرقمية من مستندات ODT من خلال طريقة [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- تمت إضافة الملكية العامة [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) للحصول على النص الأساسي والياقوتي للدليل الصوتي [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23.5</sup>
- تمت إضافة القدرة على استرداد قيمة التوقيع الرقمي من مستند موقع رقميًا كمصفوفة بايت عن طريق تقديم خاصية [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) جديدة. <sup>23.7</sup>
- تم توسيع فئتي [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) بأعضاء عامين جدد - [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/)، و[Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/)، و[Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/)، و[Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

اعرف المزيد عن [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.7](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Python via .NET 23.1، 23.2، 23.3، 23.4

يعمل Aspose.Words 23.1 على تحسين أداء محاكاة العمليات النقطية، فضلاً عن تحسين جودة تصدير المستندات وعرضها.

يقدم Aspose.Words 23.2 حفظ المستندات بتنسيق MOBI، ويحسن عرض المخطط، ويجري تغييرات ملحوظة على تفاصيل مظهر المستند.

يعمل Aspose.Words 23.3 على تحسين استيراد المستندات وحفظها بخصائص جديدة، كما يعمل أيضًا على تحسين جودة العمل مع لون الخلفية والمقدمة والتدرج الشعاعي.

يعمل Aspose.Words 23.4 على تحسين حساب بعض المعلمات وموضع الجدول والنص المحيط.

### تحسينات في الأداء

#### مضاهاة العمليات النقطية <sup>23.1</sup>

تم تحسين أداء وجودة محاكاة العمليات النقطية مع ملفات التعريف بشكل ملحوظ.

### التنسيقات المدعومة

#### تصدير إلى MOBI <sup>23.2</sup>

بدءًا من الإصدار 23.2، من الممكن حفظ مستند بتنسيق MOBI (يسمى أيضًا PRC، AZW - تنسيق ملف الكتاب الإلكتروني الخاص بـ Amazon Kindle). الآن لا يمكنك تحميل مستندات MOBI فحسب، بل يمكنك أيضًا تصدير ملفاتك إلى تنسيق MOBI.

### استدعاء

#### العمل مع ألوان موضوع التظليل <sup>23.1</sup>

تم تنفيذ القدرة على العمل مع ألوان سمات التظليل.

#### دعم معامل R-squared في مخططات DML <sup>23.1</sup>

دعم معامل R-squared في تسميات خط اتجاه مخطط DML عند إضافة العرض.

#### تحسينات عرض الرسم البياني <sup>23.2</sup>

منذ 23.2 تم تحسين عرض المخطط بشكل ملحوظ.

#### التحكم في لون الخلفية والمقدمة <sup>23.3</sup>

تم توسيع فئة [Fill](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/) بمجموعة من الخصائص العامة الجديدة المتعلقة بألوان الخلفية والمقدمة: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) و[back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/) و[fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) و[back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### التدرجات الشعاعية باستخدام `SkiaSharp` Native Shader <sup>23.3</sup>

تم تنفيذ عرض التدرجات الشعاعية باستخدام تظليل `SkiaSharp` الأصلي لـ .NET Standard.

#### المسافة بين الجدول والنص المحيط <sup>23.4</sup>

تمت إضافة القدرة على ضبط المسافة بين الجدول والنص المحيط من خلال تقديم خصائص جديدة لفئة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/)، و[distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/)، و[distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/)، و[distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### تحميل وحفظ المستندات

#### إنشاء `TOC` لمستندات AZW3 <sup>23.1</sup>

تمت إضافة القدرة على إنشاء `TOC` (جدول المحتويات) لمستندات AZW3 من خلال استخدام خاصية [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### تصدير عناصر القائمة إلى Markdown <sup>23.1</sup>

تم توفير طريقة للتحكم في تصدير عناصر القائمة إلى تنسيق Markdown عن طريق إضافة خاصية [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) إلى فئة [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### إخطارات تقدم حفظ المستندات <sup>23.3</sup>

تم تنفيذ إشعارات التقدم في حفظ تنسيقات MOBI وAZW3.

#### تعديل تباعد الجمل والكلمات <sup>23.3</sup>

تمت إضافة القدرة على تحديد ما إذا كان سيتم ضبط تباعد الجملة والكلمات تلقائيًا عند استيراد المستند عن طريق تقديم خاصية [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### آخر

- تمت إضافة إمكانية تحديد تعديل تباعد الأحرف للمستند من خلال تطبيق خاصية [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- تم توفير طريقة توجيه Aspose.Words بشأن تضمين مربعات النص والحواشي السفلية والتعليقات الختامية في إحصائيات عدد الكلمات عن طريق إضافة خاصية [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- تم تقديم خيار جديد لنمط المستند، والذي يسمح بتحديد ما إذا كان النمط سيتم إعادة تعريفه تلقائيًا بناءً على القيمة المناسبة، من خلال خاصية [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- تمت إضافة القدرة على تحديد ما إذا كان [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) هو تشغيل دليل صوتي باستخدام خاصية [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- تم تنفيذ طريقة بسيطة للعمل مع سلاسل ومحاور المخططات المجمعة من خلال تقديم فئة [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) وإضافة خاصية [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- تمت إضافة خصائص عامة جديدة مرتبطة بالموضع النسبي للشكل وحجمه إلى فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- تم تحسين دقة وأداء حساب سطوع الألوان لدقة ألوان النص التلقائية وفقًا لأحدث إصدارات Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Python via .NET 22.9، 22.10، 22.11، 22.12

يعمل Aspose.Words 22.9 على توسيع خيارات تحميل المستندات وحفظها وتحسين التفاعل مع بعض الخيارات الأخرى.

يعمل Aspose.Words 22.10 على تحسين خيارات البحث والاستبدال، وتعزيز كائنات OLE، وتوسيع وظائف القائمة.

يعمل Aspose.Words 22.11 على توسيع وظائفه بخيارات جديدة للعمل بشكل أكثر ملاءمة مع الكائنات المألوفة بالفعل: OLE وعلامات المستندات المنظمة.

يعمل Aspose.Words 22.12 على تحسين إمكانيات العرض ويقدم خيارات للعمل مع الهوامش عند تحميل/حفظ مستند.

### تحسينات الأداء <sup>22.12</sup>

تم تقديم تحسين يقلل بشكل كبير من عمق تداخل حالة الرسومات عند العرض إلى PDF للحفاظ على التوافق مع المواصفات.

### التقديم والطباعة

#### خصائص عرض الحدود الجديدة <sup>22.12</sup>

تم تقديم خصائص عامة جديدة [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) و[tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/).

#### صيغة خط الاتجاه الخطي لعرض الرسم ML <sup>22.12</sup>

تم تنفيذ عرض صيغة خط الاتجاه الخطي لمخططات DrawML.

#### إعدادات الخط الاحتياطية لخطوط Google Noto <sup>22.12</sup>

تم تحديث إعدادات الخط الاحتياطي المحددة مسبقًا لخطوط Google Noto.

### تحميل وحفظ المستندات

#### تخزين مؤقت لأشكال الرأس أو التذييل لتقليل حجم ملف PDF <sup>22.9</sup>

تم تنفيذ القدرة على تخزين أشكال الرأس/التذييل مؤقتًا لتقليل حجم ملف PDF الناتج عن طريق إضافة خاصية **CacheHeaderFooterShapes** جديدة.

#### كشف الترقيم التلقائي عند تحميل مستند <sup>22.9</sup>

تم تنفيذ القدرة على تحديد خاصية [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) عند تحميل النص من خلال فئة [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) الممتدة.

#### تحديد نوع هامش معين <sup>22.12</sup>

تم تنفيذ القدرة على تحديد نوع **Margin** معين للقسم المحدد.

### بحث ومقارنة <sup>22.10</sup>

تم تنفيذ القدرة على تجاهل [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) عند خيارات البحث والاستبدال عن طريق إضافة خاصية [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) جديدة إلى فئة [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### آخر

- تمت إضافة ميزة جديدة للحصول على FieldEQ كـ OfficeMath. <sup>22.9</sup>
- تم السماح بإنشاء علامات مستند منظمة من نوع Group على مستوى الصف. <sup>22.9</sup>
- يتم الآن التعامل مع كائنات وعناصر تحكم OLE كصور ملف تعريف عند تحويل مستند إلى HTML. <sup>22.10</sup>
- ميزة جديدة للتحقق من إنشاء قائمة معينة من نفس القالب حيث تمت إضافة القائمة المقارنة عن طريق إدخال طريقة **HasSameTemplate** جديدة في فئة [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22.10</sup>
- تمت إضافة القدرة على إنشاء علامات مستند منظمة جديدة من نوع [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/). <sup>22.11</sup>
- تم تقديم خاصية **EmbedAttachments** جديدة تسمح للمستخدمين بتضمين مرفقات OLE من مستند مصدر في مستند PDF الناتج. <sup>22.11</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 22.10](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 22.11](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ Python via .NET 22.12](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## أنظر أيضا

{{% alert color="primary" %}}

تحتوي هذه الصفحة على آخر أخبار الإصدار خلال العامين الماضيين. للحصول على تفاصيل حول الإصدارات السابقة، راجع صفحات [ملاحظات الإصدار'](/words/python-net/release-notes/) في الأقسام ذات الصلة.

{{% /alert %}}