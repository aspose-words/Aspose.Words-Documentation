---
title: التعامل مع ملفات التعريف Windows
second_title: Aspose.Words لـ Python via .NET
articleTitle: التعامل مع ملفات التعريف Windows
linktitle: التعامل مع ملفات التعريف Windows
description: "يقوم Aspose.Words for Python via .NET بتنفيذ مشغل Windows Metafile الخاص به لتشغيل تنسيق Metafile على جميع الأنظمة الأساسية ويدعم التعامل مع ميزات ملف التعريف الأساسية ويمكنه إجراء رجوع إلى نوع مختلف من مشغل ملفات التعريف."
type: docs
weight: 30
url: /ar/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

تنسيق Windows Metafile هو تنسيق ملف صورة يمكن أن يحتوي على رسومات متجهة ونقطية. يُستخدم هذا التنسيق لتخزين بيانات الرسومات في الذاكرة أو الملفات الموجودة على القرص. يخزن ملف التعريف قائمة باستدعاءات الوظائف في Windows Graphics Device Interface (GDI) التي يجب تنفيذها لعرض الصورة على الشاشة. يقوم النظام بتفسير وتنفيذ هذه الأوامر في سياق العرض.

في السابق، كان Windows Metafile هو تنسيق الصور المتجه الوحيد الذي يدعمه Microsoft Word. يدعم Microsoft Word الآن أيضًا تنسيق SVG، لكن تنسيق ملف التعريف لا يزال شائع الاستخدام في مستندات Word. كما يمكن أن يكون Metafile تنسيق تبادل لبعض التطبيقات الأخرى، مثل Microsoft Visio. بشكل أساسي، الغرض الرئيسي من Metafile هو ضمان تبادل المعلومات الرسومية بين تطبيقات Windows.

هناك 3 إصدارات من ملف تعريف Windows:

- WMF - يخزن الاتصال بـ 16 بت GDI.
- EMF - يخزن الاتصال بـ Win32/GDI.
- يقوم EMF+ Metafile بتخزين الاتصال بـ GDI+. قد يكون ملف تعريف EMF+ ثنائيًا أيضًا، ويصف نفس الرسومات مع كل من جزأين EMF وEMF+.

المشكلة الحالية في Windows Metafile هي أنه غير مدعوم من قبل معظم التنسيقات غير Word، والتي يتم حفظ المستندات فيها عادةً. لذلك، يلزم تحويل تنسيق Metafile إلى تنسيقات نقطية أو متجهة أخرى. من السهل تحويل Windows Metafile إلى صورة نقطية على .NET بمجرد تمريرها إلى GDI+، لكن هذا غير ممكن على الأنظمة الأساسية الأخرى نظرًا لأنه حتى GDI+ لا يوفر وظيفة استخراج الرسومات المتجهة من Metafile. لحل هذه المشكلات، يستخدم Aspose.Words مشغل Windows Metafile الخاص به، والذي يمكنه تشغيل تنسيق Metafile على كل من الرسومات المتجهة والنقطية على جميع الأنظمة الأساسية.

## التحكم في مشغل Aspose.Words Metafile

تمكنك فئة [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) من التحكم في مشغل ملف التعريف. على سبيل المثال، يمكنك تحديد كيفية عرض صور ملف التعريف باستخدام خاصية [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/)، والتي لها معنى خاص عند التحويل إلى صور نقطية (راجع أيضًا خاصية [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

يعمل الحفظ في صورة نقطية بشكل مختلف على الأنظمة الأساسية بخلاف .NET. في حين أن عرض .NET GDI+ هو مرجع يعمل بشكل مثالي تقريبًا حتى مع تنسيق ملفات التعريف الأكثر تعقيدًا، إلا أنه قد يسبب مشكلات على الأنظمة الأساسية الأخرى أو لا يتم دعمه على الإطلاق.

## دعم العمليات النقطية

تعد العمليات النقطية إحدى ميزات ملف التعريف المعقدة، والتي تتمتع حاليًا بدعم محدود. تتوفر العمليات النقطية بتنسيقات ملفات تعريف WMF وEMF. لا يستخدم تنسيق ملف التعريف EMF+ العمليات النقطية مباشرةً، ولكن يمكن أن يحتوي على أجزاء EMF أو ملفات تعريف WMF أو EMF مضمنة.

هناك عمليات نقطية ثنائية وثلاثية:

- يتم تطبيق العمليات النقطية الثنائية على أوامر الرسم بالقلم، مثل رسم الخطوط والمنحنيات. عند رسم خط، يتم دمج لون القلم مع لون الصورة النقطية للوجهة (لون البكسل المقابل على سطح الجهاز) باستخدام عمليات منطقية محددة للبت مع قيم ألوان سداسية عشرية. يوضح مثال الصورة أدناه تأثير جميع العمليات النقطية الثنائية الـ 16 المطبقة على 20 شريط ألوان مختلف. يتم رسم أشرطة الألوان العمودية أولاً، ويتم رسم الأشرطة الأفقية بعد تطبيق كل عملية نقطية ثنائية. في الحالات البسيطة، R2_BLACK يرسم باللون الأسود، R2_NOT يعكس اللون، R2_NOP لا يغير الخلفية، وR2_WHITE يرسم باللون الأبيض.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="التعامل مع ملفات تعريف Windows-Aspose-Words-net-1" style="width:650px"/>

- يتم تطبيق العمليات النقطية الثلاثية عند رسم الصور النقطية. فهي تجمع بين ألوان وحدات بكسل الصورة النقطية المقابلة، والفرشاة، والصور النقطية الوجهة باستخدام عمليات منطقية للبت مع قيم ألوان سداسية عشرية محددة. أحد الأغراض الأكثر شيوعًا لاستخدام العمليات النقطية الثلاثية هو محاكاة الشفافية. توضح الصورة المتوفرة في المثال أدناه كيف يمكن محاكاة شفافية الأيقونة. هناك نوعان من الصور النقطية: الصورة النقطية لقناع أبيض وأسود والصورة النقطية الملونة. أولاً، يتم رسم الصورة النقطية للقناع باستخدام عملية SRCAND النقطية. يقوم بتغيير منطقة الأيقونة المعتمة إلى الأسود والأبيض، مع ترك المنطقة الشفافة دون تغيير. ثم يتم رسم الصورة النقطية الثانية باستخدام عملية SRCINVERT النقطية. يعرض وحدات البكسل الملونة في المنطقة السوداء، مع ترك المنطقة الشفافة دون تغيير.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="التعامل مع ملفات تعريف Windows-Aspose-Words-net-2" style="width:650px"/>

لا يمكن تحويل العمليات النقطية إلى رسومات متجهة مباشرة. يحاكي Aspose.Words العمليات النقطية عن طريق تنقيط سطح الجهاز المتأثر بعمليات البيانات النقطية جزئيًا. ولهذا الغرض، يتم استخدام خاصية [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/).

{{% alert color="primary" %}}

على الرغم من أن العمليات النقطية الثنائية غير مدعومة حاليًا ويدعم Aspose.Words العدد المحدود من العمليات النقطية الثلاثية، إلا أنه يمكنه التعامل مع الحالات الأساسية للتحويل إلى الرسومات المتجهة مباشرةً، على سبيل المثال، R2_BLACK، R2_WHITE، R2_NOP. كما يؤثر تنقيط سطح الجهاز بشكل كبير على الأداء، خاصة عندما يتعلق الأمر بعدد كبير من سجلات تشغيل البيانات النقطية.

{{% /alert %}}

يوضح المثال الموضح أدناه كيفية عرض Aspose.Words لملف تعريف إلى صورة نقطية عندما لا يكون من الممكن تقديم بعض سجلات ملف التعريف بشكل صحيح إلى رسومات متجهة:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## الإعدادات الاحتياطية لملف التعريف

لا يدعم Aspose.Words عددًا من ميزات ملفات التعريف الأكثر تعقيدًا أو نادرة. في هذه الحالة، قد يقوم Aspose.Words بالرجوع إلى نوع مختلف من مشغل ملفات التعريف

أولاً، يقوم Aspose.Words بتنفيذ عملية احتياطية من مشغل ملف التعريف المتجه إلى البيانات النقطية، والتي يتم التحكم فيها بواسطة خاصية [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). إذا تم تعطيل الميزة الاحتياطية، فسيحاول Aspose.Words عرض بعض الرسومات البديلة بدلاً من الميزات غير المدعومة.

يقوم Aspose.Words بتشغيل ملف التعريف إلى البيانات النقطية بنجاح باستخدام GDI+ على .NET، مما يجعل خيار رد الاتصال هذا آمنًا.

ثانيًا، هناك خيار لملف تعريف EMF+ Dual للرجوع من تشغيل جزء EMF+ إلى جزء EMF. يتم التحكم فيه بواسطة [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). إذا حدثت بعض المشكلات عند تشغيل جزء EMF، فيمكن إجراء الرجوع إلى البيانات النقطية أيضًا.

أما بالنسبة للعمليات النقطية، إذا تم تعطيل [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/)، فسيتم اعتبار العمليات النقطية غير مدعومة، مما يؤدي إلى تشغيل الرجوع إلى مشغل ملف تعريف الصورة النقطية إذا تم تمكينه. لذلك، إذا كان لديك ملف تعريف يحتوي على عمليات بيانات نقطية، ولكنك لا ترغب في استخدام محاكاة عمليات البيانات النقطية وتريد مع ذلك الحصول على مخرجات متجهة باستخدام رسومات بديلة، فحدد [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
