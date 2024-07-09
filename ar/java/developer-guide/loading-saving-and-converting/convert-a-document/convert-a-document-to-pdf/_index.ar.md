---
title: Convert a Document to PDF in Java
second_title: Aspose.Words for Java
articleTitle: Convert a Document to PDF
linktitle: Convert a Document to PDF
description: "Convert a document in Word or any other supported format to PDF, which preserves the original appearance of a document during its rendering on various platforms using Java."
type: docs
weight: 10
url: /ar/java/convert-a-document-to-pdf/
---

إن القدرة على تحويل الوثائق بسهولة وبصورة موثوقة من شكل إلى آخر هي سمة رئيسية من سمات Aspose.Words. ومن أكثر أشكال التحويل شيوعاً PDF - وهو شكل ثابت، يحافظ على المظهر الأصلي لوثيقة أثناء إصدارها لمنابر مختلفة. يستخدم مصطلح " نوع الجنس " في Aspose.Words (ب) وصف عملية تحويل الوثيقة إلى شكل ملف تمهيداً أو مفهوم الصفحات.

## Convert a Word Document to PDF {#convert-a-word-document-to-pdf}

والتحول من كلمة إلى قوة الدفاع الشعبي عملية معقدة إلى حد ما تتطلب عدة مراحل من الحساب. Aspose.Words المحركات المصممة تدق الطريق Microsoft Wordتشغيل محركات تصميم الصفحات، مما يجعل وثائق إنتاج PDF تبدو أقرب ما يمكن مما تراه في Microsoft Word.

مع Aspose.Words يمكنك تحويل وثيقة من نسق (دي سي) أو (دي سي إكس) إلى (بي دي) بدون استخدام Microsoft المكتب وتوضح هذه المادة كيفية القيام بهذا التحويل.

{{% alert color="primary" %}}

ملاحظة أن عدد صفحات الوثيقة يؤثر على وقت التحويل.

{{% /alert %}}

### Converting DOCX or DOC to PDF {#converting-doc-or-docx-to-pdf}

التحول من شكل وثائق لجنة الرقابة أو شعبة تكنولوجيا المعلومات والاتصالات إلى شكل PDF في Aspose.Words سهل جدا ويمكن إنجازه بسطرين فقط من الرموز:

1 ضع وثيقتك في [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) يعترض على استخدام أحد مؤسسيه عن طريق تحديد اسم الوثيقة وتمديدها الشكلي.
1 استفزاز واحد من [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) الأساليب المتعلقة **Document** الجسم وتحديد الشكل المطلوب للنواتج كقوات الدفاع الشعبي من خلال إدخال اسم ملف مع التمديد ".

The following code example shows how to convert a document from DOCX into PDF using the `Save` الطريقة:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

وفي بعض الأحيان، من الضروري تحديد خيارات إضافية يمكن أن تؤثر على نتيجة إنقاذ وثيقة من وثائق التحالف. ويمكن تحديد هذه الخيارات باستخدام [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) درجة، تحتوي على خصائص تحدد كيفية عرض ناتج PDF.

ملاحظة أنه مع نفس التقنية، يمكنك تحويل أي وثيقة نسق التدفق إلى شكل PDF.

{{% /alert %}}

### Convert to Different PDF المعايير {#converting-to-various-pdf-standards}

Aspose.Words يوفر [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)(ب) عدّة لدعم تحويل شركة DOC أو DOCX إلى معايير مختلفة لنموذج PDF (مثل PDF 1.7, PDF 1.5, etc.).

The following code example demonstrates how to convert a document to PDF 1.7 using [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) مع الامتثال لـ PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Convert Images to PDF

عدم تقييد التحويل إلى قوات الدفاع الشعبي Microsoft Word صيغ الوثائق. أي شكل يدعمه Aspose.Words, ويمكن أيضاً تحويل ما يُنشأ من برامج إلى إدارة الدعم الميداني. فعلى سبيل المثال، يمكننا تحويل صور من صفحة واحدة، مثل JPEG، PNG، BMP، EMF، أو WMF، فضلا عن صور متعددة الصفحات، مثل TFF و GIF، إلى PDF.

The following code example shows how to convert JPEG and TIFF images to PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

لجعل هذا الرمز يعمل، تحتاج إلى إضافة إشارات إلى Aspose.Words, Java-نبيذ، ونزيف حزمة من الصور لمشروعك

## Reduce PDF الناتج

عندما تنقذ قوات الدفاع الشعبي، يمكنك تحديد ما إذا كنت ترغب في تحقيق الناتج الأمثل. لتفعل هذا، عليك أن تضبط [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) العلم إلى true, و من ثم الغواصات الملتوية و الغواصات الفارغة سوف تزيل الجيران glyphسيُعاد تصنيفها بنفس الشكل.

ويبين المثال الرمزي التالي كيفية تحقيق الناتج على النحو الأمثل:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

استخدام **OptimizeOutput** وقد تؤثر الممتلكات على دقة عرض المحتوى.

{{% /alert %}}

## انظر أيضا

- المادة [Rendering](/words/ar/java/rendering/) للحصول على مزيد من المعلومات عن الصيغ الثابتة للصفحات وصيغ الإنفاق
- المادة [تحويل إلى صفحة ثابتة](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) للحصول على مزيد من المعلومات في الصفحة
- المادة [تحديد خيارات تقديم الخدمات عند الانتقال إلى إدارة الدعم الميداني](/words/ar/java/specify-rendering-options-when-converting-to-pdf/) للحصول على مزيد من المعلومات عن استخدام `PdfSaveOptions` الصف
