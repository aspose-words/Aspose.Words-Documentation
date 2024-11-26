---
title: إدراج Checkbox إس، إدخال النص أو الصور خلال Mail Merge
second_title: Aspose.Words ل Java
articleTitle: إدراج Checkbox إس، إدخال النص، أو الصور
linktitle: إدراج Checkbox إس، إدخال النص، أو الصور
description: "إدراج checkbox إس أو حقول إدخال النص خلال Mail Merge باستخدام Java. أيضا إدراج الصور من قاعدة بيانات خلال Mail Merge في Java."
type: docs
weight: 20
url: /ar/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

يأخذ محرك الدمج مستندا كمدخل، ويبحث عن `MERGEFIELD` الحقول فيه، ويستبدلها بالبيانات التي تم الحصول عليها من مصدر البيانات. عادة، يتم إدراج نص عادي و HTML، ولكن يمكن للمستخدمين Aspose.Words أيضا إنشاء مستند يتعامل مع سيناريوهات أكثر غرابة لحقول Mail Merge.

تتيح لك وظيفة Aspose.Words القوية تمديد عملية Mail Merge:

- أدخل checkbox وفاق وحقول نموذج إدخال النص في المستند أثناء mail merge
- أدخل الصور من أي مساحة تخزين مخصصة (ملفات، BLOB حقول، إلخ.)

## إدراج Checkbox إس وإدخال النص خلال Mail Merge

في بعض الأحيان يكون من الضروري إجراء عملية Mail Merge بحيث لا يتم استبدال النص في حقل الدمج، ولكن checkbox أو حقل إدخال النص. على الرغم من أن هذا ليس السيناريو الأكثر شيوعا، إلا أنه مفيد جدا لبعض المهام.

تظهر لقطة الشاشة التالية لمستند ورد نموذجا يحتوي على حقول دمج:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

تظهر لقطة الشاشة هذه لمستند ورد أدناه المستند الذي تم إنشاؤه بالفعل:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

لاحظ أنه تم استبدال بعض الحقول بنص عادي، وتم استبدال بعض الحقول بحقول نموذج checkbox، وتم استبدال حقل `Subject` بحقل إدخال نص.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إدراج checkbox وحقول النص المدخلة في مستند أثناء mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## إدراج الصور خلال Mail Merge

عند إجراء عملية Mail Merge، يمكنك إدراج صور من قاعدة البيانات في المستند باستخدام حقول صورة خاصة Mail Merge. حقل الصورة Mail Merge هو حقل دمج اسمه صورة: MyFieldName.

### إدراج الصور من قاعدة بيانات

أثناء mail merge، عند مصادفة حقل صورة Mail Merge في مستند، يتم تشغيل الحدث [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback). يمكنك الرد على هذا الحدث لإرجاع اسم ملف أو دفق أو كائن صورة إلى محرك Mail Merge بحيث يمكن إدراجه في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج الصور المخزنة في حقل BLOB قاعدة بيانات في تقرير:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### تعيين خصائص الصورة خلال Mail Merge

أثناء دمج حقل دمج الصور، قد تحتاج أحيانا إلى التحكم في خصائص الصورة المختلفة، مثل [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

حاليا، باستخدام [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/)، يمكنك فقط تعيين خصائص عرض الصورة أو ارتفاعها، على التوالي. للتغلب على هذه المشكلة، يوفر Aspose.Words خاصية [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape)، مما يسهل التحكم الكامل في الصورة المدرجة أو أي شكل آخر.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص صورة مختلفة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

