---
title: إدراج Checkbox إس، إدخال النص أو الصور خلال Mail Merge
second_title: Aspose.Words ل C++
articleTitle: إدراج Checkbox إس، إدخال النص، أو الصور
linktitle: إدراج Checkbox إس، إدخال النص، أو الصور
description: "أدخل مربعات الاختيار أو حقول إدخال النص أثناء Mail Merge باستخدام C++. أيضا إدراج الصور من قاعدة بيانات خلال Mail Merge في C++."
type: docs
weight: 40
url: /ar/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

يأخذ محرك الدمج مستندا كمدخل، ويبحث عن `MERGEFIELD` الحقول فيه، ويستبدلها بالبيانات التي تم الحصول عليها من مصدر البيانات. عادة، يتم إدراج نص عادي و HTML، ولكن يمكن للمستخدمين Aspose.Words أيضا إنشاء مستند يتعامل مع سيناريوهات أكثر غرابة لحقول mail merge.

تتيح لك وظيفة Aspose.Words القوية تمديد عملية mail merge:

- أدخل مربعات الاختيار وحقول نموذج إدخال النص في المستند أثناء mail merge
- أدخل الصور من أي مساحة تخزين مخصصة (ملفات، BLOB حقول، إلخ.)

## إدراج Checkbox إس وإدخال النص خلال Mail Merge

في بعض الأحيان يكون من الضروري إجراء عملية Mail Merge بحيث لا يتم استبدال النص في حقل الدمج، ولكن يتم استبدال مربع الاختيار أو حقل إدخال النص. على الرغم من أن هذا ليس السيناريو الأكثر شيوعا، إلا أنه مفيد جدا لبعض المهام.

تظهر لقطة الشاشة التالية لمستند ورد نموذجا يحتوي على حقول دمج:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

تظهر لقطة الشاشة هذه لمستند ورد أدناه المستند الذي تم إنشاؤه بالفعل:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

لاحظ أنه تم استبدال بعض الحقول بنص عادي، وتم استبدال بعض الحقول بحقول نموذج مربع الاختيار، وتم استبدال الحقل `Subject` بحقل إدخال نص.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إدراج مربعات الاختيار وحقول النص المدخلة في مستند أثناء mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## إدراج الصور خلال Mail Merge

عند إجراء عملية mail merge، يمكنك إدراج صور من قاعدة البيانات في المستند باستخدام حقول صورة خاصة mail merge. حقل الصورة Mail Merge هو حقل دمج اسمه صورة: MyFieldName.

### إدراج الصور من قاعدة بيانات

أثناء mail merge، عند مصادفة حقل صورة Mail Merge في مستند، يتم تشغيل الحدث [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/). يمكنك الرد على هذا الحدث لإرجاع اسم ملف أو دفق أو كائن صورة إلى محرك Mail Merge بحيث يمكن إدراجه في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج الصور المخزنة في حقل BLOB قاعدة بيانات في تقرير:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### تعيين خصائص الصورة خلال Mail Merge

أثناء دمج حقل دمج الصور، قد تحتاج أحيانا إلى التحكم في خصائص الصورة المختلفة، مثل [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

حاليا، باستخدام [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args)، يمكنك فقط تعيين خصائص عرض الصورة أو ارتفاعها، على التوالي. للتغلب على هذه المشكلة، يوفر Aspose.Words خاصية [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/)، مما يسهل التحكم الكامل في الصورة المدرجة أو أي شكل آخر.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص صورة مختلفة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
