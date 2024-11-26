---
title: إنشاء BarCode في Java
second_title: Aspose.Words ل Java
articleTitle: إنشاء صورة BarCode مخصصة
linktitle: إنشاء صورة BarCode مخصصة
description: "مثال على إنشاء شكل الباركود باستخدام Java."
type: docs
weight: 350
url: /ar/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

الباركود هو تمثيل مرئي للبيانات في شكل خطوط أو أنماط متوازية. تستخدم الرموز الشريطية على نطاق واسع في العديد من الصناعات مثل البيع بالتجزئة والخدمات اللوجستية والرعاية الصحية والخدمات المصرفية وغيرها الكثير.

Microsoft Word يسمح للمستخدمين بتضمين الباركود مباشرة في المستندات باستخدام الحقول. يمكن للمستخدمين إدراج نوع معين من الباركود، مثل رمز QR أو رمز شريطي خطي، باستخدام [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) حقل.

في هذه المقالة، سننظر في كيفية تنفيذ حقل BARCODE في Aspose.Words وكيف يسمح Aspose.Words للمستخدمين بالعمل مع مستندات ورد التي تمت إضافة رمز شريطي إليها بالفعل.

## أنواع الباركود بدعم من Aspose.Words

Aspose.Words يدعم أنواع مختلفة من الباركود. يتم تمرير نوع الباركود كقيمة سلسلة في خاصية [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

منذ العمل مع الباركود ضمن وظيفة Aspose.Words محدودة، يمكن للمستخدم استخدام أي مكتبة، بما في ذلك أسبوس.الباركود، أو كتابة تقديم بلده للعمل مع الباركود. يمكنك معرفة المزيد عن أنواع الباركود [بدعم من أسبوس.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

عند الحفظ في تنسيقات الكلمات التي تدعم الرموز الشريطية، يمكنك استخدام أي نوع من الباركود [بدعم من Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). إذا تم تمرير نوع غير صحيح من الباركود، وكلمة عرض خطأ.

عند حفظ إلى صيغ أخرى، مثل PDF، Aspose.Words المندوبين الباركود تقديم لرمز المستخدم، وبالتالي فإن المستخدم يقتصر على أنواع الباركود تنفيذها أو المكتبة المستخدمة.

## أدخل شريطا شريطيا في مستند أو قم بتحميل مستند به رمز شريطي مضاف

Aspose.Words يوفر القدرة على:

1. إدراج رمز شريطي برمجيا في مستند باستخدام [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) و [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) رموز الحقول
2. أو تحميل مستند ورد مع الباركود المدرجة بالفعل في ذلك لمزيد من العمل

يحتوي Aspose.Words على واجهة لإنشاء رموز شريطية مخصصة تجعلها سهلة الاستخدام [Aspose.Words](https://products.aspose.com/words/java/) و [أسبوس.BarCode](https://products.aspose.com/barcode/java/) معا لتقديم صور الباركود في مستندات الإخراج. على سبيل المثال، يمكنك إنشاء مستند DOC أو OOXML أو RTF وإضافة حقل DISPLAYBARCODE إليه باستخدام Aspose.Words. أو يمكنك تحميل DOC، OOXML أو RTF وثيقة مع DISPLAYBARCODE الحقل الموجود بالفعل في ذلك وتوفير تنفيذ مولد الباركود مخصص.

يحتوي حقل DISPLAYBARCODE النموذجي على بناء الجملة التالي:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

يوجد أدناه مثال على مولد الكود باستخدام Aspose.Words و أسبوس.BarCode APIs. يوضح هذا المثال كيفية إدراج صور الباركود في موضع حقل DISPLAYBARCODE في مستند ورد:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

يمكنك أيضا حفظ المستند باستخدام الرمز الشريطي المحمل أو المدرج حديثا بتنسيقات صفحات ثابتة مثل PDF، XPS، إلخ. يوضح مثال الكود التالي كيفية حفظ مستند ورد بتنسيق PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

لمزيد من المعلومات حول تحويل المستندات من تنسيق إلى آخر، راجع [تحويل مستند](/words/java/convert-a-document/) قسم التوثيق.

{{% /alert %}}

{{% alert color="primary" %}}

يمكنك أيضا استخدام واجهة [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) لتحويل الرموز الشريطية المضمنة في مستندات ورد إلى صور. يمكن استخراج الصور الناتجة من المستند – راجع مقالة العمل مع الصور للحصول على التفاصيل.

{{% /alert %}}

## حدد خيارات الباركود

عند العمل مع الباركود، يمكنك تعيين بعض الخصائص الإضافية. Aspose.Words يوفر لك فئة [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - فئة لمعلمات الباركود لتمريرها إلى BarcodeGenerator.

Aspose.Words يدعم جزءا لا يتجزأ من قرار 96 نقطة في البوصة للصور التي تم إنشاؤها باستخدام [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)، مما يحد من الحد الأدنى لحجم صورة الباركود. لمعالجة هذا، يمكن للمطورين إدراج صور الباركود يدويا بدقة الهدف في مستند ورد وحفظها بالتنسيق المطلوب. لمزيد من التفاصيل والأمثلة حول العمل مع الباركود، راجع المقالة [قراءة الباركود من وثائق وورد](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
