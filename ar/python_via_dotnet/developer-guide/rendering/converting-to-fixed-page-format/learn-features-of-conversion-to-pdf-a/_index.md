---
title: التحويل إلى PDF/A وPDF/UA
second_title: Aspose.Words لـ Python via .NET
articleTitle: تعرف على ميزات التحويل إلى PDF/A وPDF/UA
linktitle: تعرف على ميزات التحويل إلى PDF/A وPDF/UA
description: "قم بالتحويل إلى PDF/A-1، وPDF/A-2، وPDF/A-4، وPDF/UA باستخدام Python. اختر أفضل معيار PDF لتحويل مستند باستخدام Python via .NET."
type: docs
weight: 25
url: /ar/python-net/learn-features-of-conversion-to-pdf-a/
---

PDF هو تنسيق صفحة ثابتة يحظى بشعبية كبيرة بين المستخدمين ويدعمه على نطاق واسع العديد من التطبيقات، حيث أن مستند PDF يبدو بنفس الشكل على أي جهاز. لهذا السبب، يعد التحويل إلى PDF ميزة مهمة في Aspose.Words.

يعد PDF تنسيقًا معقدًا في حد ذاته، حيث يحتوي على بنية ملف محددة ونموذج رسومي وتضمين خط وبعض وظائف الإخراج المعقدة مثل علامات بنية المستند والتشفير والتوقيعات الرقمية والنماذج القابلة للتحرير. بالإضافة إلى ذلك، يتطلب تحويل مستند إلى PDF عدة مراحل حسابية، وهي مراحل معقدة وتستغرق وقتًا طويلاً.

في هذا القسم، سننظر في المشكلات الرئيسية التي قد تنشأ عند العمل مع المستندات بمعايير PDF المختلفة ووصف خيارات حلها.

## ما هو معيار PDF الذي يدعمه Aspose.Words

يسمح Aspose.Words الآن للمستخدمين بالعمل مع تنسيقات PDF/A-1، وPDF/A-2، وPDF/A-4، بالإضافة إلى PDF/UA-1:

- يحتوي PDF/A-1 على قيود خطيرة مثل الشفافية وبعض خيارات الضغط محظورة
- يزيل PDF/A-2 بعض القيود المفروضة على PDF/A-1، مثل دعم الشفافية وتأثيرات الطبقة أو تضمين خطوط OpenType
- يفترض PDF/A-4 مستويات مطابقة منقحة: مطابقة PDF/A-4 العادية تعادل مطابقة مستوى U للإصدارات السابقة، وتتم إزالة مستوى التوافق A
- يجب وضع علامة على محتوى PDF/UA-1 وتوحيده وفقًا لـ ISO 32000-1: 2008

PDF/A هو إصدار قياسي من ISO لملف PDF مخصص للاستخدام في أرشفة المستندات الإلكترونية وتخزينها على المدى الطويل. وفي الوقت نفسه، يعد PDF/UA إصدارًا قياسيًا آخر من ISO لملف PDF مصممًا لضمان إمكانية الوصول للأشخاص ذوي الإعاقة الذين يستخدمون التكنولوجيا المساعدة. لتحديد مستوى التوافق مع معايير PDF، استخدم خاصية [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/). نظرًا لظروف التخزين، يجب أن يقوم مستند PDF/A بتضمين جميع الخطوط وتعطيل التشفير، بينما يجب أن يقوم PDF/UA بتضمين جميع الخطوط فقط.

في هذا القسم، سنلقي نظرة فاحصة على العمل مع مستندات PDF/A أو PDF/UA-1.

## ISO ذات الصلة لمعايير PDF

لمعرفة المزيد حول معايير PDF المختلفة، تحقق من ملفات ISO التالية:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## أنظر أيضا

* [كيفية تحرير علامات بنية المستند في Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [كيفية التحقق من لغة النص أو تحريرها في Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [كيفية تغيير لغة النص في Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [كيفية إضافة نص بديل إلى شكل أو صورة أو مخطط أو رسم SmartArt أو أي كائن آخر في Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [كيفية إضافة نص بديل ومعلومات تكميلية إلى العلامات](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (أو قراءة نفس المعلومات في [دليل مستخدم Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [كيفية إعداد إدخال ActualText للنص](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)، قسم "إضافة نص فعلي لمصطلح مختصر أو صيغة أو رمز غير Unicode"
* [تعيين Unicode لخطوط Windows الرمزية الشائعة](http://www.alanwood.net/demos/webdings.html)