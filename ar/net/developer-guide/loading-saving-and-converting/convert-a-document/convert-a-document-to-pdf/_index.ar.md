---
title: تحويل Word إلى PDF في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل مستند إلى PDF
linktitle: تحويل مستند إلى PDF
description: "تحويل مستند إلى PDF باستخدام C#. تحويل DOCX إلى PDF C#. يتم دعم تنسيقات الإدخال المختلفة، بما في ذلك تنسيقات Word وOpenOffice وImage وeBook."
type: docs
weight: 10
url: /ar/net/convert-a-document-to-pdf/
---

تعد القدرة على تحويل المستندات من تنسيق إلى آخر بسهولة وموثوقية إحدى الميزات الأساسية لـ Aspose.Words. أحد تنسيقات التحويل الأكثر شيوعًا هو PDF - وهو تنسيق ذو تخطيط ثابت يحافظ على المظهر الأصلي للمستند أثناء عرضه على منصات مختلفة. يُستخدم مصطلح "العرض" في Aspose.Words لوصف عملية تحويل مستند إلى تنسيق ملف مرقّم أو يحمل مفهوم الصفحات.

## تحويل مستند Word إلى PDF

يعد التحويل من Word إلى PDF عملية معقدة إلى حد ما وتتطلب عدة مراحل من الحساب. يحاكي محرك تخطيط Aspose.Words الطريقة التي يعمل بها محرك تخطيط الصفحة في Microsoft Word، مما يجعل مستندات إخراج PDF تبدو أقرب ما يمكن إلى ما يمكنك رؤيته في Microsoft Word.

باستخدام Aspose.Words، يمكنك تحويل مستند برمجيًا من تنسيقات Word، مثل DOC أو DOCX، إلى PDF دون استخدام Microsoft Office. يشرح هذا المقال كيفية إجراء هذا التحويل.

{{% alert color="primary" %}}

لاحظ أن عدد الصفحات في المستند يؤثر على وقت التحويل.

{{% /alert %}}

### تحويل DOCX أو DOC إلى PDF

يعد التحويل من تنسيق المستند DOC أو DOCX إلى تنسيق PDF في Aspose.Words أمرًا سهلاً للغاية ويمكن تحقيقه باستخدام سطرين فقط من التعليمات البرمجية التي:

1. قم بتحميل المستند الخاص بك إلى كائن [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) باستخدام أحد منشئيه عن طريق تحديد اسم المستند بامتداد التنسيق الخاص به.
1. قم باستدعاء إحدى طرق [Document.Save](https://reference.aspose.com/words/ar/net/aspose.words/document/save/#save/) على كائن **Document** وحدد تنسيق الإخراج المطلوب بتنسيق PDF عن طريق إدخال اسم ملف بامتداد ".PDF".

يوضح مثال الكود التالي كيفية تحويل مستند من DOCX إلى PDF باستخدام طريقة [Save](https://reference.aspose.com/words/ar/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ المستند كملف PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض مخرجات PDF.

لاحظ أنه باستخدام نفس التقنية، يمكنك تحويل أي مستند بتنسيق تخطيط التدفق إلى تنسيق PDF.

{{% /alert %}}

### تحويل إلى معايير PDF مختلفة

يوفر Aspose.Words ترقيم [PDFالامتثال](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfcompliance/) لدعم تحويل DOC أو DOCX إلى معايير تنسيق PDF مختلفة (مثل PDF 1.7، PDF 1.5، وما إلى ذلك).

يوضح مثال التعليمات البرمجية التالي كيفية تحويل مستند إلى PDF 1.7 باستخدام [PdfSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfsaveoptions/) مع التوافق مع PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## تحويل الصور إلى PDF

لا يقتصر التحويل إلى PDF على تنسيقات مستندات Microsoft Word. يمكن أيضًا تحويل أي تنسيق يدعمه Aspose.Words، بما في ذلك التنسيق الذي تم إنشاؤه برمجيًا، إلى PDF. على سبيل المثال، يمكننا تحويل الصور ذات الصفحة الواحدة، مثل JPEG أو PNG أو BMP أو EMF أو WMF، بالإضافة إلى الصور متعددة الصفحات، مثل TIFF وGIF، إلى PDF.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل صور JPEG وTIFF إلى PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

لكي يعمل هذا الكود، تحتاج إلى إضافة مراجع إلى Aspose.Words و`System.Drawing` إلى مشروعك.

## تقليل حجم إخراج PDF

عند الحفظ إلى PDF، يمكنك تحديد ما إذا كنت تريد تحسين الإخراج. للقيام بذلك، تحتاج إلى تعيين علامة [OptimizeOutput](https://reference.aspose.com/words/ar/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) على true، ثم ستتم إزالة اللوحات المتداخلة الزائدة واللوحات الفارغة، وسيتم تسلسل ملفات glyph المجاورة بنفس التنسيق.

يوضح مثال التعليمات البرمجية التالي كيفية تحسين الإخراج:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

قد يؤثر استخدام خاصية **OptimizeOutput** على دقة عرض المحتوى.

{{% /alert %}}

## أنظر أيضا

- المقالة [استدعاء](/words/ar/net/rendering/) لمزيد من المعلومات حول تنسيقات الصفحات الثابتة وتخطيطات التدفق
- المقالة [التحويل إلى تنسيق الصفحة الثابتة](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) لمزيد من المعلومات حول تخطيط الصفحة
- المقالة [حدد خيارات العرض عند التحويل إلى PDF](/words/ar/net/specify-rendering-options-when-converting-to-pdf/) لمزيد من المعلومات حول استخدام فئة `PdfSaveOptions`
- المقالة [تعرف على ميزات التحويل إلى PDF/A وPDF/UA](/words/ar/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) التي تصف معيار PDF وISO ذي الصلة لمعايير PDF التي تدعم Aspose.Words
- مقالة [ما هو معيار PDF الأفضل للاختيار؟](/words/ar/net/which-pdf-standard-is-better-to-choose/) لتحديد معايير PDF المناسبة لأي حالة

- توضح المقالة [العمل مع PDF/A أو PDF/UA](/words/ar/net/working-with-pdfa-or-pdfua/) متطلبات محتوى المستند بتنسيقات PDF/A وPDF/UA - بشكل أساسي متطلبات البنية والخطوط

- تصف المقالة [تحذيرات بشأن مشكلة إمكانية الوصول عند الحفظ في PDF/A وPDF/UA](/words/ar/net/warnings-when-saving-to-pdfa-and-pdfua/) متطلبات الوصول إلى المحتوى التي يفرضها PDF/A وPDF/UA
