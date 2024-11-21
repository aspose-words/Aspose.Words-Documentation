---
title: تحديث الحقول في C++
second_title: Aspose.Words ل C++
articleTitle: تحديث الحقول
linktitle: تحديث الحقول
description: "تعرف على كيفية تحديث الحقول في C++. تحديث الحقول برمجيا أو استخدام التحديث التلقائي للحقل باستخدام C++ API."
type: docs
weight: 30
url: /ar/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

عادة ما يحتوي الحقل المدرج في Microsoft Word بالفعل على قيمة محدثة. على سبيل المثال، إذا كان الحقل عبارة عن صيغة أو رقم صفحة، فسيحتوي على القيمة المحسوبة الصحيحة للإصدار المحدد من المستند. ولكن إذا كان لديك تطبيق يقوم بإنشاء أو تعديل مستند بحقول مثل دمج مستندين أو ملئه بالبيانات، فيجب تحديث جميع الحقول بشكل مثالي حتى يكون المستند مفيدا.

## كيفية تحديث الحقول

عند تحميل مستند، Aspose.Words يحاكي سلوك Microsoft Word مع خيار تحديث الحقول تلقائيا مغلقا. يمكن تلخيص السلوك على النحو التالي:

- عند فتح / حفظ مستند تظل الحقول سليمة
- يمكنك تحديث جميع الحقول في مستند بشكل صريح، على سبيل المثال، إعادة إنشاء `TOC`، عندما تحتاج إلى ذلك
- عند التقديم إلى PDF أو XPS يتم تحديث الحقول المتعلقة بترقيم الصفحات في الرؤوس/التذييلات
- عند تنفيذ mail merge يتم تحديث كافة الحقول تلقائيا

### تحديث الحقول برمجيا

لتحديث الحقول بشكل صريح في المستند بأكمله، ما عليك سوى استدعاء طريقة [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). لتحديث الحقول الموجودة في جزء من مستند، احصل على كائن [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) واستدعاء طريقة [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). في Aspose.Words، يمكنك الحصول على **Range** لأي عقدة في شجرة المستندات، مثل [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), الخ. باستخدام خاصية [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).يمكنك تحديث نتيجة حقل واحد عن طريق استدعاء طريقة [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### التحديث التلقائي للحقول المتعلقة بالصفحة أثناء العرض

عند تنفيذ تحويل مستند إلى تنسيق صفحة ثابتة على سبيل المثال إلى PDF أو XPS، سيقوم Aspose.Words تلقائيا بتحديث الحقول المتعلقة بتخطيط الصفحة `PAGE`، `PAGEREF` الموجودة في رؤوس/تذييلات المستند. يحاكي هذا السلوك سلوك Microsoft Word عند طباعة مستند.

إذا كنت تريد تحديث جميع الحقول الأخرى في المستند، فأنت بحاجة إلى الاتصال [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) قبل تقديم المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث كافة الحقول قبل تقديم مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### تحديث الحقل التلقائي خلال Mail Merge

عند تنفيذ mail merge، سيتم تحديث جميع الحقول في المستند تلقائيا. هذا لأن mail merge هي حالة تحديث ميداني. يواجه البرنامج حقلا mail merge ويحتاج إلى تحديث نتيجته، والتي تتضمن الحصول على القيمة من مصدر البيانات وإدخالها في الحقل. المنطق هو بالطبع أكثر تعقيدا، على سبيل المثال، عندما يتم الوصول إلى نهاية الوثيقة/mail merge المنطقة ولكن لا يزال هناك المزيد من البيانات ليتم دمجها، ثم المنطقة تحتاج إلى تكرار ومجموعة جديدة من الحقول المحدثة.

## تحديث LastSavedTime الممتلكات قبل الحفظ

يمكنك استخدام خاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) سواء لتحديث خاصية المستند المضمنة المقابلة [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث هذه الخاصية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


