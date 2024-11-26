---
title: تحديث الحقول في Java
second_title: Aspose.Words ل Java
articleTitle: تحديث الحقول
linktitle: تحديث الحقول
description: "تعرف على كيفية تحديث الحقول في Java. تحديث الحقول برمجيا أو استخدام التحديث التلقائي للحقل باستخدام Java API"
type: docs
weight: 30
url: /ar/java/update-field/
timestamp: 2024-01-27-14-07-04
---

عادة ما يحتوي الحقل المدرج في Microsoft Word بالفعل على قيمة محدثة. على سبيل المثال، إذا كان الحقل عبارة عن صيغة أو رقم صفحة، فسيحتوي على القيمة المحسوبة الصحيحة للإصدار المحدد من المستند. ولكن إذا كان لديك تطبيق يقوم بإنشاء أو تعديل مستند بحقول مثل دمج مستندين أو ملئه بالبيانات، فيجب تحديث جميع الحقول بشكل مثالي حتى يكون المستند مفيدا.

## كيفية تحديث الحقول

عند تحميل مستند، Aspose.Words يحاكي سلوك Microsoft Word مع خيار تحديث الحقول تلقائيا مغلقا. يمكن تلخيص السلوك على النحو التالي:

- عند فتح / حفظ مستند تظل الحقول سليمة
- يمكنك تحديث جميع الحقول في مستند بشكل صريح، على سبيل المثال، إعادة إنشاء `TOC` عندما تحتاج إلى ذلك
- عند الطباعة / العرض إلى PDF أو XPS يتم تحديث الحقول المتعلقة بترقيم الصفحات في الرؤوس/التذييلات
- عند تنفيذ Mail Merge يتم تحديث كافة الحقول تلقائيا

### تحديث الحقول برمجيا

لتحديث الحقول بشكل صريح في المستند بأكمله، ما عليك سوى استدعاء طريقة [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). لتحديث الحقول الموجودة في جزء من مستند، احصل على كائن [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) واستدعاء طريقة [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). في Aspose.Words، يمكنك الحصول على **Range** لأي عقدة في شجرة المستندات، مثل [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), الخ. باستخدام خاصية [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). يمكنك تحديث نتيجة حقل واحد عن طريق استدعاء طريقة [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### التحديث التلقائي للحقول المتعلقة بالصفحة أثناء العرض

عند تنفيذ تحويل مستند إلى تنسيق صفحة ثابتة على سبيل المثال إلى PDF أو XPS، سيقوم Aspose.Words تلقائيا بتحديث الحقول المتعلقة بتخطيط الصفحة `PAGE`، `PAGEREF` الموجودة في رؤوس/تذييلات المستند. يحاكي هذا السلوك سلوك Microsoft Word عند طباعة مستند.

إذا كنت تريد تحديث جميع الحقول الأخرى في المستند، فأنت بحاجة إلى الاتصال [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) قبل تقديم المستند.

يوضح المثال التالي كيفية تحديث كافة الحقول قبل تقديم مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### تحديث الحقل التلقائي خلال Mail Merge

عند تنفيذ mail merge، سيتم تحديث جميع الحقول في المستند تلقائيا. هذا لأن Mail Merge هي حالة تحديث ميداني. يواجه البرنامج حقلا Mail Merge ويحتاج إلى تحديث نتيجته، والتي تتضمن الحصول على القيمة من مصدر البيانات وإدخالها في الحقل. المنطق، بالطبع، أكثر تعقيدا، على سبيل المثال، عندما يتم الوصول إلى نهاية المستند/mail merge المنطقة ولكن لا يزال هناك المزيد من البيانات التي سيتم دمجها، ثم تحتاج المنطقة إلى تكرار وتحديث مجموعة الحقول الجديدة.

## تحديث الحقول التي لها سمة قذرة

ث: القذرة هي سمة على مستوى الحقل سيتم تحديث الحقل الذي تحدده فقط عند فتح المستند. يخبر MS كلمة لتحديث هذا الحقل فقط في المرة التالية التي يتم فيها فتح المستند. يمكنك استخدام LoadOptions.setUpdateDirtyFields () الخاصية لتحديد ما إذا كان سيتم تحديث الحقول مع السمة القذرة. عندما قيمة LoadOptions.يتم تعيين setUpdateDirtyFields () إلى *true*، يتم تحديث جميع الحقول التي لها قيمة *true* ل `Field.IsDirty` أو `FieldChar.IsDirty` الملكية عند تحميل المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث الحقول التي تحتوي على السمة القذرة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## تحديث LastSavedTime الممتلكات قبل الحفظ

يمكنك استخدام خاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) سواء لتحديث خاصية المستند المضمنة المقابلة [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث هذه الخاصية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
