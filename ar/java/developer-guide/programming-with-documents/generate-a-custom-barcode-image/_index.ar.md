---
title: أنشئ رموزًا شريطية في Java
second_title: Aspose.Words من أجل Java
articleTitle: توليد صورة باركود مخصصة
linktitle: توليد صورة باركود مخصصة
description: "مثال على توليد شكل الشفرة الشريطية باستخدام Java."
type: docs
weight: 350
url: /ar/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

الباركود هو تمثيل مرئي للبيانات على شكل خطوط موازية أو أنماط. تستخدم الباركود بشكل واسع في مختلف الصناعات مثل التجزئة، والخدمات اللوجستية، والرعاية الصحية، والتمويل، وغيرها الكثير.

Microsoft Word يسمح للمستخدمين بدمج الباركودات مباشرة في المستندات باستخدام حقول. يمكن للمستخدمين إدخال نوع محدد من الباركود، مثل رمز الاستجابة السريعة أو شريط خطي باستخدام حقل [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

في هذه المقالة، سننظر إلى كيفية تنفيذ حقل الشفرة الشريطية في Aspose.Words وكيف يسمح Aspose.Words للمستخدمين بالعمل مع وثائق Word التي تمت إضافة شفرة شريطية إليها.

## أنواع رموز الاستجابة التي تدعمها Aspose.Words

Aspose.Words يدعم أنواع مختلفة من الباركود. يتم تمرير نوع الباركود كقيمة سلسلة في الخاصية [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

بما أن العمل مع الباركود في وظائف Aspose.Words محدودة، يمكن للمستخدم استخدام أي مكتبة بما في ذلك Aspose.Barcode أو كتابة تصويده الخاص للعمل مع الباركود. يمكنك معرفة المزيد عن أنواع الباركود [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

عند حفظ إلى تنسيقات وورد التي تدعم الباركود، يمكنك استخدام أي نوع من أنواع الباركود هو [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). إذا تم تمرير نوع خاطئ من الباركود، سيتم عرض خطأ من قبل وورد.

عند حفظ إلى تنسيقات أخرى، مثل pdf، Aspose.Words تفويض عرض الشفرة الشريطية إلى كود المستخدم، لذا فهو محدود إلى أنواع الشفرة الشريطية من تنفيذهم أو المكتبة المستخدمة.

## أدخل رمز شريطي في مستند أو قم بتحميل مستند مع وجود رمز شريطي مضاف

يوفر Aspose.Words القدرة على:

1. إدخال رمز شريطي برمجياً في مستند باستخدام " [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) " و " [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) " كود الحقل
2. أو تحميل مستند word مع رموز الباركود التي تم إدخالها بالفعل فيه للعمل الإضافي

Aspose.Words لديه واجهة لتوليد رموز شريطية مخصصة تجعل من السهل استخدام [Aspose.Words](https://products.aspose.com/words/java/) و [Aspose.BarCode](https://products.aspose.com/barcode/java/) معًا لعرض صور الرمز الشريطي في مستندات الإخراج. على سبيل المثال، يمكنك إنشاء مستند DOC أو OOXML أو RTF وإضافة حقل DISPLAYBARCODE إليه باستخدام Aspose.Words. أو يمكنك تحميل مستند DOC أو OOXML أو RTF يحتوي بالفعل على حقل DISPLAYBARCODE وتوفير تنفيذك الخاص لمولد الرموز الشريطية المخصصة.

يتكون حقل DISPLAYBARCODE النموذجي من ما يلي:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

في الأسفل هو مثال على مولد كود باستخدام Aspose.Words وAspose.BarCode API. هذا المثال يوضح كيفية إدراج الصور الباركود في موقف الحقل DISPLAYBARCODE في مستند وورد:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

يمكنك أيضاً حفظ المستند مع الرمز الشريطي المحمل أو الذي تم إدخاله حديثاً في تنسيقات الصفحات الثابتة مثل PDF، XPS، إلخ. يوضح المثال التالي من التعليمات البرمجية كيفية حفظ مستند Word بتنسيق PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

للحصول على معلومات أكثر عن تحويل المستندات من تنسيق إلى آخر، انظر قسم [Convert a Document](/words/java/convert-a-document/) في توثيقنا.

{{% /alert %}}

{{% alert color="primary" %}}

يمكنك أيضا استخدام واجهة [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) لتحويل رموز الباركود المضمنة في وثائق Word إلى صور. يمكن استخراج الصور الناتجة من المستند – راجع مقالة العمل مع الصور لمزيد من التفاصيل.

{{% /alert %}}

## حدد خيارات الباركود

عند العمل مع الرموز الشريطية، يمكنك تعيين بعض الخصائص الإضافية. Aspose.Words يوفر لك [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) الفئة – فئة لبارامترات الرمز الشريطي لتمريرها إلى BarcodeGenerator.

Aspose.Words يدعم دقة 96 ppi المدمجة للصور التي تم إنشاؤها باستخدام [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)، والتي تحد من الحد الأدنى لحجم صورة الشفرة الشريطية. وللتصدي لهذا، يمكن للمطورين إدراج صور الشفرة الشريطية مع الدقة المستهدفة يدويًا في مستند Word وحفظها بالشكل المطلوب. لمزيد من التفاصيل والأمثلة حول العمل مع الشفرات الشريطية، انظر المقالة [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
