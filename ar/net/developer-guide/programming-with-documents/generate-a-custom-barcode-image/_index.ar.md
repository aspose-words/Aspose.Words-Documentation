---
title: كيفية إنشاء باركود
second_title: Aspose.Words لـ .NET
articleTitle: توليد صورة باركود مخصصة
linktitle: توليد صورة باركود مخصصة
description: "مثال على توليد شكل الشفرة باستخدام C#."
type: docs
weight: 350
url: /ar/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

الشريط الشريطي هو تمثيل مرئي للبيانات في شكل خطوط متوازية أو أنماط. تستخدم رموز الشريط على نطاق واسع في مختلف الصناعات مثل التجزئة واللوجستيات والرعاية الصحية والخدمات المصرفية، وغيرها الكثير.

Microsoft Word يسمح للمستخدمين بتضمين الرموز الشريطية مباشرة في المستندات باستخدام حقول. يمكن للمستخدمين إدراج نوع محدد من الرمز الشريطي، مثل رمز الاستجابة السريعة أو شريط خطي، باستخدام حقل [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

في هذه المقالة، سنلقي نظرة على كيفية تنفيذ حقل الشفرة في Aspose.Words وكيف يسمح Aspose.Words للمستخدمين بالعمل مع مستندات Word التي تمت إضافة شفرة إليها مسبقًا.

## أنواع الباركود المدعومة بواسطة Aspose.Words

Aspose.Words يدعم أنواع مختلفة من الباركود. يتم تمرير نوع الباركود كقيمة سلسلة في الخاصية [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

نظراً لأن العمل مع الرموز الشريطية داخل وظائف Aspose.Words محدودة، يمكن للمستخدم استخدام أي مكتبة بما في ذلك Aspose.Barcode أو كتابة تحويله الخاص للعمل مع الرموز الشريطية. يمكنك معرفة المزيد عن أنواع الرموز الشريطية [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

عند حفظ تنسيقات "ورد" التي تدعم الباركود، يمكنك استخدام أي نوع من أنواع الباركود هو [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). إذا تم تمرير نوع خاطئ من الباركود، سيقوم "ورد" بعرض خطأ.

عند حفظ إلى تنسيقات أخرى، مثل PDF، Aspose.Words تفويض عرض الشفرة الشريطية للمستخدم التعليمات البرمجية، لذلك يحد المستخدم إلى أنواع الشفرة الشريطية من تنفيذهم أو المكتبة المستخدمة.

## إدراج رمز شريطي في مستند أو تحميل مستند برمز شريطي مضاف

Aspose.Words يوفر القدرة على:

1. برمجياً إدخال رمز شريطي إلى مستند باستخدام رموز [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) و [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. أو قم بتحميل مستند وورد مع وجود باركودز بداخلها أصلاً للقيام بالمزيد من الأعمال عليها

Aspose.Words له واجهة لتوليد رموز شريطية مخصصة مما يجعل من السهل استخدام [Aspose.Words](https://products.aspose.com/words/net/) و [Aspose.BarCode](https://products.aspose.com/barcode/net/) معًا لإنشاء صور الرمز الشريطي في مستندات الإخراج. على سبيل المثال، يمكنك إنشاء مستند DOC أو OOXML أو RTF وإضافة حقل DISPLAYBARCODE إليه باستخدام Aspose.Words. أو يمكنك تحميل مستند DOC أو OOXML أو RTF يحتوي بالفعل على حقل DISPLAYBARCODE وتوفير تنفيذك المخصص لمولد الرمز الشريطي.

يتكون حقل "DISPLAYBARCODE" النموذجي من ما يلي:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

أسفل هو مثال على مولد الكود باستخدام Aspose.Words و Aspose.BarCode API. هذا المثال يظهر كيفية إدراج صور رموز الشريط في موضع FIELD DISPLAYBARCODE في مستند Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

يمكنك أيضاً حفظ المستند مع الباركود المحمل أو الذي تم إدخاله حديثاً في تنسيقات الصفحات الثابتة مثل (PDF)، XPS، إلخ. يعرض المثال التالي كيفية حفظ مستند وورد بتنسيق PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

بالنسبة لمزيد من المعلومات حول تحويل المستندات من تنسيق إلى آخر، انظر [Convert a Document](/words/net/convert-a-document/) قسم التوثيق.

{{% /alert %}}

{{% alert color="primary" %}}

يمكنك استخدام واجهة [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) لتحويل رموز الباركود المضمنة في مستندات وورد إلى صور. يمكن استخراج الصور الناتجة من المستند - انظر مقالة "العمل مع الصور" للحصول على التفاصيل.

{{% /alert %}}

## تحديد الخيارات الباركود

عند العمل مع الشفرات، يمكنك تعيين بعض الخصائص الإضافية. Aspose.Words يوفر لك [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) الفئة – فئة لبارامترات الشفرة لتمريرها إلى BarcodeGenerator.

Aspose.Words تدعم الدقة المدمجة 96 ppi للصور التي تم إنشاؤها باستخدام [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)، والتي تحد من الحد الأدنى لحجم صورة الشريط. وللحد من ذلك، يمكن للمطورين إدخال صور شريطية مع الدقة المستهدفة يدويًا في مستند Word وحفظها بالشكل المطلوب. لمزيد من التفاصيل والأمثلة حول العمل مع الباركود، انظر المقالة [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
