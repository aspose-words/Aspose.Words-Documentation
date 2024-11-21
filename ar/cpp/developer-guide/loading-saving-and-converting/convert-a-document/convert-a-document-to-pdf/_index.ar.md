---
title: تحويل مستند إلى PDF في C++
second_title: Aspose.Words ل C++
articleTitle: تحويل مستند إلى PDF
linktitle: تحويل مستند إلى PDF
description: "تحويل مستند إلى PDF باستخدام C++. ويدعم صيغ الإدخال المختلفة، بما في ذلك كلمة، OpenOffice، صورة و eBook الأشكال."
type: docs
weight: 10
url: /ar/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

تعد القدرة على تحويل المستندات بسهولة وموثوقية من تنسيق إلى آخر ميزة رئيسية في Aspose.Words. أحد أكثر التنسيقات شيوعا للتحويل هو PDF - تنسيق تخطيط ثابت، والذي يحافظ على المظهر الأصلي للمستند أثناء عرضه على منصات مختلفة. يستخدم مصطلح" التقديم " في Aspose.Words لوصف عملية تحويل مستند إلى تنسيق ملف مرقم صفحات أو يحتوي على مفهوم الصفحات.

## تحويل مستند كلمة إلى PDF {#convert-a-word-document-to-pdf}

التحويل من كلمة إلى PDF عملية معقدة إلى حد ما تتطلب عدة مراحل من الحساب. Aspose.Words يحاكي محرك التخطيط الطريقة التي يعمل بها محرك تخطيط الصفحة Microsoft Word، مما يجعل مستندات الإخراج PDF تبدو قريبة قدر الإمكان مما يمكنك رؤيته في Microsoft Word.

باستخدام Aspose.Words، يمكنك تحويل مستند برمجيا من DOC أو DOCX إلى PDF دون استخدام Microsoft أوفيس. تشرح هذه المقالة كيفية إجراء هذا التحويل.

{{% alert color="primary" %}}

لاحظ أن عدد الصفحات في المستند يؤثر على وقت التحويل.

{{% /alert %}}

### تحويل DOCX أو DOC إلى PDF {#converting-doc-or-docx-to-pdf}

يعد التحويل من تنسيق المستند DOC أو DOCX إلى تنسيق PDF في Aspose.Words أمرا سهلا للغاية ويمكن تحقيقه باستخدام سطرين فقط من التعليمات البرمجية التي:

1. قم بتحميل المستند الخاص بك في كائن [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) باستخدام أحد منشئيه عن طريق تحديد اسم المستند بامتداد التنسيق الخاص به.
1. استدعاء إحدى طرق [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) على الكائن **Document** وحدد تنسيق الإخراج المطلوب كـ PDF عن طريق إدخال اسم ملف مع ".PDF " تمديد.

يوضح مثال الكود التالي كيفية تحويل مستند من DOCX إلى PDF باستخدام طريقة `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند ك PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض إخراج PDF.

لاحظ أنه باستخدام نفس التقنية، يمكنك تحويل أي مستند تنسيق تخطيط تدفق إلى تنسيق PDF.

{{% /alert %}}

### تحويل إلى معايير PDF مختلفة {#converting-to-various-pdf-standards}

Aspose.Words يوفر [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) التعداد لدعم تحويل DOC أو DOCX إلى معايير تنسيق PDF مختلفة (مثل PDF 1.7, PDF 1.5, الخ.).

يوضح مثال الكود التالي كيفية تحويل مستند إلى PDF 1.7 باستخدام [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) مع الامتثال إلى PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## تحويل الصور إلى PDF {#convert-an-image-to-pdf}

التحويل إلى PDF غير مقيد بتنسيقات المستندات Microsoft Word. يمكن أيضا تحويل أي تنسيق يدعمه Aspose.Words، بما في ذلك الذي تم إنشاؤه برمجيا، إلى PDF. على سبيل المثال، يمكننا تحويل الصور ذات الصفحة الواحدة، مثل JPEG, PNG, BMP, EMF, أو WMF، بالإضافة إلى صور متعددة الصفحات، مثل TIFF و GIF، إلى PDF.

يوضح مثال الكود التالي كيفية تحويل JPEG و TIFF الصور إلى PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

لجعل هذا الرمز يعمل، تحتاج إلى إضافة مراجع إلى Aspose.Words و `System.Drawing` إلى مشروعك.

## أنظر أيضا

- المادة [تقديم](/words/cpp/rendering/) لمزيد من المعلومات حول تنسيقات الصفحة الثابتة وتخطيط التدفق
- المادة [التحويل إلى تنسيق الصفحة الثابتة](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) لمزيد من المعلومات حول تخطيط الصفحة
- المادة [حدد خيارات العرض عند التحويل إلى PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) لمزيد من المعلومات حول استخدام فئة `PdfSaveOptions`
