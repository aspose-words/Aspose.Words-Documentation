---
title: تمكين OpenType الميزات في Java
second_title: Aspose.Words ل Java
articleTitle: تمكين OpenType الميزات
linktitle: تمكين OpenType الميزات
description: "ميزات الطباعة المتقدمة في Aspose.Words ل Java."
type: docs
weight: 25
url: /ar/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType هو تنسيق خط، تم تقديمه لتوفير دعم أفضل للغات الدولية وأنظمة الكتابة مقارنة بـ PostScript و TrueType. تعرف ميزات تخطيط OpenType عموما باسم OpenType الميزات. Aspose.Words.تشكيل.توفر حزمة HarfBuzz دعما لميزات OpenType في Aspose.Words باستخدام محرك تشكيل النص `HarfBuzz`.

Aspose.Words قادر على استخدام كائنات النص المشكل المقدمة خارجيا. يمثل المشكل النص الخط ويحسب تشكيل المعلومات للنص. يشير المستند عادة إلى خطوط متعددة وبالتالي فإن مصنع تشكيل النص ضروري. تحتوي هذه الحزمة على تنفيذ مصنع المشكل النص المستخدمة من قبل Aspose.Words.تخطيط.LayoutOptions.TextShaperFactory خاصية.

{{% alert color="primary" %}}

يتم تنفيذ تشكيل النص فقط عند التصدير إلى PDF أو XPS التنسيقات.

{{% /alert %}}

في تطبيق نموذجي مثيل واحد من مصنع المشكل النص هو مشترك بين جميع مثيلات الوثيقة. كلما تم إنشاء المشكل النص يتم الوصول إلى ملف الخط. تحليل ملف الخط هو عملية مكلفة وبالتالي ينصح التخزين المؤقت. Aspose.Words تنفذ BasicTextShaperCache الفئة التي يلتف النص المشكل تنفيذ المصنع ومخابئ مثيلات النص المشكل عاد من قبل المصنع ملفوفة.

يوضح لك مثال الكود التالي كيفية تشغيل دعم ميزات OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
