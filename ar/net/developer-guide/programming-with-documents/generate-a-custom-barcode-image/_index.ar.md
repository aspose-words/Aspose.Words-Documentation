---
title: كيفية إنشاء الباركود
second_title: Aspose.Words لـ .NET
articleTitle: إنشاء صورة باركود مخصصة
linktitle: إنشاء صورة باركود مخصصة
description: "مثال على إنشاء شكل الباركود باستخدام C#."
type: docs
weight: 350
url: /ar/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

يحتوي Aspose.Words على واجهة لإنشاء رموز شريطية مخصصة مما يجعل من السهل جدًا استخدام Aspose.Words و[Aspose.BarCode](https://products.aspose.com/barcode/net/) معًا لعرض صور الرمز الشريطي في مستندات الإخراج. على سبيل المثال، يمكنك تحميل مستند DOC أو OOXML أو RTF يحتوي على حقل `DISPLAYBARCODE` في Aspose.Words، وتوفير تنفيذ مولد الباركود المخصص وحفظه في تنسيقات الصفحات الثابتة مثل PDF وXPS وما إلى ذلك.

يحتوي حقل `DISPLAYBARCODE` النموذجي على الصيغة التالية:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

يوجد أدناه نموذج لمولد التعليمات البرمجية الذي يستفيد من `Aspose.BarCode` API. يوضح هذا المثال كيفية إدراج صور الباركود في موضع حقل `DISPLAYBARCODE` في مستند Word باستخدام Aspose.Words و`Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
