---
title: تحويل PDF إلى تنسيقات المستندات الأخرى في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل PDF إلى تنسيقات المستندات الأخرى
linktitle: تحويل PDF إلى تنسيقات المستندات الأخرى
type: docs
description: "قم بتحويل تنسيقات PDF إلى Word مثل DOCX أو DOC أو تنسيقات الصور مثل JPG أو PNG أو أي تنسيقات أخرى يدعمها Aspose.Words باستخدام C#."
keywords: convert pdf to other formats c#
weight: 45
url: /ar/net/convert-pdf-to-other-document-formats/
---

يمكن لـ Aspose.Words تحميل تنسيق معقد مثل PDF. يفتح هذا فرصًا جديدة: من الممكن تحويل PDF إلى Word أو تنسيقات أخرى تجلب المستخدمين إلى الأمام في حل العديد من المشكلات التطبيقية.

## المتطلبات الأساسية

* تمت إضافة إشارة إلى حزمة Aspose.Words ***أو** * إلى Aspose.Words.Pdf2Word.dll.
* على الأقل .NET Framework 4.6.1 أو .NET Standard 2.0. يتم أيضًا دعم أهداف مثل .NET Core 2.x أو 3.0 و.NET 5 وXamarin عبر التوافق مع .NET Standard.

## تحويل PDF إلى صيغ مختلفة {#convert-pdf-to-other-formats}

التحويل الأكثر شيوعًا من PDF هو التحويل إلى تنسيقات Microsoft Word مثل DOCX وDOC، بالإضافة إلى تنسيقات الصور مثل JPG أو PNG. ومع ذلك، فإن تحويل مستند من تنسيق إلى آخر يتم بطريقة مألوفة.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل مستند من PDF إلى DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## حدد خيارات التحميل عند استيراد PDF {#specify-load-options-when-importing-pdf}

يوفر لك Aspose.Words فئة [PdfLoadOptions](https://reference.aspose.com/words/ar/net/aspose.words.loading/pdfloadoptions/)، والتي تتيح تحكمًا أكثر دقة في كيفية تحميل مستندات PDF.

ترث معظم الخصائص أو تُفرط في تحميل الخصائص الموجودة بالفعل في فئة `LoadOptions`. بالإضافة إلى ذلك، يتم تحديد عدد من الخصائص لتنسيق PDF. على سبيل المثال، يمكنك استخدام خصائص [PageCount](https://reference.aspose.com/words/ar/net/aspose.words.loading/pdfloadoptions/pagecount/) و[PageIndex](https://reference.aspose.com/words/ar/net/aspose.words.loading/pdfloadoptions/pageindex/) لتحديد نطاق الصفحات التي سيتم تحميلها من مستند PDF، وخصائص [SkipPdfImages](https://reference.aspose.com/words/ar/net/aspose.words.loading/pdfloadoptions/skippdfimages/) للتحكم في ما إذا كان يجب تخطي الصور عند تحميل PDF. المعلمة المدعومة الأخرى هي [Password](https://reference.aspose.com/words/ar/net/aspose.words.loading/loadoptions/password/)، والتي يجب توفيرها لـ [المستندات المحمية بكلمة مرور](/words/net/protect-documents-and-parts-of-documents/).

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

## الميزات المستقبلية {#planned-features}

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
|  `FileLoadException`               |  لا يمكن معالجة ملف PDF لسبب ما.<br /> {{% alert color="primary" %}}يمكنك الإبلاغ عن المشكلة إلى فريق التطوير لإجراء تحقيق مفصل باستخدام [دعم فني](/words/ar/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  ملف PDF محمي بواسطة Adobe DRM ولا يمكن فك تشفيره بواسطة Pdf2Word |
|  `PasswordProtectedFileException`  |  يجب توفير كلمة المرور الصحيحة لملف PDF محمي بكلمة مرور |

## أنظر أيضا

* [إشارة Nuget إلى Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

