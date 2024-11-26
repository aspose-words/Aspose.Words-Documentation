---
title: ما الجديد
second_title: Aspose.Words ل C++
articleTitle: ما الجديد في Aspose.Words ل C++
linktitle: ما الجديد في Aspose.Words ل C++
type: docs
description: "Aspose.Words ل C++ يوسع ويعزز يوميا. في هذه الصفحة، يمكنك التعرف على الميزات الضخمة والأكثر إثارة للاهتمام للمنتج."
weight: 2
url: /ar/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

تصف هذه الصفحة الميزات الجديدة الأكثر إثارة للاهتمام Aspose.Words التي تم تقديمها في الإصدارات الأخيرة.

## Aspose.Words ل C++ 24.9

Aspose.Words 24.9 يقدم group shape الإدراج و StructuredDocumentTag الإدراج عبر DocumentBuilder، ويعزز عرض الرسم البياني الشعاعي مع التخرج، ويحسن التوقيعات الرقمية مع XAdES-EPES الدعم، ويضيف Markdown الاعتراف التسطير، ويوفر الوصول إلى فواصل حاشية سفلية / حاشية ختامية.

### التقديم والطباعة

#### التخرج على المخططات الشعاعية

تم تنفيذ عرض التخرج على الرسوم البيانية الشعاعية.

### تحويل وتحميل وحفظ المستندات

#### تسطير التنسيق عند تحميل Markdown الملفات

تم دمج خيار التعرف على تنسيق التسطير عند تحميل Markdown المستندات عن طريق إضافة خاصية عامة جديدة [ImportUnderlineFormatting]().

### التوقيعات الرقمية

#### توقيع الوثائق مع XAdES-EPES

القدرة على توقيع الوثائق مع XAdES-EPES المستوى XML - DSig تم إدخال التوقيعات بإضافة ملكية عامة جديدة [XmlDsigLevel]() وتعداد عام جديد [XmlDsigLevel]().

### أخرى

* تمت إضافة طريقة عامة جديدة [InsertGroupShape]() إلى group shapes.
* تمت إضافة طريقة عامة جديدة [InsertStructuredDocumentTag]() لإدراج **StructuredDocumentTags** في مستند.
* تم توفير وصول الجمهور إلى فواصل الحاشية السفلية/التعليقات الختامية عن طريق إضافة عدد قليل من الفئات والخصائص العامة.

{{% alert color="primary" %}}

تعرف على المزيد حول [Aspose.Words لـ C++ 24.9 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words لـ C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 يوسع خيارات التجميعات، ويحسن قدرات العرض، ويوسع بعض الخيارات الأخرى.

Aspose.Words 24.6 يحسن خيارات العرض، ويعزز وظائف البحث والمقارنة، ويوسع العديد من الميزات الأخرى.

Aspose.Words 24.7 يغير طريقة عملك مع اكتف، ويوسع قدرات العرض، وكذلك التصدير إلى Markdown و XLSX التنسيقات.

### التنسيقات المدعومة

بدءا من الإصدار 24.7، يتم دعم التصدير إلى PDF/UA-2 لضمان إمكانية الوصول للمستخدمين ذوي الإعاقة.

### التقديم والطباعة

#### التغييرات في الرسوم البيانية والأشكال والرسم <sup>24.5</sup>

- وقد تم تنفيذ آثار دراوينغمل تقديم ل SVG الرسومات، وتوسيع وظائف السابقة تقتصر على الصور.
- تم تقديم الدعم لإنشاء مخططات التحرير والسرد وتعديل الخصائص مثل عرض الفجوة والتداخل ومقياس الفقاعة داخل مجموعات السلسلة عن طريق إضافة الفئتين **ChartSeriesGroup** و **ChartSeriesGroupCollection** والخاصية **SeriesGroups**.
- تم تنفيذ وظيفة معالجة تأثير SoftEdge للأشكال عن طريق إضافة فئة **SoftEdgeFormat**.
- وقد تم تنفيذ القدرة على تعديل قيم ضبط الأشكال عن طريق إضافة **AdjustmentCollection** و **Adjustment** الطبقات العامة و **Adjustments** الممتلكات.

#### التغييرات في الرسوم البيانية والأشكال والرسم <sup>24.6</sup>

- تم تعزيز قدرات الرسم البياني. يمكنك الآن إنشاء مجموعة متنوعة من المخططات، بما في ذلك*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* الرسوم البيانية، *Box & Whisker* الرسوم البيانية، *Waterfalls*، و *Funnels*. هذا يسمح لك لتصور البيانات الخاصة بك بطريقة أكثر تنوعا وغنية بالمعلومات.
- تم تحسين التحكم في اللون لتنسيق الظل. يمكنك الحصول على تحكم أكثر دقة في مظهر مستنداتك عن طريق الوصول إلى ألوان الظل.
- تم تحسين تعزيز الأداء لتقديم الخلفية. يمكنك تسريع عرض الخلفيات التي تحتوي على عناصر صغيرة بشكل كبير بفضل تقنية التبليط الأصلية.
- تمت إضافة تدرجات واقعية للأشكال. يمكنك الآن إنشاء DML الأشكال مع التدرجات غير الخطية، ومحاكاة النمط البصري من Microsoft Word للحصول على نظرة أكثر مصقول.

#### تخصيص تسمية بيانات الرسم البياني <sup>24.7</sup>

تمت إضافة القدرة على تخصيص تسميات بيانات المخطط مثل **Orientation** و **Rotation**.

#### تصميم رقم مخصص لمستويات القائمة <sup>24.7</sup>

تمت إضافة أداة ضبط للممتلكات العامة [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). يمكنك الآن تحديد نمط رقم مخصص لمستويات القائمة.

#### التغييرات في العمل مع اكتف <sup>24.7</sup>

- يمكن الآن تعديل خصائص الكائنات اكتف، مما يتيح لك المزيد من السيطرة على سلوكهم.
- تمت إضافة القدرة على تعديل قيمة زر الاختيار أكتيفكس التحكم لتمكين التفاعل الديناميكي.
- تمت إضافة القدرة على تبديل مربع اختيار أكتيفكس إلى "محدد" أو "غير محدد".

### تحميل وحفظ المستندات

#### تصدير الروابط إلى تنسيق Markdown <sup>24.7</sup>

تمت إضافة القدرة على التحكم في تصدير الروابط بتنسيق Markdown من خلال تنفيذ خاصية [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### بحث ومقارنة

#### خيارات المقارنة المتقدمة <sup>24.6</sup>

تمت إضافة القدرة على تبسيط مهام سير عمل تحليل البيانات مع تحسين وظائف المقارنة. يتضمن ذلك خيارا جديدا **IgnoreStoreItemId** وواجهة معاد تصميمها للمقارنات المتقدمة.

### أخرى

- تم تنفيذ وظيفة حذف الصفحات الفارغة من المستند عن طريق إضافة طريقة [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- تم توفير القدرة على التحقق من وجود وحدات ماكرو VBA دون تحميل مستند عن طريق إضافة خاصية **HasMacros**. <sup>24.5</sup>
- تمت إضافة خاصية **DateTimeUtc** جديدة-وهذا يوفر طابعا زمنيا أكثر دقة للتعليقات، مما يحسن التنظيم وإمكانية التتبع. <sup>24.6</sup>
- يتم الآن اكتشاف تنسيق التاريخ والوقت تلقائيا للتصدير السلس إلى تنسيق XLSX. <sup>24.7</sup>
- تمت إضافة الملكية العامة [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/)، والتي تتيح لك التحقق مما إذا كان مشروع VBA محميا أم لا. <sup>24.7</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [Aspose.Words ل C++ 24.5 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

تعرف على المزيد حول [Aspose.Words لـ C++ 24.6 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

تعرف على المزيد حول [Aspose.Words لـ C++ 24.7 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words ل C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 يحسن تجربة حول إدارة الألوان السكتة الدماغية، ويعزز OLE الكائنات، وكذلك يقدم مصادر ببليوغرافيا جديدة العامة API.

Aspose.Words 24.2 المخططات الموسعة API وإدارة النمط. قدم هذا الإصدار من Aspose.Words أيضا القدرة على تحديد SvgSaveOptions أثناء العرض، وتحكم أكثر مرونة في تحميل Markdown الملفات، والعمل مع النص المرجعي للحواشي السفلية والحواشي الختامية.

Aspose.Words 24.3 يقدم مضاهاة العمليات النقطية الثنائية لـ WMF ملفات التعريف ويستمر أيضا في توسيع المخططات API.

Aspose.Words 24.4 يعزز بعض خيارات العرض، وكذلك يحسن العمل مع التوقيعات الرقمية.

### التقديم والطباعة

#### التحكم في لون السكتة الدماغية <sup>24.1</sup>

تم تمديد فئة [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) بمجموعة من الخصائص العامة الجديدة المتعلقة بإدارة ألوان الحد: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) و [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/) و [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) و [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### رسممل الرسوم البيانية API تمديد <sup>24.2 / 24.3 / 24.4</sup>

يستمر توسيع **DrawingML Charts API**.

#### تضمين الخطوط المعلنة في @font-face قواعد <sup>24.4</sup>

تمت إضافة إمكانية تضمين الخطوط المعلنة في قواعد @font-face في تعريفات خطوط المستند الناتج عن طريق إضافة خاصية [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) جديدة.

#### العمل مع تنسيق التوهج والانعكاس <sup>24.4</sup>

تم تنفيذ القدرة على العمل مع تنسيق التوهج والانعكاس لكائن رسم.

### تحميل وحفظ المستندات

#### حدد SvgSaveOptions أثناء التقديم <sup>24.2</sup>

تمت إضافة القدرة على تحديد [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) أثناء التقديم باستخدام [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) و [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) طرق.

#### الحفاظ على خطوط فارغة عند تحميل Markdown الملفات <sup>24.2</sup>

تمت إضافة القدرة على الحفاظ على الأسطر الفارغة عند تحميل Markdown الملفات.

### أخرى

- تم تقديم القدرة على تعديل نص عنصر التحكم `TextBox` OLE عن طريق إضافة خاصية **Text** جديدة إلى فئة **TextBoxControl** الجديدة. <sup>24.1</sup>
- تم تنفيذ مصادر الببليوغرافيا العامة API من خلال إضافة مساحة اسم جديدة [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) مع فئاتها وتعداداتها الجديدة، ومن خلال إضافة خاصية [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) جديدة إلى فئة [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- تمت إضافة خصائص عامة جديدة [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/) و [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) و [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) لإدارة الأنماط المحسنة إلى فئة [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- تم تحسين وظيفة استرداد نص العلامة المرجعية الفعلي للحواشي السفلية والتعليقات الختامية باستخدام خاصية [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) وطريقة [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- تم تنفيذ محاكاة العمليات النقطية الثنائية لـ WMF ملفات التعريف. <sup>24.3</sup>
- تم تمكين القدرة على تحديد خيارات التوقيع للمستندات ضمن **SaveOptions** عن طريق إضافة فئة **DigitalSignatureDetails** جديدة مع أعضاء عموميين جدد، بالإضافة إلى إضافة خصائص جديدة إلى فئات [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) و [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) و [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [Aspose.Words ل C++ 24.1 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

تعرف على المزيد حول [Aspose.Words لـ C++ 24.2 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

تعرف على المزيد حول [Aspose.Words ل C++ 24.3 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

تعرف على المزيد حول [Aspose.Words لـ C++ 24.4 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words ل C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 يوسع خيارات العرض، ومحاكاة عرض ملف التعريف، و markdown خيارات الحفظ.

Aspose.Words 23.10 يحسن التقديم، ويوسع خيارات تحميل المستندات وحفظها، ويسمح للمستخدمين بدمج المستندات بطرق جديدة.

Aspose.Words 23.11 يعزز العمل مع المراجعات، XLSX التنسيق والخطوط على أسطورة الرسم البياني مع خيارات إضافية.

Aspose.Words 23.12 يقدم خصائص وتعدادات جديدة للعمل مع PDF و OOXML المستندات، بالإضافة إلى دعم WebP الصور.

### التقديم والطباعة

#### تخصيص عناوين المحاور في مخططات الرسم <sup>23.9</sup>

تم تقديم القدرة على تخصيص عناوين المحور في مخططات الرسم من خلال تنفيذ فئة عامة جديدة **ChartAxisTitle** و [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) خاصية.

#### تحديد الموضع الرأسي للخطوط داخل فقرة <sup>23.9</sup>

أصبح من الممكن الآن تحديد الموضع الرأسي للخطوط داخل فقرة باستخدام خاصية [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) العامة الجديدة والتعداد [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) الجديد.

#### التحكم في لون المقدمة <sup>23.10</sup>

تمت إضافة القدرة على استرداد لون المقدمة بدون معدلات إلى فئتي [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) و [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) عبر خاصية **BaseForeColor**.

#### توسيع وظائف الرسوم البيانية <sup>23.10</sup>

تم توسيع وظائف فئات [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/) و [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) و [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) بطرق وخصائص جديدة.

#### ضبط تلقائيا وتناسب صورة في شكل <sup>23.10</sup>

تم توفير طريقة بسيطة لضبط وتناسب صورة داخل شكل معين تلقائيا من خلال طريقة [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) الجديدة.

#### تنسيق الخط الافتراضي لإدخالات أسطورة الرسم البياني <sup>23.11</sup>

تمت إضافة القدرة على تحديد تنسيق الخط الافتراضي لإدخالات وسيلة الإيضاح لمخططات الرسم عبر خاصية [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). تسهل هذه الميزة مظهرا أكثر انسيابية واتساقا لعناصر المخطط، مما يحسن جماليات المستندات بشكل عام.

#### حدد تخطيط الصفحة عند الفتح PDF في القارئ <sup>23.12</sup>

تمت إضافة إمكانية تحديد تخطيط الصفحة المراد استخدامه عند فتح مستند في قارئ PDF من خلال إدخال خاصية **PageLayout** جديدة إلى فئة [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) وإدخال تعداد **PdfPageLayout** جديد.

### تحميل وحفظ المستندات

#### تحديد اسم مجلد لإنشاء صورة URIs في Markdown <sup>23.9</sup>

تم توسيع فئة [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) من خلال تضمين خاصية [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/)، والتي تسمح بتحديد اسم المجلد المستخدم لإنشاء صورة URIs مكتوبة في مستند Markdown.

#### تقليل حجم الإخراج PDF <sup>23.10</sup>

تم تنفيذ تحسينات مختلفة PDF للتقديم لتقليل حجم الإخراج عند استخدام إعدادات [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### التعرف على الارتباطات التشعبية عند تحميل TXT المستندات <sup>23.10</sup>

تم تنفيذ ميزة التعرف على الارتباطات التشعبية عند تحميل TXT المستندات عن طريق إضافة خاصية [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) جديدة.

### أخرى

- تم تنفيذ محاكاة عرض ملف التعريف لتحديد حجم التنقيط، خصيصا لـ WMF عرض القلم و EMF عرض القلم التجميلي. لتحقيق ذلك، تم استبدال خاصية **ScaleWmfFontsToMetafileSize** بخاصية [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) وأضيفت خاصية [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* تم تقديم طريقة مبسطة لإدراج مستند في مستند آخر في موضع المؤشر الحالي باستخدام طريقة [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* تمت إضافة القدرة على الوصول إلى خصائص النمط وتعديلها من خلال إدخال خاصية [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) الجديدة. <sup>23.10</sup>
* تمت إضافة معلمة نوع عام إلى طرق فئة [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* تم تنفيذ طريقة للتحكم في وقت قبول/رفض مراجعة معينة أو عدم تنفيذها باستخدام طرق [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) و [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). يمنح هذا التحسين المستخدمين تحكما أدق في عملية المراجعة. <sup>23.11</sup>
* تم توفير القدرة على كتابة جميع أقسام المستند على نفس ورقة العمل XLSX من خلال نوع التعداد الجديد [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) وخاصية [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) الجديدة. <sup>23.11</sup>
* تم تنفيذ طريقة للتحكم في كيفية استخدام ملحقات التنسيق ZIP64 للمستندات OOXML من خلال خاصية زيب 64 مود الجديدة لفئة `OoxmlSaveOptions` وتعداد زيب 64 مود الجديد. <sup>23.12</sup>
* تم تقديم الدعم ل WebP صورة. يرجى ملاحظة أن هذه الميزة متاحة فقط ل .NetStandart و .NET6 + الإصدارات. <sup>23.12</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [Aspose.Words ل C++ 23.9 ملاحظات الإصدار](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
تعرف على المزيد حول [Aspose.Words ل C++ 23.10 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
تعرف على المزيد حول [Aspose.Words ل C++ 23.11 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
تعرف على المزيد حول [Aspose.Words ل C++ 23.12 ملاحظات الإصدار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## أنظر أيضا

{{% alert color="primary" %}}

تحتوي هذه الصفحة على آخر أخبار الإصدار للسنوات الماضية 2. للحصول على تفاصيل حول الإصدارات السابقة، راجع [ملاحظات الإصدار](/words/cpp/release-notes/) الصفحات في الأقسام ذات الصلة.

{{% /alert %}}
