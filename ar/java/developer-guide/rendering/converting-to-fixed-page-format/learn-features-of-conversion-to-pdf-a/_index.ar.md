---
title: التحويل إلى PDF/A و PDF/UA
second_title: Aspose.Words ل Java
articleTitle: تعرف على ميزات التحويل إلى PDF/A و PDF/UA
linktitle: تعرف على ميزات التحويل إلى PDF/A و PDF/UA
description: "تحويل إلى PDF/A-1, PDF/A-2, PDF/A-4 و PDF/UA باستخدام Java. اختر أفضل معيار PDF لتحويل مستند باستخدام Java."
type: docs
weight: 25
url: /ar/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF هو تنسيق صفحة ثابت يحظى بشعبية كبيرة بين المستخدمين ويدعمه على نطاق واسع العديد من التطبيقات، حيث يبدو مستند PDF كما هو على أي جهاز. لهذا السبب، يعد التحويل إلى PDF ميزة مهمة في Aspose.Words.

PDF هو تنسيق معقد في حد ذاته، لأنه يحتوي على بنية ملف محددة، ونموذج رسومي، وتضمين الخط، وبعض وظائف الإخراج المعقدة مثل علامات بنية المستند، والتشفير، والتوقيعات الرقمية، والنماذج القابلة للتحرير. بالإضافة إلى ذلك، يتطلب تحويل مستند إلى PDF عدة مراحل حسابية معقدة وتستغرق وقتا طويلا.

في هذا القسم، سننظر في المشكلات الرئيسية التي قد تنشأ عند العمل مع المستندات بمعايير PDF المختلفة ووصف خيارات حلها.

## التي PDF معيار Aspose.Words يدعم

Aspose.Words الآن يسمح للمستخدمين للعمل مع PDF/A-1، PDF/A-2 و PDF/A-4 الأشكال، وكذلك PDF/UA-1:

* PDF/A-1 له قيود خطيرة مثل الشفافية وبعض خيارات الضغط محظورة
* PDF/A-2 يلغي بعض قيود PDF/A-1، مثل دعم الشفافية وتأثيرات الطبقة أو تضمين OpenType الخطوط
* PDF/A-4 يفترض مستويات المطابقة المنقحة: المطابقة العادية PDF/A-4 تعادل مستوى المطابقة الخاص بالإصدارات السابقة، ويتم إزالة المستوى أ
* PDF/UA-1 يجب وضع علامة على المحتوى وتوحيده وفقا لـ ISO 32000-1: 2008

PDF/A هي ISO-نسخة موحدة من PDF مخصصة للاستخدام في أرشفة المستندات الإلكترونية وتخزينها على المدى الطويل. في الوقت نفسه، PDF/UA هو نسخة أخرى ISO موحدة من PDF مصممة لضمان إمكانية الوصول للأشخاص ذوي الإعاقة الذين يستخدمون التكنولوجيا المساعدة. لتحديد مستوى الامتثال لمعايير PDF، استخدم خاصية [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance). نظرا لظروف التخزين، يجب أن يتضمن المستند PDF/A جميع الخطوط وتعطيل التشفير، بينما يجب أن يتضمن PDF/UA جميع الخطوط فقط.

في هذا القسم، سنلقي نظرة فاحصة على العمل مع المستندات PDF/A أو PDF/UA-1.

## ذات الصلة ISO لمعايير PDF

لمعرفة المزيد حول معايير PDF المختلفة، تحقق مما يلي ISOs:

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
* [كيفية إضافة نص بديل إلى شكل أو صورة أو مخطط أو SmartArt رسم أو كائن آخر في Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [كيفية إضافة نص بديل ومعلومات تكميلية إلى العلامات](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (أو قراءة نفس المعلومات في [Adobe Acrobat دليل المستخدم](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [كيفية إعداد ActualText إدخال للنص](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)، قسم" إضافة نص فعلي لمصطلح مختصر أو صيغة أو رمز غير يونيكود"
* [رسم خرائط يونيكود للخطوط الرمزية Windows الشائعة](http://www.alanwood.net/demos/webdings.html)
