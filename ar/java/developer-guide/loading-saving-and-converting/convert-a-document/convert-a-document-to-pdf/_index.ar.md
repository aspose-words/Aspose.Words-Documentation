---
title: تحويل مستند إلى PDF في Java
second_title: Aspose.Words ل Java
articleTitle: تحويل مستند إلى PDF
linktitle: تحويل مستند إلى PDF
description: "تحويل مستند في ورد أو أي تنسيق آخر مدعوم إلى PDF، والذي يحافظ على المظهر الأصلي للمستند أثناء عرضه على منصات مختلفة باستخدام Java."
type: docs
weight: 10
url: /ar/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
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

1. قم بتحميل المستند الخاص بك في كائن [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) باستخدام أحد منشئيه عن طريق تحديد اسم المستند بامتداد التنسيق الخاص به.
1. استدعاء إحدى طرق [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) على الكائن **Document** وحدد تنسيق الإخراج المطلوب كـ PDF عن طريق إدخال اسم ملف مع ".PDF " تمديد.

يوضح مثال الكود التالي كيفية تحويل مستند من DOCX إلى PDF باستخدام طريقة `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند ك PDF. يمكن تحديد هذه الخيارات باستخدام فئة [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض إخراج PDF.

لاحظ أنه باستخدام نفس التقنية، يمكنك تحويل أي مستند تنسيق تخطيط تدفق إلى تنسيق PDF.

{{% /alert %}}

### تحويل إلى معايير PDF مختلفة {#converting-to-various-pdf-standards}

Aspose.Words يوفر [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)التعداد لدعم تحويل DOC أو DOCX إلى معايير تنسيق PDF مختلفة (مثل PDF 1.7, PDF 1.5, الخ.).

يوضح مثال الكود التالي كيفية تحويل مستند إلى PDF 1.7 باستخدام [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) مع الامتثال ل PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## تحويل الصور إلى PDF

التحويل إلى PDF غير مقيد بتنسيقات المستندات Microsoft Word. يمكن أيضا تحويل أي تنسيق يدعمه Aspose.Words، بما في ذلك الذي تم إنشاؤه برمجيا، إلى PDF. على سبيل المثال، يمكننا تحويل الصور ذات الصفحة الواحدة، مثل JPEG, PNG, BMP, EMF, أو WMF، بالإضافة إلى صور متعددة الصفحات، مثل TIFF و GIF، إلى PDF.

يوضح مثال الكود التالي كيفية تحويل JPEG و TIFF الصور إلى PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

لجعل هذا الرمز يعمل، تحتاج إلى إضافة مراجع إلى Aspose.Words، Java.أوت.صورة, وجافاكس.حزم فئة إيماجيو لمشروعك.

## تقليل حجم الإخراج PDF

عند الحفظ إلى PDF، يمكنك تحديد ما إذا كنت تريد تحسين الإخراج. للقيام بذلك، تحتاج إلى تعيين علامة [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) على صحيح، ثم ستتم إزالة اللوحات المتداخلة الزائدة عن الحاجة واللوحات الفارغة، وسيتم تسلسل الحروف الرسومية المجاورة بنفس التنسيق.

يوضح مثال التعليمات البرمجية التالية كيفية تحسين الإخراج:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

قد يؤثر استخدام خاصية **OptimizeOutput** على دقة عرض المحتوى.

{{% /alert %}}

## أنظر أيضا

- المادة [تقديم](/words/java/rendering/) لمزيد من المعلومات حول تنسيقات الصفحة الثابتة وتخطيط التدفق
- المادة [التحويل إلى تنسيق الصفحة الثابتة](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) لمزيد من المعلومات حول تخطيط الصفحة
- المادة [حدد خيارات العرض عند التحويل إلى PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) لمزيد من المعلومات حول استخدام فئة `PdfSaveOptions`
