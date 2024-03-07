---
title: تمكين ميزات OpenType في C#
second_title: Aspose.Words لـ .NET
articleTitle: تمكين ميزات OpenType
linktitle: تمكين ميزات OpenType
description: "ميزات الطباعة المتقدمة باستخدام C#."
type: docs
weight: 25
url: /ar/net/enable-opentype-features/
---

OpenType هو تنسيق خط تم تقديمه لتوفير دعم أفضل للغات وأنظمة الكتابة الدولية مقارنةً بـ PostScript وTrueType. تُعرف ميزات تخطيط OpenType عمومًا باسم ميزات OpenType. توفر حزمة Aspose.Words.Shaping.HarfBuzz الدعم لميزات OpenType في Aspose.Words باستخدام محرك تشكيل النص HarfBuzz.

Aspose.Words قادر على استخدام كائنات تشكيل النص المتوفرة خارجيًا. يمثل مشكل النص الخط ويحسب معلومات التشكيل للنص. يشير المستند عادة إلى خطوط متعددة وبالتالي فإن مصنع تشكيل النص ضروري. تحتوي هذه الحزمة على تطبيق لمصنع تشكيل النص الذي تستخدمه خاصية Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

يتم تنفيذ تشكيل النص فقط عند التصدير إلى تنسيقات PDF أو XPS.

{{% /alert %}}

في التطبيق النموذجي، تتم مشاركة مثيل واحد لمصنع تشكيل النص بين كافة مثيلات المستند. كلما تم إنشاء مشكل النص، يتم الوصول إلى ملف الخط. يعد تحليل ملف الخط عملية مكلفة، لذا يوصى بالتخزين المؤقت. تطبق Aspose.Words فئة BasicTextShaperCache التي تغلف تطبيق مصنع تشكيل النص وتخزن مؤقتًا مثيلات مشكل النص التي تم إرجاعها بواسطة المصنع المغلف.

يوضح لك مثال التعليمات البرمجية التالي كيفية تشغيل دعم ميزات OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
