---
title: إدراج Checkbox إس، إدخال النص أو الصور خلال Mail Merge
second_title: Aspose.Words ل .NET
articleTitle: إدراج Checkbox إس، إدخال النص، أو الصور
linktitle: إدراج Checkbox إس، إدخال النص، أو الصور
description: "إدراج checkbox إس أو حقول إدخال النص خلال Mail Merge باستخدام C#. أيضا إدراج الصور من قاعدة بيانات خلال Mail Merge في C#."
type: docs
weight: 40
url: /ar/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

يأخذ محرك الدمج مستندا كمدخل، ويبحث عن `MERGEFIELD` الحقول فيه، ويستبدلها بالبيانات التي تم الحصول عليها من مصدر البيانات. عادة، يتم إدراج نص عادي و HTML، ولكن يمكن للمستخدمين Aspose.Words أيضا إنشاء مستند يتعامل مع سيناريوهات أكثر غرابة لحقول Mail Merge.

تتيح لك وظيفة Aspose.Words القوية تمديد عملية Mail Merge:

- أدخل checkbox وفاق وحقول نموذج إدخال النص في المستند أثناء mail merge
- أدخل الصور من أي مساحة تخزين مخصصة (ملفات، BLOB حقول، إلخ.)

## إدراج Checkbox إس وإدخال النص خلال Mail Merge

في بعض الأحيان يكون من الضروري إجراء عملية Mail Merge بحيث لا يتم استبدال النص في حقل الدمج، ولكن checkbox أو حقل إدخال النص. على الرغم من أن هذا ليس السيناريو الأكثر شيوعا، إلا أنه مفيد جدا لبعض المهام.

تظهر لقطة الشاشة التالية لمستند Word نموذجا يحتوي على حقول دمج:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

تظهر لقطة الشاشة هذه للمستند Word أدناه المستند الذي تم إنشاؤه بالفعل:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

لاحظ أنه تم استبدال بعض الحقول بنص عادي، وتم استبدال بعض الحقول بحقول نموذج checkbox، وتم استبدال حقل `Subject` بحقل إدخال نص.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إدراج checkbox وحقول النص المدخلة في مستند أثناء mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## إدراج الصور خلال Mail Merge

عند إجراء عملية Mail Merge، يمكنك إدراج صور من قاعدة البيانات في المستند باستخدام حقول صورة خاصة Mail Merge. حقل الصورة Mail Merge هو حقل دمج اسمه صورة: MyFieldName.

### إدراج الصور من قاعدة بيانات

أثناء mail merge، عند مصادفة حقل صورة Mail Merge في مستند، يتم تشغيل الحدث [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/). يمكنك الرد على هذا الحدث لإرجاع اسم ملف أو دفق أو كائن صورة إلى محرك Mail Merge بحيث يمكن إدراجه في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج الصور المخزنة في حقل BLOB قاعدة بيانات في تقرير:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### تعيين خصائص الصورة خلال Mail Merge

أثناء دمج حقل دمج الصور، قد تحتاج أحيانا إلى التحكم في خصائص الصورة المختلفة، مثل [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

حاليا، باستخدام [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/)، يمكنك فقط تعيين خصائص عرض الصورة أو ارتفاعها، على التوالي. للتغلب على هذه المشكلة، يوفر Aspose.Words خاصية [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/)، مما يسهل التحكم الكامل في الصورة المدرجة أو أي شكل آخر.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص صورة مختلفة:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
