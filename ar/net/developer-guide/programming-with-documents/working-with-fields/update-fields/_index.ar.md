---
title: تحديث الحقول C#
second_title: Aspose.Words لـ .NET
articleTitle: تحديث الحقول
linktitle: تحديث الحقول
description: "تعرف على كيفية تحديث الحقول في C#. قم بتحديث الحقول برمجيًا أو استخدم التحديث الميداني التلقائي باستخدام .NET API."
type: docs
weight: 30
url: /ar/net/update-fields/
---

عادةً، يحتوي الحقل المدرج في Microsoft Word بالفعل على قيمة محدثة. على سبيل المثال، إذا كان الحقل عبارة عن صيغة أو رقم صفحة، فسوف يحتوي على القيمة المحسوبة الصحيحة للإصدار المحدد من المستند. ولكن إذا كان لديك تطبيق يقوم بإنشاء أو تعديل مستند يحتوي على حقول مثل دمج مستندين أو ملؤه بالبيانات، فمن الأفضل أن يتم تحديث جميع الحقول حتى يكون المستند مفيدًا.

## كيفية تحديث الحقول

عندما يتم تحميل مستند، يحاكي Aspose.Words سلوك Microsoft Word مع إيقاف تشغيل خيار تحديث الحقول تلقائيًا. ويمكن تلخيص السلوك على النحو التالي:

- عند فتح/حفظ مستند تظل الحقول سليمة
- يمكنك تحديث جميع الحقول في المستند بشكل صريح، على سبيل المثال، إعادة إنشاء `TOC`، عندما تحتاج إلى ذلك
- عند الطباعة/العرض إلى PDF أو XPS، يتم تحديث الحقول المتعلقة بترقيم الصفحات في الرؤوس/التذييلات
- عند تنفيذ mail merge، يتم تحديث جميع الحقول تلقائيًا

### تحديث الحقول برمجيا

لتحديث الحقول بشكل صريح في المستند بأكمله، ما عليك سوى استدعاء الأسلوب [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). لتحديث الحقول الموجودة في جزء من المستند، احصل على كائن [Range](https://reference.aspose.com/words/net/aspose.words/range/) واستدعاء أسلوب [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). في Aspose.Words، يمكنك الحصول على **Range** لأي عقدة في شجرة المستندات، مثل [Section](https://reference.aspose.com/words/net/aspose.words/section/)، و[HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/)، و[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)، وما إلى ذلك باستخدام خاصية [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). يمكنك تحديث نتيجة حقل واحد عن طريق الاتصال بالطريقة [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### التحديث التلقائي للحقول ذات الصلة بالصفحة أثناء العرض

عند تنفيذ تحويل مستند إلى تنسيق صفحة ثابتة، على سبيل المثال، إلى PDF أو XPS، سيقوم Aspose.Words تلقائيًا بتحديث الحقول المرتبطة بتخطيط الصفحة `PAGE` و`PAGEREF` الموجودة في رؤوس/تذييلات المستند. يحاكي هذا السلوك سلوك Microsoft Word عند طباعة مستند.

إذا كنت تريد تحديث كافة الحقول الأخرى في المستند، فأنت بحاجة إلى الاتصال بـ [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) قبل عرض المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث كافة الحقول قبل تقديم المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### التحديث الميداني التلقائي أثناء Mail Merge

عند تنفيذ mail merge، سيتم تحديث جميع الحقول في المستند تلقائيًا. وذلك لأن mail merge هو حالة تحديث ميداني. يواجه البرنامج حقل mail merge ويحتاج إلى تحديث نتيجته، والتي تتضمن الحصول على القيمة من مصدر البيانات وإدراجها في الحقل. المنطق بالطبع أكثر تعقيدًا، على سبيل المثال، عند الوصول إلى نهاية منطقة المستند/mail merge ولكن لا يزال هناك المزيد من البيانات التي يتعين دمجها، فيجب تكرار المنطقة وتحديث المجموعة الجديدة من الحقول.

## تحديث الحقول ذات السمات القذرة

w:dirty هي سمة على مستوى الحقل ستقوم فقط بتحديث الحقل الذي تحدده عند فتح المستند. يخبر MS Word بتحديث هذا الحقل فقط في المرة التالية التي يتم فيها فتح المستند. يمكنك استخدام خاصية [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) لتحديد ما إذا كان سيتم تحديث الحقول بالسمة القذرة. عند تعيين قيمة **UpdateDirtyFields** على *true*، يتم تحديث جميع الحقول التي لها قيمة *true* لخاصية [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) أو [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) عند تحميل المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث الحقول التي تحتوي على السمة القذرة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## قم بتحديث خاصية LastSavedTime قبل الحفظ

يمكنك استخدام خاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) لتحديث خاصية المستند المضمنة المقابلة [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديث هذه الخاصية:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
