---
title: Update Fields in Java
second_title: Aspose.Words for Java
articleTitle: آخر المستجدات
linktitle: آخر المستجدات
description: "تعلم كيفية تحديث الحقول في Java. تحديث المجالات من الناحية البرنامجية أو استخدام آخر المستجدات الميدانية الآلية Java API"
type: docs
weight: 30
url: /ar/java/update-field/
timestamp: 2024-01-27-14-07-04
---

عادة، حقل أُدرج في Microsoft Word يتضمن بالفعل قيمة حتى الآن. فعلى سبيل المثال، إذا كان الميدان صيغة أو رقم صفحة، فإنه سيتضمن القيمة المحسوبة الصحيحة للصيغة المعينة من الوثيقة. ولكن إذا كان لديك طلب يولد أو يعدل وثيقة مع حقول مثل دمج وثيقتين أو نشرها بالبيانات، فمن الأفضل أن تستكمل جميع الميادين لكي تكون الوثيقة مفيدة.

## How to Update Fields

عندما يتم تحميل الوثيقة Aspose.Words يذكّر سلوك Microsoft Word مع خيار التحديث التلقائي للميادين يتم إيقافه ويمكن تلخيص السلوك على النحو التالي:

- عندما تَفْتحُ / تُنقذُ a وثيقة الحقول تَبْقى سليمة
- يمكنك أن تستكمل بشكل صريح جميع الميادين في وثيقة، على سبيل المثال، إعادة البناء `TOC` عندما تحتاج إلى
- عندما تطبع / تدر إلى PDF أو XPS تحديث الحقول المتصلة بعدد الصفحات في العنوان/القدماء
-عندما تنفذ Mail Merge تحديث جميع الميادين آليا

### Update Fields Programmatically

القيام صراحة بتحديث المجالات في الوثيقة بأكملها، والاكتفاء بالاتصال [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) طريقة استكمال المجالات الواردة في جزء من الوثيقة، والحصول على [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) اعترض واتصل [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) طريقة In Aspose.Words, يمكنك الحصول على **Range** لأي عقد في شجرة الوثائق، مثل [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), الخ. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) ملكية يمكنك تحديث نتيجة حقل واحد بالاتصال [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) طريقة

### التحديث الآلي للمجالات ذات الصلة بالصفحة خلال عملية الانتقال

عندما تنفّذ تحويل الوثيقة إلى شكل ثابت الصفحات مثلاً إلى PDF أو XPS, ثم Aspose.Words ستستكمل تلقائياً المجالات المتصلة بوضع الصفحات `PAGE`, `PAGEREF` عثر عليه في رؤساء/أقدام الوثيقة. هذا السلوك يقلل من سلوك Microsoft Word عند طباعة الوثيقة.

إذا كنت تريد تحديث جميع الميادين الأخرى في الوثيقة، ثم تحتاج إلى الاتصال [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) قبل إصدار الوثيقة.

ويبين المثال التالي كيفية تحديث جميع الميادين قبل إصدار وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### التحديث الميداني الآلي Mail Merge

عندما تعدم mail merge" وسيجري تلقائيا تحديث جميع الميادين في الوثيقة. هذا بسبب Mail Merge هي حالة تحديث ميداني. البرنامج يصادف Mail Merge ميداني ويحتاج إلى تحديث نتائجه، التي تنطوي على سحب القيمة من مصدر البيانات وإدراجها في الميدان. والمنطق هو، بطبيعة الحال، أكثر تعقيدا، على سبيل المثال، عندما تكون نهاية الوثيقة/mail merge وقد تم الوصول إلى المنطقة ولكن لا تزال هناك بيانات أخرى يتعين دمجها، ومن ثم يتعين ازدواجية المنطقة واستكمال مجموعة جديدة من الميادين.

## Update Fields having Dirty Attribute

الوريثة هي سمة على المستوى الميداني لا تصلح إلا المجال الذي تحدده عندما تُفتح الوثيقة. إنها تخبر (إم إس وورد) أن يُعيد فتح هذا المجال في المرة القادمة التي تُفتح فيها الوثيقة يمكنك استخدام "لود أوبتونز" و "ممتلكات "فيلدز" لتحديد ما إذا كان لتحديث الحقول "عندما تكون قيمة "لود أوبتيز *true* جميع الحقول *true* القيمة `Field.IsDirty` أو `FieldChar.IsDirty` تُحدَّث الممتلكات على حمولة الوثائق

The following code example shows how to update fields having the dirty attribute:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## آخر تاريخ

يمكنك استخدام [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) ممتلكات ما إذا كان ينبغي تحديث ما يقابلها من ممتلكات مستندة [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) عندما ننقذ الوثيقة

The following code example shows how to update this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
