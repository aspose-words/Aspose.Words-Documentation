---
title: ما هو الجديد
second_title: Aspose.Words لـ .NET
articleTitle: ما الجديد في Aspose.Words لـ .NET
linktitle: ما الجديد في Aspose.Words لـ .NET
type: docs
description: "يتوسع Aspose.Words for .NET ويتحسن يوميًا. في هذه الصفحة، يمكنك التعرف على الميزات الضخمة والأكثر إثارة للاهتمام للمنتج."
weight: 10
url: /ar/net/what-s-new-in-aspose-words-for-net/
---

تصف هذه الصفحة ميزات Aspose.Words الجديدة الأكثر إثارة للاهتمام والتي تم تقديمها في الإصدارات الأخيرة.

## Aspose.Words لـ .NET 24.1, 24.2, 24.3

يعمل Aspose.Words 24.1 على تحسين التجربة المتعلقة بإدارة ألوان الحدود، ويعزز كائنات OLE وتقارير LINQ، بالإضافة إلى تقديم مصادر المراجع الببليوغرافية الجديدة API العامة.

قام Aspose.Words 24.2 بتوسيع Charts API وإدارة الأنماط وخيارات LINQ. يقدم هذا الإصدار من Aspose.Words أيضًا إمكانية تحديد SvgSaveOptions أثناء العرض، وتحكم أكثر مرونة في تحميل ملفات Markdown، والعمل مع النص المرجعي للحواشي السفلية والتعليقات الختامية.

Aspose.Words 24.3 يقدم قارئ / كاتب TIFF جديد ومحاكاة لعمليات الصور النقطية الثنائية لملفات WMF. يواصل Aspose.Words 24.3 أيضًا توسيع واجهة برمجة التطبيقات للرسوم البيانية.

### التقديم والطباعة

#### التحكم في لون السكتة الدماغية <sup>24.1</sup>

تم توسيع فئة [Stroke](https://reference.aspose.com/words/ar/net/aspose.words.drawing/stroke/) بمجموعة من الخصائص العامة الجديدة المتعلقة بإدارة ألوان الحدود: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) و[BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/) و[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) و[BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### <sup>24.2 / 24.3</sup> DrawingML Charts API ملحق

يستمر توسيع واجهة برمجة تطبيقات **DrawML Charts API**.

### تحميل وحفظ المستندات

#### <sup>24.2</sup>  حدد SvgSaveOptions أثناء العرض

تمت إضافة القدرة على تحديد [SvgSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/svgsaveoptions/) أثناء العرض باستخدام الأساليب [ShapeRenderer](https://reference.aspose.com/words/ar/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/ar/net/aspose.words.rendering/noderendererbase/save/) و [OfficeMathRenderer](https://reference.aspose.com/words/ar/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/ar/net/aspose.words.rendering/noderendererbase/save/) 

#### <sup>24.2</sup>  الحفاظ على الأسطر الفارغة عند تحميل ملفات Markdown

تمت إضافة القدرة على الحفاظ على الأسطر الفارغة عند تحميل ملفات Markdown.

####  <sup>24.3</sup> قارئ / كاتب TIFF جديد 

تم تطوير قارئ / كاتب TIFF جديد لـ Aspose.Words for .NET Standard و.NET 6 والإصدارات الأحدث. أضاف Aspose.Words for .NET 24.3 دعمًا لقراءة صور TIFF بأنواع ضغط JPEG و Old JPEG ، وكما تم تحسين جودة عمليات القراءة والكتابة بشكل كبير.

### آخر

* تم تقديم القدرة على تعديل نص عنصر تحكم `TextBox` OLE عن طريق إضافة خاصية [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) جديدة إلى فئة [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/) الجديدة.   <sup>24.1</sup>
* تم تنفيذ API العام لمصادر المراجع من خلال إضافة مساحة اسم جديدة [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) مع فئاتها وتعداداتها الجديدة، ومن خلال إضافة خاصية [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) جديدة إلى فئة [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/). <sup>24.1</sup>
* تم توفير API لتقييد الوصول إلى أعضاء الكتابة الذين يستخدمون صيغة القالب لمحرك تقارير LINQ. <sup>24.1</sup>
* تمت إضافة الخصائص العامة الجديدة [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/)، [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/)، و [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/)  لإدارة النمط المحسنة إلى فئة [Style](https://reference.aspose.com/words/ar/net/aspose.words/style/). <sup>24.2</sup>
* تم تحسين وظيفة استرداد نص العلامة المرجعية الفعلي للحواشي السفلية والتعليقات الختامية باستخدام خاصية [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) وأسلوب [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>  
* تم تمكين التوافق مع مخططات `Word 2016` لمحرك تقارير LINQ. <sup>24.2</sup>
* تم تنفيذ محاكاة لعمليات الصور النقطية الثنائية لملفات WMF. <sup>24.3</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

{{% /alert %}}

## Aspose.Words لـ .NET 23.9، 23.10، 23.11، 23.12

يعمل Aspose.Words 23.9 على توسيع خيارات العرض ومحاكاة عرض ملف التعريف وخيارات حفظ markdown.

يعمل Aspose.Words 23.10 على تحسين العرض وتوسيع خيارات تحميل المستندات وحفظها، ويسمح للمستخدمين بدمج المستندات بطرق جديدة.

يعمل Aspose.Words 23.11 على تحسين العمل من خلال المراجعات وتنسيق XLSX والخطوط على وسيلة إيضاح المخطط مع خيارات إضافية.

يقدم Aspose.Words 23.12 خصائص وتعدادات جديدة للعمل مع مستندات PDF وOOXML، بالإضافة إلى دعم صور WebP.

### التقديم والطباعة

#### تخصيص عناوين المحاور في مخططات DrawML <sup>23.9</sup>

تم تقديم القدرة على تخصيص عناوين المحاور في مخططات DrawML من خلال تطبيق خاصية [ChartAxisTitle](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartaxistitle/) و[Title](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartaxis/title/) من الفئة العامة الجديدة.

#### تحديد الموضع الرأسي للخطوط ضمن الفقرة <sup>23.9</sup>

أصبح من الممكن الآن تحديد الموضع الرأسي للخطوط داخل الفقرة باستخدام خاصية [BaselineAlignment](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/baselinealignment/) العامة الجديدة وتعداد [BaselineAlignment](https://reference.aspose.com/words/ar/net/aspose.words/baselinealignment/) الجديد.

#### التحكم في الألوان الأمامية <sup>23.10</sup>

تمت إضافة القدرة على استرداد اللون الأمامي بدون معدلات إلى فئتي [Fill](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/) و[Stroke](https://reference.aspose.com/words/ar/net/aspose.words.drawing/stroke/) عبر خاصية **BaseForeColor**.

#### توسيع وظائف الرسوم البيانية <sup>23.10</sup>

تم توسيع وظائف فئات [ChartDataPointCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatapointcollection/) و[ChartSeries](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartseries/) و[ChartFormat](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartformat/) بطرق وخصائص جديدة.

#### ضبط الصورة وملاءمتها تلقائيًا في الشكل <sup>23.10</sup>

تم توفير طريقة بسيطة لضبط الصورة وملاءمتها تلقائيًا داخل شكل معين من خلال طريقة [FitImageToShape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/imagedata/fitimagetoshape/) الجديدة.

#### تنسيق الخط الافتراضي لإدخالات وسيلة إيضاح مخطط DrawML <sup>23.11</sup>

تمت إضافة القدرة على تحديد تنسيق الخط الافتراضي لإدخالات وسيلة الإيضاح لمخططات DrawML عبر خاصية [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). تسهل هذه الميزة مظهرًا أكثر انسيابية وتناسقًا لعناصر المخطط، مما يؤدي إلى تحسين جماليات المستند بشكل عام.

#### حدد تخطيط الصفحة عند فتح ملف PDF في Reader <sup>23.12</sup>

تمت إضافة القدرة على تحديد تخطيط الصفحة المراد استخدامه عند فتح مستند في قارئ PDF من خلال إدخال خاصية [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) جديدة إلى فئة [PdfSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfsaveoptions/) وإدخال تعداد [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) جديد.

### تحميل وحفظ المستندات

#### تحديد اسم مجلد لإنشاء معرفات URI للصورة في Markdown <sup>23.9</sup>

تم توسيع فئة [MarkdownSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/) من خلال تضمين خاصية [ImagesFolderAlias](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/)، والتي تسمح بتحديد اسم المجلد المستخدم لإنشاء معرفات URI للصور المكتوبة في مستند Markdown.

#### تقليل حجم إخراج PDF <sup>23.10</sup>

تم تنفيذ تحسينات مختلفة لعرض PDF لتقليل حجم الإخراج عند استخدام إعدادات [OptimizeOutput](https://reference.aspose.com/words/ar/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### التعرف على الارتباطات التشعبية عند تحميل مستندات TXT <sup>23.10</sup>

تم تنفيذ ميزة التعرف على الارتباطات التشعبية عند تحميل مستندات TXT عن طريق إضافة خاصية [DetectHyperlinks](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) جديدة.

### آخر

* تم تنفيذ محاكاة عرض ملف التعريف لتحديد حجم التنقيط، خصيصًا لعرض قلم WMF وعرض قلم التجميل EMF. ولتحقيق ذلك، تم استبدال خاصية **ScaleWmfFontsToMetafileSize** بخاصية [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/ar/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) وتمت إضافة خاصية [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/ar/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* تم تقديم طريقة مبسطة لإدراج مستند في مستند آخر في موضع المؤشر الحالي باستخدام طريقة [InsertDocumentInline](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* تمت إضافة القدرة على الوصول إلى خصائص النمط وتعديلها من خلال تقديم خاصية [Locked](https://reference.aspose.com/words/ar/net/aspose.words/style/locked/) الجديدة. <sup>23.10</sup>
* تمت إضافة معلمة نوع عامة إلى أساليب فئة [CompositeNode](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/). <sup>23.10</sup>
* تم تنفيذ طريقة للتحكم في وقت قبول/رفض مراجعة معينة أو عدم تنفيذها باستخدام طريقتي [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) و[Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). يمنح هذا التحسين المستخدمين تحكمًا أفضل في عملية المراجعة. <sup>23.11</sup>
* تم توفير القدرة على كتابة جميع أقسام المستند على نفس ورقة عمل XLSX من خلال نوع التعداد [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) الجديد وخاصية [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) الجديدة. <sup>23.11</sup>
* تم تنفيذ طريقة للتحكم في كيفية استخدام امتدادات تنسيق ZIP64 لمستندات OOXML من خلال خاصية Zip64Mode الجديدة لفئة `OoxmlSaveOptions` وتعداد Zip64Mode الجديد. <sup>23.12</sup>
* تم تقديم الدعم لصورة WebP. يرجى ملاحظة أن هذه الميزة متاحة فقط لإصدارات .NetStandart و.NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words لـ .NET 23.5، 23.6، 23.7، 23.8

يعمل Aspose.Words 23.5 على تحسين القدرة على العمل مع بيانات سلسلة المخططات والقدرة على العمل مع مستندات ODT، بالإضافة إلى تحسين الرؤوس والتذييلات والتفاف النص الخاص بها.

يعمل Aspose.Words 23.6 على توسيع خيارات العرض وإضافة تنسيق تصدير جديد وتحسين تقارير LINQ وأدوات LowCode.

يعمل Aspose.Words 23.7 على تحسين قدرات إعداد التقارير وإضافة تنسيق تصدير جديد وإدخال تغييرات على العمل مع الجداول والتوقيعات الرقمية.

يعمل Aspose.Words 23.8 على توسيع إمكانيات التنسيقات المختلفة وتحسين العرض وإضافة خيارات جديدة للعمل مع الحقول

### التنسيقات المدعومة

* بدءًا من الإصدار 23.6، أصبح من الممكن حفظ مستند بتنسيق XLSX. الآن يمكنك تحويل مستنداتك إلى تنسيق Excel. <sup>23.6</sup>
* بدءًا من الإصدار 23.7، أصبح من الممكن حفظ صفحة أو شكل مستند بتنسيق EPS. <sup>23.7</sup>

### ميزات التنسيق الجديدة

* تم تقديم وظيفة إنشاء جدول المحتويات (TOC) لمستندات MOBI تلقائيًا. <sup>23.8</sup>
* تم توسيع مُنشئ [PdfEncryptionDetails](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) باستخدام [PdfPermissions](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* تم تنفيذ تشكيل النص الرأسي لملفات تعريف EMF. <sup>23.8</sup>

### التقديم والطباعة

#### الحصول على بيانات سلسلة المخططات وتعديلها <sup>23.5</sup>

تم توفير ميزة الحصول على بيانات سلسلة المخططات وتعديلها عن طريق إضافة:

* فئات جديدة: [ChartXValue](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartxvalue/)، [ChartYValue](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartyvalue/)، [ChartXValueCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartxvaluecollection/)، [ChartYValueCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartyvaluecollection/)، [BubbleSizeCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/bubblesizecollection/)، [ChartMultilevelValue](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* أنواع التعداد الجديدة: [ChartXValueType](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartxvaluetype/)، [ChartYValueType](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartyvaluetype/)

#### دعم الطباعة المتقدمة <sup>23.6</sup>

تمت إضافة دعم الطباعة المتقدمة في عرض WMF وEMF وEMF+.

#### المحتوى الملون على الصفحة <sup>23.6</sup>

تمت إضافة الخاصية العامة [PageInfo.Colored](https://reference.aspose.com/words/ar/net/aspose.words.rendering/pageinfo/colored/)، التي تشير إلى ما إذا كانت الصفحة ملونة أم لا.

#### تنسيق تسميات بيانات المخطط <sup>23.6</sup>

تم تنفيذ القدرة على تعيين تنسيق التعبئة والحد ووسيلة الشرح لتسميات بيانات المخطط.

### Mail Merge وإعداد التقارير

#### إدراج HTML ديناميكي لمحرك تقارير LINQ <sup>23.6</sup>

تمت إضافة طريقة جديدة لإدراج HTML الديناميكي لمحرك التقارير LINQ.

#### دعم علامات Mustache <sup>23.7</sup>

أصبحت علامات Mustache مدعومة الآن في طريقتي [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/ar/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) و[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/ar/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### تحديثات بناء جملة قالب محرك التقارير LINQ <sup>23.7</sup>

يدعم بناء جملة قالب LINQ Reporting Engine الآن طرق الامتداد `ElementAt` وElementAtOrDefault.

#### تحديد حجم الصور المعروضة <sup>23.8</sup>

تم تقديم ملكية عامة جديدة [ImageSize](https://reference.aspose.com/words/ar/net/aspose.words.saving/imagesaveoptions/imagesize/) لتحديد حجم الصور المعروضة بالبكسل.

#### الحفاظ على المسافات البيضاء لقيم سلسلة JSON – LINQ <sup>23.8</sup>

تمت إضافة خيار إلى LINQ Reporting Engine للحفاظ على المسافات البيضاء لقيم سلسلة JSON.

### LowCode <sup>23.6</sup>

تمت إضافة طرق LowCode جديدة تهدف إلى دمج أنواع مختلفة من المستندات في مستند إخراج واحد.

### آخر

* تم تقديم الدعم لتغليف النص في الرؤوس/التذييلات. <sup>23.5</sup>
* تمت إضافة القدرة على إزالة التوقيعات الرقمية من مستندات ODT من خلال طريقة [RemoveAllSignatures](https://reference.aspose.com/words/ar/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* تمت إضافة الملكية العامة [PhoneticGuide](https://reference.aspose.com/words/ar/net/aspose.words/run/phoneticguide/) للحصول على النص الأساسي والياقوتي للدليل الصوتي [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/). <sup>23.5</sup>
* تمت إضافة القدرة على استرداد قيمة التوقيع الرقمي من مستند موقع رقميًا كمصفوفة بايت عن طريق تقديم خاصية [SignatureValue](https://reference.aspose.com/words/ar/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) جديدة. <sup>23.7</sup>
* تم توسيع فئتي [Row](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/) بأعضاء عامين جدد - [Row.NextRow](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/nextrow/)، و[Row.PreviousRow](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/previousrow/)، و[Cell.NextCell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/nextcell/)، و[Cell.PreviousCell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* تمت إضافة دعم لحقول الاقتباس والببليوغرافيا. <sup>23.8</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.7](/words/net/aspose-words-for-net-23-7-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words لـ .NET 23.1، 23.2، 23.3، 23.4

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

تم توسيع فئة [Fill](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/) بمجموعة من الخصائص العامة الجديدة المتعلقة بألوان الخلفية والمقدمة: [ForeThemeColor](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/forethemecolor/) و[BackThemeColor](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/backthemecolor/) و[ForeTintAndShade](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/foretintandshade/) و[BackTintAndShade](https://reference.aspose.com/words/ar/net/aspose.words.drawing/fill/backtintandshade/).

#### التدرجات الشعاعية باستخدام `SkiaSharp` Native Shader <sup>23.3</sup>

تم تنفيذ عرض التدرجات الشعاعية باستخدام تظليل `SkiaSharp` الأصلي لـ .NET Standard.

#### المسافة بين الجدول والنص المحيط <sup>23.4</sup>

تمت إضافة القدرة على ضبط المسافة بين الجدول والنص المحيط من خلال تقديم خصائص جديدة لفئة [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distanceleft/)، و[DistanceRight](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distanceright/)، و[DistanceTop](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distancetop/)، و[DistanceBottom](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distancebottom/).

### تحميل وحفظ المستندات

#### إنشاء `TOC` لمستندات AZW3 <sup>23.1</sup>

تمت إضافة القدرة على إنشاء `TOC` (جدول المحتويات) لمستندات AZW3 من خلال استخدام خاصية [NavigationMapLevel](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### تصدير عناصر القائمة إلى Markdown <sup>23.1</sup>

تم توفير طريقة للتحكم في تصدير عناصر القائمة إلى تنسيق Markdown عن طريق إضافة خاصية [ListExportMode](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/listexportmode/) إلى فئة [MarkdownSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/).

#### إخطارات تقدم حفظ المستندات <sup>23.3</sup>

تم تنفيذ إشعارات التقدم في حفظ تنسيقات MOBI وAZW3.

#### تعديل تباعد الجمل والكلمات <sup>23.3</sup>

تمت إضافة القدرة على تحديد ما إذا كان سيتم ضبط تباعد الجملة والكلمات تلقائيًا عند استيراد المستند عن طريق تقديم خاصية [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/ar/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### آخر

* تمت إضافة إمكانية تحديد تعديل تباعد الأحرف للمستند من خلال تطبيق خاصية [JustificationMode](https://reference.aspose.com/words/ar/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* تم توفير طريقة توجيه Aspose.Words بشأن تضمين مربعات النص والحواشي السفلية والتعليقات الختامية في إحصائيات عدد الكلمات عن طريق إضافة خاصية [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/ar/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* تم تقديم خيار جديد لنمط المستند، والذي يسمح بتحديد ما إذا كان النمط سيتم إعادة تعريفه تلقائيًا بناءً على القيمة المناسبة، من خلال خاصية [AutomaticallyUpdate](https://reference.aspose.com/words/ar/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* تمت إضافة القدرة على تحديد ما إذا كان [Run](https://reference.aspose.com/words/ar/net/aspose.words/run/) هو تشغيل دليل صوتي باستخدام خاصية [IsPhoneticGuide](https://reference.aspose.com/words/ar/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* تم تنفيذ طريقة بسيطة للعمل مع سلاسل ومحاور المخططات المجمعة من خلال تقديم فئة [ChartAxisCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartaxiscollection/) وإضافة خاصية [Chart.Axes](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* تمت إضافة خصائص عامة جديدة مرتبطة بالموضع النسبي للشكل وحجمه إلى فئة [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* تم تحسين دقة وأداء حساب سطوع الألوان لدقة ألوان النص التلقائية وفقًا لأحدث إصدارات Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words لـ .NET 22.9، 22.10، 22.11، 22.12

يعمل Aspose.Words 22.9 على توسيع خيارات تحميل المستندات وحفظها وتحسين التفاعل مع بعض الخيارات الأخرى.

يعمل Aspose.Words 22.10 على تحسين خيارات البحث والاستبدال، وتعزيز كائنات OLE، وتوسيع وظائف القائمة.

يعمل Aspose.Words 22.11 على توسيع وظائفه بخيارات جديدة للعمل بشكل أكثر ملاءمة مع الكائنات المألوفة بالفعل: الحقول والطباعة وOLE وعلامات المستندات المنظمة.

يعمل Aspose.Words 22.12 على تحسين إمكانيات العرض ويقدم خيارات للعمل مع الهوامش عند تحميل/حفظ مستند.

### تحسينات الأداء <sup>22.12</sup>

تم تقديم تحسين يقلل بشكل كبير من عمق تداخل حالة الرسومات عند العرض إلى PDF للحفاظ على التوافق مع المواصفات.

### التقديم والطباعة

#### طباعة الصفحات غير الملونة على طابعة ملونة <sup>22.11</sup>

تم تنفيذ وضع طباعة مخصص ملون/بتدرج الرمادي عن طريق إضافة قيمة **GrayscaleAuto** جديدة إلى تعداد [ColorPrintMode](https://reference.aspose.com/words/ar/net/aspose.words.rendering/colorprintmode/).

تسمح خاصية الطباعة الجديدة للمستخدمين بالتحكم في كيفية طباعة الصفحات غير الملونة إذا كان الجهاز يدعم الطباعة الملونة. يمكن أن تكون هذه الميزة مفيدة إذا أراد المستخدمون طباعة الصفحات غير الملونة تلقائيًا باستخدام وضع الطباعة بتدرج الرمادي فقط.

#### خصائص عرض الحدود الجديدة <sup>22.12</sup>

تم تقديم خصائص عامة جديدة [ThemeColor](https://reference.aspose.com/words/ar/net/aspose.words/border/themecolor/) و[TintAndShade](https://reference.aspose.com/words/ar/net/aspose.words/border/tintandshade/).

#### صيغة خط الاتجاه الخطي لعرض الرسم ML <sup>22.12</sup>

تم تنفيذ عرض صيغة خط الاتجاه الخطي لمخططات DrawML.

#### إعدادات الخط الاحتياطية لخطوط Google Noto <sup>22.12</sup>

تم تحديث إعدادات الخط الاحتياطي المحددة مسبقًا لخطوط Google Noto.

### تحميل وحفظ المستندات

#### تخزين مؤقت لأشكال الرأس أو التذييل لتقليل حجم ملف PDF <sup>22.9</sup>

تم تنفيذ القدرة على تخزين أشكال الرأس/التذييل مؤقتًا لتقليل حجم ملف PDF الناتج عن طريق إضافة خاصية **CacheHeaderFooterShapes** جديدة.

#### كشف الترقيم التلقائي عند تحميل مستند <sup>22.9</sup>

تم تنفيذ القدرة على تحديد خاصية [AutoNumberingDetection](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) عند تحميل النص من خلال فئة [TxtLoadOptions](https://reference.aspose.com/words/ar/net/aspose.words.loading/txtloadoptions/) الممتدة.

#### تحديد نوع هامش معين <sup>22.12</sup>

تم تنفيذ القدرة على تحديد نوع [Margin](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/margins/) معين للقسم المحدد.

### بحث ومقارنة <sup>22.10</sup>

تم تنفيذ القدرة على تجاهل [StructuredDocumentTag](https://reference.aspose.com/words/ar/net/aspose.words.markup/structureddocumenttag/) عند خيارات البحث والاستبدال عن طريق إضافة خاصية [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/ar/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) جديدة إلى فئة [FindReplaceOptions](https://reference.aspose.com/words/ar/net/aspose.words.replacing/findreplaceoptions/).

### آخر

* تمت إضافة ميزة جديدة للحصول على FieldEQ كـ OfficeMath. <sup>22.9</sup>
* تم السماح بإنشاء علامات مستند منظمة من نوع Group على مستوى الصف. <sup>22.9</sup>
* يتم الآن التعامل مع كائنات وعناصر تحكم OLE كصور ملف تعريف عند تحويل مستند إلى HTML. <sup>22.10</sup>
* ميزة جديدة للتحقق من إنشاء قائمة معينة من نفس القالب حيث تمت إضافة القائمة المقارنة عن طريق إدخال طريقة [HasSameTemplate](https://reference.aspose.com/words/ar/net/aspose.words.lists/list/hassametemplate/) جديدة في فئة [List](https://reference.aspose.com/words/ar/net/aspose.words.lists/list/). <sup>22.10</sup>
* تمت إضافة القدرة على إنشاء علامات مستند منظمة جديدة من نوع [Citation](https://reference.aspose.com/words/ar/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* تم توفير القدرة على تتبع تقدم التحديث الميداني. <sup>22.11</sup>
* تم تقديم خاصية **EmbedAttachments** جديدة تسمح للمستخدمين بتضمين مرفقات OLE من مستند مصدر في مستند PDF الناتج. <sup>22.11</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.10](/words/net/aspose-words-for-net-22-10-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.11](/words/net/aspose-words-for-net-22-11-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.12](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words لـ .NET 22.5، 22.6، 22.7، 22.8

يقدم Aspose.Words 22.5 دعمًا لتنسيقات التحميل الجديدة وحجم صفحة الطباعة الجديد، بالإضافة إلى تحسين بعض خيارات العرض.

يعمل Aspose.Words 22.6 على توسيع إمكانيات تحويل PDF إلى تنسيقات أخرى، بالإضافة إلى تحسين العمل باستخدام DrawML وتأثير تعبئة النص الصلب.

يعمل Aspose.Words 22.7 على تحسين إمكانيات العمل مع ميزات العرض، كما يضيف ميزات جديدة للعمل مع استيراد HTML وتصديره إلى PDF.

يقدم Aspose.Words 22.8 تنسيق تصدير جديدًا ويحسن خوارزميات العرض المتنوعة.

تم تحسين API من أجل تطوير أكثر مرونة وملاءمة.

### التنسيقات المدعومة

* تم تقديم الدعم لتحميل مستندات EPUB وXML عن طريق إضافة قيم جديدة إلى تعداد [LoadFormat](https://reference.aspose.com/words/ar/net/aspose.words/loadformat/). بدءًا من الإصدار 22.5، من الممكن تحميل مستندات EPUB وXML في نموذج مستند Aspose.Words وتحويلها إلى أي [التنسيقات المدعومة](https://reference.aspose.com/words/ar/net/aspose.words/saveformat/). <sup>22.5</sup>
* بدءًا من الإصدار 22.8، من الممكن حفظ مستند بتنسيق AZW3 - تنسيق ملف الكتاب الإلكتروني الخاص بـ Amazon Kindle (KF8 هو اسم آخر للتنسيق). الآن لا يمكنك تحميل مستندات AZW3 فحسب، بل يمكنك أيضًا تصدير ملفاتك إلى تنسيق AZW3، وهو في الأساس ملف EPUB مترجم. <sup>22.8</sup>

### التقديم والطباعة

#### حجم الطباعة الجديد <sup>22.5</sup>

تمت إضافة دعم لحجم صفحة الطباعة "Envelope No. 10" من خلال إدخال قيمة جديدة إلى تعداد [PaperSize](https://reference.aspose.com/words/ar/net/aspose.words/papersize/).

#### تقديم صيغ MathML <sup>22.5</sup>

تم تحسين عرض مربع الحدود حول صيغ MathML واكتشاف الخطوط عند عرض الأحرف لهذه الصيغ.

#### تحسينات مخطط DML <sup>22.6</sup>

تم توسيع مخططات DrawML العامة API لدعم تعبئة التدرج والملمس والنمط.

#### Glyph يحدد التحليل لـ OpenType <sup>22.7</sup>

تم تنفيذ تحليل glyph الخاص بـ Aspose.Words لخطوط OpenType (CFF).

في السابق، كان يتم إجراء تحليل glyph لخطوط OpenType (CFF) عبر GDI+. لذا فهو يعمل الآن في الحالات التي لا يتوفر فيها +GDI - Java، ومنصات .NET Standard، وLinux OS، وما إلى ذلك. مطلوب تحليل الخطوط العريضة لـ Glyph في حالات محددة مثل WordArt، وتأثيرات النص، وبعض ميزات Office Math، وغيرها.

#### ضبط تنسيق ظل الشكل <sup>22.7</sup>

تم توفير القدرة على ضبط تنسيق الظل لكائن الشكل عن طريق إضافة خاصية [ShadowFormat](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/shadowformat/) جديدة.

#### دعم لتباعد الخلايا في الجداول <sup>22.8</sup>

تم الآن تحسين محرك التخطيط بشكل ملحوظ: تم تنفيذ آلية معقدة للغاية لتباعد الخلايا في الجداول.

#### استبدال الخط للرموز <sup>22.8</sup>

تم تحسين استبدال الخط للرموز.

#### خوارزمية تدوير تسمية محور الرسم البياني <sup>22.8</sup>

تم تحسين خوارزمية التدوير لتسميات محاور المخطط.

### تحميل وحفظ المستندات

#### قم بتحميل وتحويل PDF إلى تنسيق صفحة ثابتة بدون Layout Model <sup>22.6</sup>

تم تنفيذ القدرة على تحميل وتحويل مستندات PDF إلى تنسيقات صفحات ثابتة بدقة وأداء عاليين.

#### وضع استيراد HTML الجديد <sup>22.7</sup>

تم تقديم وضع استيراد HTML جديد للعناصر على مستوى الكتلة عن طريق إضافة قيمة جديدة إلى تعداد [HtmlInsertOptions](https://reference.aspose.com/words/ar/net/aspose.words/htmlinsertoptions/).

#### تحويل إلى PDF/UA-1 CSمتوافق مع WCAG 2.0 <sup>22.7</sup>

تمت إضافة دعم لتحويل مستند إلى تنسيق PDF/UA-1، متوافق مع WCAG 2.0.

لذا، إذا كان لدى العميل مستند Word يمكن الوصول إليه وقام بتحويله إلى PDF/UA-1 عبر Aspose.Words مع ذكر تفاصيل التحويل، فسيكون الناتج متوافقًا مع WCAG 2.0.

WCAG أو إرشادات الوصول إلى محتوى الويب هي مجموعة من الإرشادات التي طورتها W3C بالتعاون مع الأفراد والمنظمات في جميع أنحاء العالم. الآن باستخدام Aspose.Words، يمكنك تحويل مستندك إلى تنسيق PDF/UA-1 الناتج، وهو مناسب لإنشاء مستندات PDF متوافقة مع WCAG 2.0.

تجدر الإشارة إلى أن WCAG 2.0 له متطلبان إضافيان غير محددين في مواصفات PDF/UA-1:

* متطلبات التباين

* متطلبات وضع علامات على محتوى الوسائط المتعددة

لكن كلا المتطلبين لا علاقة لهما بحالتنا الخاصة بالتحويل من Word إلى PDF.

### آخر

* تم تنفيذ استثناء وراثة تأثير تعبئة النص الصلب الذي يحاكي سلوك MS Word. <sup>22.6</sup>
* تمت إضافة دعم حقول `DATABASE`. باستخدام هذا النوع من الحقول، يمكنك، على سبيل المثال، عرض نتائج استعلام قاعدة البيانات في جدول Microsoft Word. <sup>22.7</sup>

{{% alert color="primary" %}}

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.5](/words/net/aspose-words-for-net-22-5-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.6](/words/net/aspose-words-for-net-22-6-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.7](/words/net/aspose-words-for-net-22-7-release-notes/).

تعرف على المزيد حول [ملاحظات إصدار Aspose.Words لـ .NET 22.8](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## أنظر أيضا

{{% alert color="primary" %}}

تحتوي هذه الصفحة على آخر أخبار الإصدار خلال العامين الماضيين. للحصول على تفاصيل حول الإصدارات السابقة، راجع صفحات [ملاحظات الإصدار'](/words/net/release-notes/) في الأقسام ذات الصلة.

{{% /alert %}}