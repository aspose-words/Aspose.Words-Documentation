---
title: تحويل PDF إلى تنسيقات المستندات الأخرى
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل PDF إلى تنسيقات المستندات الأخرى
linktitle: تحويل PDF إلى تنسيقات المستندات الأخرى
type: docs
description: "قم بتحويل تنسيقات PDF إلى Word مثل DOCX أو DOC أو تنسيقات الصور مثل JPG أو PNG أو أي تنسيقات أخرى يدعمها Aspose باستخدام `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /ar/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

يمكن لـ Aspose.Words تحميل تنسيق معقد مثل PDF. يفتح هذا فرصًا جديدة: من الممكن تحويل PDF إلى Word أو تنسيقات أخرى تجلب المستخدمين إلى الأمام في حل العديد من المشكلات التطبيقية.

## تحويل PDF إلى تنسيقات أخرى {#convert-pdf-to-other-formats}

التحويل الأكثر شيوعًا من PDF هو التحويل إلى تنسيقات Microsoft Word مثل DOCX وDOC، بالإضافة إلى تنسيقات الصور مثل JPG أو PNG. ومع ذلك، فإن تحويل مستند من تنسيق إلى آخر يتم بطريقة مألوفة.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل مستند من PDF إلى DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## حدد خيارات التحميل عند استيراد PDF {#specify-load-options-when-importing-pdf}

يوفر لك Aspose.Words فئة [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/)، والتي تتيح تحكمًا أكثر دقة في كيفية تحميل مستندات PDF.

ترث معظم الخصائص أو تُفرط في تحميل الخصائص الموجودة بالفعل في فئة [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). بالإضافة إلى ذلك، يتم تحديد عدد من الخصائص لتنسيق PDF. على سبيل المثال، يمكنك استخدام خصائص [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) و[page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) لتحديد نطاق الصفحات التي سيتم تحميلها من مستند PDF، وخصائص [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) للتحكم في ما إذا كان يجب تخطي الصور عند تحميل PDF. المعلمة المدعومة الأخرى هي [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/)، والتي يجب توفيرها للمستندات المحمية بكلمة مرور.

## دعم محتوى PDF {#supported-pdf-content}

يدعم البرنامج المساعد PDF2Word حاليًا أنواع البيانات التالية:

* فقرات نصية
* الصور
* الجداول
* القوائم
* الرؤوس والتذييلات
* الحواشي
* أرقام الصفحات
* نص من اليمين إلى اليسار (مع بعض القيود)
* ملفات PDF قابلة للبحث (ستتم إزالة الصور الأمامية لصالح نص الخلفية)

## الميزات المخططة {#planned-features}

لا تزال بعض الميزات في مرحلة التطوير المبكرة أو مضمنة في خريطة طريق التطوير:

* جدول المحتويات
* التعرف الضوئي على الحروف لملفات PDF القابلة للبحث وغير القابلة للبحث
* تقرير التطور
* نص متعدد الأعمدة
* الصيغ الرياضية
* المزيد من الحقول التلقائية (إلى جانب `PAGE` وNUMPAGES)

## استثناءات تحميل PDF

أثناء تحويل مستند PDF، قد يحدث أحد الاستثناءات التالية:

|  استثناء |  وصف |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  لا يمكن معالجة ملف PDF لسبب ما.<br /> {{% alert color="primary" %}}يمكنك الإبلاغ عن المشكلة إلى فريق التطوير لإجراء تحقيق مفصل باستخدام [دعم فني](/words/ar/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  ملف PDF محمي بواسطة Adobe DRM ولا يمكن فك تشفيره بواسطة Pdf2Word |
|   *PasswordProtectedFileException*  |  يجب توفير كلمة المرور الصحيحة لملف PDF محمي بكلمة مرور |


