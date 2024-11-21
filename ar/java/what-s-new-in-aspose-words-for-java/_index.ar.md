---
title: ما الجديد
second_title: Aspose.Words for Java
articleTitle: ما الجديد في Aspose.Words for Java
linktitle: ما الجديد في Aspose.Words for Java
type: docs
description: "Aspose.Words for Java يتوسع ويعزز يوميا. في هذه الصفحة، يمكنك أن تتعلم عن الملامح الضخمة والمثيرة للاهتمام للمنتج"
weight: 2
url: /ar/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

هذه الصفحة تصف أكثر الأشياء إثارة للاهتمام Aspose.Words السمات التي أدخلت في الإطلاقات الأخيرة.

## Aspose.Words for Java 24.9, 24.10

يقدم Aspose.Words 24.9 إدراج شكل المجموعة وإدراج StructuredDocumentTag عبر DocumentBuilder، ويعزز عرض المخطط الشعاعي باستخدام التدرجات، ويحسن التوقيعات الرقمية مع دعم XAdES-EPES، ويضيف التعرف على خط Markdown، ويوفر الوصول إلى فواصل الحواشي السفلية/الحواشي النهائية.

يقدم Aspose.Words 24.10 دعمًا محسّنًا لعناصر التحكم ActiveX مع إنشاء CommandButton، والتحكم الجديد في رؤية الشكل، والقدرة على تجميع الأشكال، وتحسين تصدير Markdown للجداول، وتنسيق المخططات للمخططات الدائرية والدائرية، ومعالجة أفضل لترميز Big5، ودعم الخطوط التايوانية القديمة.

### العرض والطباعة

#### التدرجات على المخططات الشعاعية <sup>24.9</sup>

تم تنفيذ عرض التدرجات على المخططات الشعاعية.

#### عناصر التحكم ActiveX CommandButton <sup>24.10</sup>

تم تقديم القدرة على إنشاء عناصر التحكم ActiveX CommandButton من خلال إضافة طريقة عامة جديدة [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) وفئة عامة جديدة [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### التحكم في رؤية الشكل <sup>24.10</sup>

تمت إضافة خاصية عامة جديدة [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) للتحكم في رؤية الأشكال.

#### التغييرات في المخططات الدائرية والمخططات الدائرية <sup>24.10</sup>

تمت إضافة العديد من الخصائص العامة الجديدة لتنسيق المخططات الدائرية والمخططات الدائرية.

### تحويل المستندات وتحميلها وحفظها

#### تنسيق التسطير عند تحميل ملفات Markdown <sup>24.9</sup>

تم دمج خيار التعرف على تنسيق التسطير عند تحميل مستندات Markdown من خلال إضافة خاصية عامة جديدة [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### تصدير الجداول بتنسيق HTML عند الحفظ بتنسيق Markdown <sup>24.10</sup>

تم تنفيذ خيار تصدير الجداول بتنسيق HTML عند حفظ المستندات بتنسيق Markdown من خلال إضافة خاصية عامة جديدة [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) وطريقة تعداد [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### التوقيعات الرقمية

#### توقيع المستندات باستخدام XAdES-EPES <sup>24.9</sup>

تم تقديم القدرة على توقيع المستندات باستخدام توقيعات XML-DSig على مستوى XAdES-EPES من خلال إضافة خاصية عامة جديدة [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) وتعداد عام جديد [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/).

### أخرى

* تمت إضافة طريقة عامة جديدة [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) إلى أشكال المجموعة. <sup>24.9</sup>
* تمت إضافة طريقة عامة جديدة [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) لإدراج **علامات StructuredDocumentTag** في مستند. <sup>24.9</sup>
* تم توفير الوصول العام إلى فواصل الحواشي السفلية/الحواشي النهائية من خلال إضافة بعض الفئات والخصائص العامة. <sup>24.9</sup>
* تم تقديم القدرة على تجميع الأشكال الفردية وتجميع الأشكال معًا وتجميع كل من الأشكال وتجميع الأشكال مباشرةً من خلال إضافة طريقة [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* تم تحسين معالجة ترميز Big5 لجداول cmap TrueType. <sup>24.10</sup>
* تم تحسين دعم الخطوط التايوانية القديمة. <sup>24.10</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.10](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Java 24.5, 24.6, 24.7, 24.8

يقوم Aspose.Words 24.5 بتوسيع خيارات التجميعات وتحسين قدرات العرض وتوسيع بعض الخيارات الأخرى.

يعمل Aspose.Words 24.6 على تحسين خيارات العرض، وتعزيز وظائف البحث والمقارنة، وتوسيع العديد من الميزات الأخرى.

يقوم Aspose.Words 24.7 بتغيير طريقة العمل مع ActiveX، ويوسع إمكانيات العرض، بالإضافة إلى التصدير إلى تنسيقات Markdown وXLSX.

يعمل Aspose.Words 24.8 على تحسين تخصيص المخططات من خلال التحكم الدقيق في تسميات المحاور، وتوسيع إدارة الخطوط، وتحسين التعامل مع بنية المستندات، وإضافة قدرات جديدة لتصدير HTML/XAML، ووظائف PDF، وتحويل المستندات، والتوقيعات الرقمية.

### التنسيقات المدعومة

بدءًا من الإصدار 24.7، يتم دعم التصدير إلى PDF/UA-2 لضمان إمكانية الوصول للمستخدمين ذوي الإعاقة.

### التقديم والطباعة

#### تغييرات في Charts وShapes وDrawingML <sup>24.5</sup>

- تم تنفيذ عرض تأثيرات DrawML لرسومات SVG، مما أدى إلى توسيع الوظائف السابقة التي كانت مقتصرة على الصور.
- تم تقديم الدعم لإنشاء مخططات مجمعة وضبط الخصائص مثل عرض الفجوة والتداخل ومقياس الفقاعات ضمن مجموعات السلسلة عن طريق إضافة [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.الكلمات/chartseriesgroup/) وفئات [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) وفئات [SeriesGroups](https://reference.aspose.com/ خاصية الكلمات/Java/com.aspose.words/chart/#getSeriesGroups).
- تم تنفيذ وظيفة معالجة تأثير SoftEdge للأشكال عن طريق إضافة فئة [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- تم تنفيذ القدرة على تعديل قيم ضبط الأشكال عن طريق إضافة [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) و[Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) الفئات العامة و[Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments) خاصية getAdjustments.

#### التغييرات في المخططات والأشكال والرسم <sup>24.6</sup>

* تم تعزيز قدرات الرسم البياني. يمكنك الآن إنشاء مجموعة واسعة من المخططات، بما في ذلك *Treemaps*، و*Sunbursts*، و*Histograms*، و*Pareto*، و*Box & Whisker*، و*Waterfalls*، و*Funnels*. يتيح لك ذلك تصور بياناتك بطريقة أكثر تنوعًا وغنية بالمعلومات.
* تم تحسين التحكم في الألوان لتنسيق الظل. يمكنك الحصول على تحكم أكثر دقة في مظهر مستنداتك عن طريق الوصول إلى ألوان الظل.
* تم تحسين تعزيز الأداء لتقديم الخلفية. يمكنك تسريع عرض الخلفيات التي تحتوي على عناصر صغيرة بشكل كبير بفضل تقنية التبليط الأصلية.
* تمت إضافة تدرجات واقعية للأشكال. يمكنك الآن إنشاء أشكال DML بتدرجات غير خطية، لمحاكاة النمط المرئي لبرنامج Microsoft Word للحصول على مظهر أكثر صقلًا.

#### تخصيص تسمية بيانات المخطط <sup>24.7</sup>

تمت إضافة القدرة على تخصيص تسميات بيانات المخطط مثل **الاتجاه** و**التدوير**.

#### تصميم أرقام مخصص لمستويات القائمة <sup>24.7</sup>

تمت إضافة أداة ضبط للملكية العامة [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). يمكنك الآن تحديد نمط أرقام مخصص لمستويات القائمة.

#### التغييرات في العمل مع ActiveX <sup>24.7</sup>

* يمكن الآن تعديل خصائص كائنات ActiveX، مما يتيح لك المزيد من التحكم في سلوكها.
* تمت إضافة القدرة على تعديل قيمة زر التحكم ActiveX لتمكين التفاعل الديناميكي.
* تمت إضافة القدرة على تبديل خانة اختيار ActiveX إلى "محدد" أو "غير محدد".

#### التحكم في اتجاه وتدوير تسميات علامات محور المخطط <sup>24.8</sup>

تمت إضافة التحكم الدقيق في اتجاه وتدوير علامات محور الرسم البياني لتسهيل تخصيص الرسم البياني بشكل أكثر ملاءمة - تم توسيع فئة [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) بخصائص **Orientation** و **Rotation** الجديدة.

#### استبدال الشرطة المائلة للخلف بعلامة الين <sup>24.8</sup>

تم تحسين التصدير المتوافق مع HTML وXAML للخلف لاستبدال حرف الشرطة المائلة للخلف بعلامة الين. لتحقيق ذلك، تمت إضافة الخاصية **ReplaceBackslashWithYenSign** إلى فئتي [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) و [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### استخدام علامات SDT كأسماء لحقول النماذج عند التصدير إلى PDF <sup>24.8</sup>

تم تحسين تصدير PDF مع دعم استخدام علامات SDT كأسماء لحقول النماذج من خلال إضافة خاصية **UseSdtTagAsFormFieldName** جديدة إلى فئة [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### تحويل المستندات وتحميلها وحفظها

#### تصدير الروابط إلى تنسيق Markdown <sup>24.7</sup>

تمت إضافة القدرة على التحكم في تصدير الروابط بتنسيق Markdown من خلال تطبيق خاصية [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

تم تقديم فئة **LowCode.Converter** جديدة، مصممة لتوفير مجموعة من الطرق لتحويل أنواع المستندات المختلفة بسطر واحد من التعليمات البرمجية.

### بحث ومقارنة

#### خيارات المقارنة المتقدمة <sup>24.6</sup>
تمت إضافة القدرة على تبسيط سير عمل تحليل البيانات من خلال وظيفة المقارنة المحسنة. يتضمن ذلك خيار [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) الجديد وواجهة مُعاد تصميمها لإجراء مقارنات متقدمة.

### آخر

* تم تنفيذ وظيفة إزالة الصفحات الفارغة من المستند عن طريق إضافة طريقة [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* تم توفير القدرة على التحقق من وجود وحدات ماكرو VBA دون تحميل مستند عن طريق إضافة [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) ملكية. <sup>24.5</sup>
* أصبح الحفاظ على ترقيم المصدر أثناء إدراج مستند باستخدام محرك التقارير LINQ مدعومًا الآن. <sup>24.5</sup>
* تمت إضافة خاصية [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) جديدة - وهذا يوفر طابعًا زمنيًا أكثر دقة للتعليقات، مما يؤدي إلى تحسين التنظيم وإمكانية التتبع. <sup>24.6</sup>
* تم تحسين محرك تقارير LINQ. تم إجراء إزالة انتقائية للفقرات الفارغة وتعريف الرسائل المخصصة لأعضاء الكائنات المفقودة، مما يؤدي إلى تقارير أكثر وضوحًا وإفادة. <sup>24.6</sup>
* تم الآن اكتشاف تنسيق التاريخ والوقت تلقائيًا للتصدير السلس إلى تنسيق XLSX. <sup>24.7</sup>
* تمت إضافة الخاصية العامة [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)، والتي تسمح لك بالتحقق مما إذا كان مشروع VBA محميًا أم لا. <sup>24.7</sup>
* تم توسيع معلومات الخط بإضافة الخاصية **EmbeddingLicensingRights** إلى فئتي [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* تمت إضافة طريقة لمسح رؤوس وتذييلات الأقسام بكفاءة مع الحفاظ على العلامات المائية للعمل بشكل أكثر دقة مع بنية المستند. لمسح رؤوس وتذييلات الأقسام، استخدم الطريقة العامة الجديدة **ClearHeadersFooters**. <sup>24.8</sup>
* تم تمكين التوقيع الرقمي لمستندات XPS باستخدام [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) - تمت إضافة خاصية جديدة **DigitalSignatureDetails** لهذا الغرض. <sup>24.8</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words for Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words لـ Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24-1 تحسين الخبرة المكتسبة في مجال إدارة ألوان السكتة الدماغية، وتعزيز الأجسام الموجودة على سطح الأرض والإبلاغ عن الشبكة، فضلاً عن استحداث مصادر جديدة في الببليوغرافية API.

Aspose.Words 24-2 توسيع نطاق الرسوم البيانية API, إدارة النمط وخيارات (لينك) هذه النسخة Aspose.Words واستحدثت أيضا القدرة على تحديد خيارات الحماية أثناء تحميل الرقابة على نحو أكثر مرونة Markdown الملفات، والعمل مع النص المرجعي للحواشي والمذكرات الختامية.

Aspose.Words 24-3 يُقدّم قراء/كاتباً جديداً لمؤسسة " تي إف "، ويُعدّ عمليات القاذورات الثنائية لمصفوفات WMF. Aspose.Words 24-3 وتواصل أيضاً توسيع نطاق الرسوم البيانية API.

Aspose.Words 24.4 يعزز حفظ التنسيقات ، بعض خيارات العرض ، وكذلك يحسن العمل مع التواقيع الرقمية.

### تنسيقات مدعومة  <sup>24.4</sup>

أصبح تنسيق صورة WebP الحديث مدعومًا الآن في Aspose.Words. يمكنك الآن قراءة صور WebP وإدراجها في المستندات، بالإضافة إلى حفظ الصور بتنسيق WebP.

### التوجيه والطباعة

#### Stroke Color Control <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) تم توسيع الصف مع مجموعة من الممتلكات العامة الجديدة المتصلة بإدارة ألوان السكتة الدماغية: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) و [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) و [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Charts API التمديد <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** ولا يزال يجري توسيعه.

#### تضمين الخطوط المعلن عنها في قواعد @font-face  <sup>24.4</sup>

تمت إضافة القدرة على تضمين الخطوط المعلن عنها في قواعد @font-face في تعريفات الخطوط للمستند الناتج من خلال إضافة خاصية جديدة تسمى [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### العمل مع تنسيق اللمعان والانعكاس  <sup>24.4</sup>

تم تنفيذ القدرة على العمل مع تنسيق اللمعان والانعكاس لكائن الرسم.

### وثائق الشحن والإنقاذ

#### SvgSaveOptions During Rendering <sup>24.2</sup>

القدرة على تحديد [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) أضيفت أثناء الصنع باستخدام [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) و [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) طرق

#### Preserve Empty Lines when Loading Markdown الملفات <sup>24.2</sup>

القدرة على الحفاظ على الخطوط الفارغة عند التحميل Markdown أضيفت الملفات

#### قارئ جديد/كاتب <sup>24.3</sup>

قارئ/كاتب جديد Aspose.Words for .NET Standard, .NET تم تطوير 6 Aspose.Words for .NET 24-3 تقديم دعم إضافي لقراءة صور " TFF " مع " JPEG " وأنواع الضغط القديمة " JPEG "، وكذلك تحسين نوعية عمليات القراءة والكتابة.

### أخرى

* ♪ القدرة على تعديل نص `TextBox` أُدخلت مراقبة شاملة بإضافة مادة جديدة [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) الممتلكات الجديدة [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) الصف 24.1 <sup>24.1</sup>
* المصادر الببليوغرافية العامة API نُفِّذت بإضافة عدد قليل من البرامج الجديدة [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) و [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) الصفوف [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) الإحصاء، إضافة إلى إضافة [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) الممتلكات إلى [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الصف <sup>24.1</sup>
* API وقُدّم الحدّ من إمكانية الوصول إلى الأعضاء من النوع الذي يُستخدَم تركيبة نموذجية لمهندس الإبلاغ الخاص بشبكة الإنترنت. <sup>24.1</sup>
* الممتلكات العامة الجديدة [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), و [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) من أجل تحسين إدارة النمط أضيف إلى [Style](https://reference.aspose.com/words/net/aspose.words/style/) الصف <sup>24.2</sup>
* ♪ تم تعزيز القدرة على استرجاع النص الفعلي للعلامات المرجعية للحواشي والمذكرات النهائية مع [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) الممتلكات والممتلكات [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) طريقة <sup>24.2</sup>
* التوافق مع `Word 2016` مخططات `LINQ Reporting Engine` تم تمكينه <sup>24.2</sup>
* تم تنفيذ عمليات القاذورات الثنائية لمصفوفات الصندوق. <sup>24.3</sup>
* تمكين تعريف خيارات التوقيع للمستندات ضمن خيارات الحفظ من خلال إضافة فئة جديدة تسمى [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) بأعضاء عامة جديدة ، بالإضافة إلى إضافة خصائص جديدة إلى فئات [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) و [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) و [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).  <sup>24.4</sup>

{{% alert color="primary" %}}

تعلم المزيد [ملاحظات إصدار Aspose.Words لـ Java 24.1](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

تعلم المزيد [ملاحظات إصدار Aspose.Words لـ Java 24.2](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

تعلم المزيد [ملاحظات إصدار Aspose.Words لـ Java 24.3](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

تعلم المزيد [ملاحظات إصدار Aspose.Words لـ Java 24.4](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words for Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23-9 توسيع نطاق تقديم الخيارات، وإتاحة المجازي، markdown وفر الخيارات

Aspose.Words 23-10 يحسن إصدار الوثائق ويوسع نطاقها، ويتيح للمستعملين دمج الوثائق بطرق جديدة.

Aspose.Words 23-11 يعزز العمل بالتنقيحات، وشكل XLSX، ورسوم على أسطورة الخرائط بخيارات إضافية.

Aspose.Words 23-12 استحداث ممتلكات وإحصاءات جديدة للعمل مع وثائق قوات الدفاع الشعبي، ودعمها WebP صور، و تحديث مكتبة قلعة بونسي.

### التوجيه والطباعة

#### Customizing Axes Titles in DrawingML Charts <sup>23.9</sup>

استُحدثت القدرة على تكييف ألقاب المحور في مخططات رسم الخرائط بواسطة تطبيق طبقة عامة جديدة [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) و [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) ملكية

#### تحديد الموقف الافتراضي للفنون في فقرة <sup>23.9</sup>

ومن الممكن الآن تحديد الموقع الرأسي لللافتات في فقرة تستخدم الجمهور الجديد [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) الممتلكات الجديدة [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) العد

#### مراقبة العقيدات الأرضية <sup>23-10</sup>

لقد أضيفت القدرة على استرجاع لون الأرض من دون مُحدّد [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) و [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) الصفوف عبر **BaseForeColor** ملكية

#### توسيع نطاق أداء الرسوم البيانية <sup>23-10</sup>

وظيفة [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), و [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) وقد تم توسيع نطاق الفصول بطرائق وممتلكات جديدة.

#### التعادل والتصوير الآليين في صورة <sup>23-10</sup>

تم توفير طريقة بسيطة للتكييف والتكييف التلقائي للصورة في شكل معين من خلال الشكل الجديد [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) طريقة

#### Default Font Formatting for Drawing ML الأسطورة <sup>23-11</sup>

The ability to specify default font formatting for myentries of DrawingML charts has been added via the **Font** ملكية وتيسر هذه السمة ظهور عناصر رسم الخرائط بشكل أكثر تبسيطا واتساقا، مما يحسّن مجمل الوثائق الجمالية.

#### يُرجى التحديد الصفحة <sup>23-12</sup>

The ability to specify the page layout to be used when opening a document in a PDF reader has been added through the introduction of a new [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) الممتلكات إلى [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) الصف والأخذ بطبقة جديدة [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) العد

### وثائق الشحن والإنقاذ

#### تحديد اسم القلادة لإبرام صور مدمجة Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) تم توسيع الصف بإضافة [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) الممتلكات، التي تسمح بتحديد اسم الملف المستخدم في بناء صور مستنسخة مكتوبة في Markdown الوثيقة.

#### Reduce PDF الناتج <sup>23-10</sup>

:: قيام مختلف قوات الدفاع الشعبي بخفض الحجم الأمثل للناتج عند استخدامه [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) وقد نُفذت الأطر.

#### Recognize Hyperlinks when Loading TXT Documents <sup>23-10</sup>

سمة الاعتراف بالوصلات الفائقة عند تنفيذ تحميل وثائق TXT بإضافة [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) ملكية

### أخرى

- نُفِّذت عملية ضخ مائي لتحديد حجم التعقيم، وتحديداً بالنسبة لاستعارة قلم WMF وللاستعراض الكوني لقلم EMF. لتحقيق ذلك، **ScaleWmfFontsToMetafileSize** استُعيض عن الممتلكات بالممتلكات [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) الممتلكات والممتلكات [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) وأضيفت الممتلكات. <sup>23.9</sup>
- استُحدثت طريقة مبسطة لإدراج وثيقة في وثيقة أخرى في موقف الضمائر الحالي باستخدام [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) طريقة <sup>23-10</sup>
- وقد أضيفت القدرة على الوصول إلى الخصائص النمطية وتعديلها من خلال الأخذ بالنموذج الجديد [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) ملكية <sup>23-10</sup>
- أضيفت بارامتر من النوع العام إلى أساليب [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) الصف <sup>23-10</sup>
- طريقة للتحكم في الحالات التي ينبغي فيها قبول/إعادة النظر أو عدم تنفيذها باستخدام [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) و [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) طرق ويتيح هذا التعزيز للمستعملين تحسين الرقابة على عملية التنقيح. <sup>23-11</sup>
- تم توفير القدرة على كتابة جميع أجزاء الوثيقة على نفس صحيفة العمل XLSX من خلال [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) نوع التعداد والجديد [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) ملكية <sup>23-11</sup>
- دعم WebP تم إدخال صورة يرجى ملاحظة أن هذه السمة متاحة فقط. .Netقف .NET6+ نسخ. <sup>23-12</sup>

{{% alert color="primary" %}}

تعلم المزيد [Aspose.Words for Java 23-9](/words/java/aspose-words-for-java-23-9-release-notes/).

تعلم المزيد [Aspose.Words for Java المعسكرات](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

تعلم المزيد [Aspose.Words for Java المعسكرات:](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-12](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23-5 تعزيز القدرة على العمل مع بيانات سلسلة الخرائط والقدرة على العمل مع وثائق المواد المستنفدة للأوزون، فضلاً عن تحسين المرشدين/القدمين ولفائف نصوصهم.

Aspose.Words 23-6 توسيع نطاق تقديم الخيارات، وتضيف شكلاً جديداً للصادرات، وتحسن الإبلاغ عن المعلومات المتعلقة بشبكة المعلومات المحلية LowCode أدوات

Aspose.Words 23-7 يعزز قدرات الإبلاغ، ويضيف شكلاً جديداً للصادرات، ويدخل تغييرات على العمل مع الجداول والتوقيعات الرقمية.

Aspose.Words 23-8 يوسع نطاق قدرات الأشكال المختلفة، ويحسن الأداء، ويضيف خيارات جديدة للعمل في الميادين

### النماذج المدعومة

* بدءا بالنسخة 23-6، يمكن توفير وثيقة في شكل XLSX. الآن يمكنك تحويل وثائقك إلى شكل إكسل. <sup>23.6</sup>

* بدءا بالنسخة 23-7، يمكن توفير صفحة وثيقة أو شكل في شكل نظام تحديد المواقع. <sup>23.7</sup>

* ♪? New Format Features

  - استُحدثت وظيفة إعداد جدول محتويات لوثائق وزارة العمل. <sup>23.8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) تم توسيع البناء [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - نُفذ تشكيل النسيج الرأسي لمصفوفات EMF. <sup>23.8</sup>

### Rendering

#### الحصول على تعديل Chart Series Data <sup>23.5</sup>

وتم توفير السمة اللازمة للحصول على بيانات سلسلة الخرائط وتعديلها بإضافة ما يلي:

- صفوف جديدة: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- أنواع جديدة: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### دعم التصوير المتطور <sup>23.6</sup>

وقد أضيف دعم للتصوير المتطور في إطار WMF و EMF و EMF+.

#### المحتويات )تابع( <sup>23.6</sup>

الممتلكات العامة [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), وقد أضيفت إشارة إلى ما إذا كانت الصفحة ملونة أم لا.

#### Formatting for Chart Data Labels <sup>23.6</sup>

وقد نُفذت القدرة على وضع التعبئة، والسكتة الدماغية، وصيغة النداءات الخاصة بعلامات بيانات الخرائط.

### Mail Merge and Reporting

#### Dynamic HTML Insertion for LINQ Reporting Engine <sup>23.6</sup>

وقد أضيفت طريقة جديدة لإدخال نظام HTML الديناميكي لمهندس الإبلاغ الخاص بالشبكة.

#### Mustache الدعم <sup>23.7</sup>

Mustache يتم الآن دعم البطاقات في [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) و [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) طرق

#### LINQ Reporting Engine Template Syntax Updates <sup>23.7</sup>

وحدة الإبلاغ عن المحركات تدعم الآن `ElementAt` (و) أساليب التمديد في (إيمنت أورديو.

#### تحديد حجم الصور المنزوعة <sup>23.8</sup>

ملكية عامة جديدة **ImageSize** وقد استُحدثت لتحديد حجم الصور المصنوعة في بيكسل.

#### Preserve Whitespaces for JSON String Values – LINQ <sup>23.8</sup>

وقد أُضيف خيار إلى مهندس الإبلاغ الخاص بشبكة " لينك " (LINQ) للحفاظ على الحيز الأبيض لقيم سلاسل " JSON ".

### LowCode <sup>23.6</sup>

جديدة LowCode وأضيفت أساليب ترمي إلى دمج مختلف أنواع الوثائق في وثيقة ناتج واحدة.

### أخرى

- نُفذ دعم لفائف النصوص في الرأس/القدمين. <sup>23.5</sup>
- أضيفت القدرة على إزالة التوقيعات الرقمية من وثائق الـ دي. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) طريقة <sup>23.5</sup>
- الممتلكات العامة [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) للحصول على قاعدة ورسالة الدليل الهاتفي [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) أضيفت <sup>23.5</sup>
- أضيفت القدرة على استعادة قيمة التوقيع الرقمي من وثيقة موقعة رقمياً كصفيفة فرعية وذلك بإدخال صيغة جديدة [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) ملكية <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) تم توسيع الفصول مع أعضاء عموميين جدد [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), و [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- أضيف دعم لحقول التصديق والمشروع. <sup>23.8</sup>

{{% alert color="primary" %}}

تعلم المزيد [Aspose.Words for Java 23-5](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-6 مرات](/words/java/aspose-words-for-java-23-6-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-7](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

تعلم المزيد [Aspose.Words for Java -](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 23-1 و23-2 و23-3 و23-4

Aspose.Words 23-1 تحسين أداء عملية المحاكاة، فضلا عن تعزيز الوثائق المصدرة والجودة.

Aspose.Words 23-2 يعرض وثائق الادخار في شكل مذكرة التفاهم، ويحسن رسم الخرائط، ويدخل تغييرات ملحوظة على تفاصيل مظهر الوثائق.

Aspose.Words 23-3 يعزز استيراد الوثائق وادخارها مع الممتلكات الجديدة، ويحسِّن أيضاً نوعية العمل مع الخلفية واللون السطحي والتدرج الإشعاعي.

Aspose.Words 23-4 تحسين حساب بعض البارامترات ووضع الجدول والنص المحيط.

### تحسين الأداء

#### فرض عمليات الحشد <sup>23.1</sup>

وتم تحسين أداء ونوعية عمليات القاذورات المزودة بمصفوفات تحسينا كبيرا.

### النماذج المدعومة

#### Export to MOBI <sup>23.2</sup>

وابتداءً من النسخة 23-2، يمكن توفير وثيقة في شكل وزارة العمل (تسمى أيضاً PRC, AZW) Amazon شكل ملف (كيندل) الإلكتروني الآن لا يمكنك تحميل مستندات الـ"مو بي آي" فحسب، لكن أيضاً تصدير ملفاتك إلى شكل "مو بي آي".

### Rendering

#### العمل مع مُستحلِقات الشَرَق <sup>23.1</sup>

وتم تنفيذ القدرة على العمل مع الألوان المظلة.

#### Support of R-squared Coefficient in DML Charts <sup>23.1</sup>

(د) دعم المعامل المربوط في العلامات المميزة لخط التلال عند إصداره.

#### تحسين الأداء <sup>23.2</sup>

ومنذ 23-2 تم تحسين الرسم البياني بشكل كبير.

#### مراقبة العقيدات الأرضية <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) وقد تم توسيع نطاق هذه الصفات بمجموعة من الممتلكات العامة الجديدة المتصلة بالخلفيات والألوان الأمامية: **ForeThemeColor** و **BackThemeColor**, **ForeTintAndShade** و **BackTintAndShade**.

#### الراديكاليين مع `SkiaSharp` Native Shader <sup>23.3</sup>

ترتيب التدرجات الإشعاعية مع `SkiaSharp` الظل الأصلي .NET Standard نُفذ.

#### Distance Between the Table and Surrounding Text <sup>23.4</sup>

وقد أضيفت القدرة على تحديد المسافة بين الجدول والنص المحيط عن طريق إدخال ممتلكات جديدة إلى [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) الفصل: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), و [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### وثائق الشحن والإنقاذ

#### Generate `TOC` AZW3 Documents <sup>23.1</sup>

القدرة على توليد `TOC` (جدول المحتويات) أضيفت إلى الوثائق AZW3 باستخدام [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) ملكية

#### البنود المحالة إلى Markdown <sup>23.1</sup>

A way to control the export of list items to Markdown تم توفير الشكل بإضافة [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) الممتلكات إلى [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) الصف

#### الوثائق <sup>23.3</sup>

تم تنفيذ إخطارات مرحلية بشأن صيغتي وزارة العمل وشؤون المرأة والتنمية.

#### تعديل الأحكام والكلمات <sup>23.3</sup>

أضيفت القدرة على تحديد ما إذا كان ينبغي تعديل الجملة والكلمات المباعدة تلقائيا عند استيراد الوثائق وذلك بإدخالها **AdjustSentenceAndWordSpacing** ملكية

### أخرى

- أضيفت القدرة على تحديد الطابع المباع في تعديل الوثيقة من خلال [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) تنفيذ الممتلكات <sup>23.2</sup>
- طريق التعليم Aspose.Words قُدم ما إذا كان ينبغي إدراج صناديق النص والحواشي والمذكرات النهائية في إحصاءات عد الكلمات بإضافة ما يلي: [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) الممتلكات <sup>23.2</sup>
- طرح خيار جديد لأسلوب الوثائق، يسمح بتحديد ما إذا كان الأسلوب يعاد تعريفه تلقائياً استناداً إلى القيمة المناسبة، وذلك من خلال [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) الممتلكات <sup>23.2</sup>
- القدرة على تحديد ما إذا كان [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) هو دليل هواتف أضيف باستخدام **IsPhoneticGuide** الممتلكات <sup>23.4</sup>
- تم تنفيذ طريقة بسيطة للعمل مع المسلسلات وفؤر الخرائط المجمّعة عن طريق إدخال **ChartAxisCollection** الصف و إضافة **Chart.Axes** الممتلكات <sup>23.4</sup>
- أضيفت الممتلكات العامة الجديدة المرتبطة بالتشكيل النسبي لتحديد المواقع والتصنيع إلى [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) الصف <sup>23.4</sup>
- تحسّن الاستحقاق وأداء حساب إشراق اللون من أجل حل الألوان النصية التلقائية وفقا لأحدث النسخ Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

تعلم المزيد [Aspose.Words for Java 23-1](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-2](/words/java/aspose-words-for-java-23-2-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-3 مرات](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

تعلم المزيد [Aspose.Words for Java 23-4](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## انظر أيضا

{{% alert color="primary" %}}

وتحتوي هذه الصفحة على آخر أخبار الإطلاق خلال السنتين الماضيتين. للتفاصيل عن الإطلاقات السابقة، انظر [الحواشي '](/words/java/release-notes/) صفحات في الفروع ذات الصلة.

{{% /alert %}}
