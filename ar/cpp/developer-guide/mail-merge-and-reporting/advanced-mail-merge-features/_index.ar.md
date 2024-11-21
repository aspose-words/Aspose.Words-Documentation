---
title: متقدم Mail Merge الميزات في C++
second_title: Aspose.Words ل C++
articleTitle: متقدم Mail Merge الميزات
linktitle: متقدم Mail Merge الميزات
type: docs
description: "Aspose.Words ل C++ يوفر بعض الميزات المتقدمة mail merge التي تسمح لك بإجراء مزيد من التخصيص mail merge. على سبيل المثال، الحصول على معلومات حول بنية القالب، ووضع القواعد، والتنظيف بعد عملية mail merge، وغيرها."
keywords: "use advanced mail merge features c++"
weight: 50
url: /ar/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يوفر بعض الخصائص والطرق mail merge الإضافية التي تسمح لك بإجراء مزيد من التخصيص لعملية mail merge إما بطريقة بسيطة mail merge أو mail merge مع المناطق.

تتضمن الميزات المتقدمة mail merge، على سبيل المثال لا الحصر، الحصول على معلومات حول بنية القالب قبل إجراء عملية mail merge، ووضع قواعد لعملية mail merge، والتنظيف أثناء عملية mail merge. ستغطي هذه المقالة بعض الخصائص والأمثلة فقط لتظهر لك كيفية استخدام الميزات المتقدمة.

## وضع قواعد لعمليات Mail Merge

تتيح لك إضافة قواعد إلى القالب الخاص بك جعل عملية سير العمل أكثر فعالية ومرونة. باستخدام قواعد mail merge، يمكنك إعداد محتوى يمكن تغييره بسرعة وتجنب الحاجة إلى إنشاء مستندات متعددة.

Aspose.Words يسمح لك لتخصيص mail merge استنادا إلى القواعد التي يتم تشغيلها عند تنفيذ mail merge عملية والتحكم دمج المعلومات. على سبيل المثال، عند إنشاء بريد إلكتروني أو خطاب لإرساله إلى جميع عملائك. يمكنك إعداد قاعدة بحيث يمكن أن يحتوي الحرف على بيانات مختلفة بناء على القيم المختلفة في حقول معينة من مصدر البيانات الخاص بك.

ألق نظرة على بعض القواعد mail merge التي يمكنك تنفيذها.

### تنفيذ الحقل التالي لدمج سجلات البيانات في المستند الحالي

يمكنك تنفيذ الحقل [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) لدمج سجل البيانات التالي في المستند المدمج الناتج الحالي، بدلا من بدء مستند مدمج جديد. يتم استخدامه لعرض سجلات متعددة في مستند واحد.

### تنفيذ NextIf و SkipIf الحقول لمقارنة تعبيرين

يمكنك استخدام حقل [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) أو حقل [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) إذا كنت تريد مقارنة تعبيرين ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) تعبيرات) ببعض [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words سيتم دمج سجل البيانات التالي في مستند الدمج الحالي، وسيتم استبدال جميع حقول الدمج في القالب التي تلي *NextIf* بقيم من سجل البيانات التالي بدلا من سجل البيانات الحالي. | Aspose.Words سيتم دمج سجل البيانات التالي في مستند دمج جديد. |
| `SkipIf` | سيؤدي Aspose.Words إلى إلغاء مستند الدمج الحالي، والانتقال إلى سجل البيانات التالي في مصدر البيانات، وبدء مستند دمج جديد. | Aspose.Words سيستمر مستند الدمج الحالي. |

## الحصول على معلومات حول بنية القالب

Aspose.Words يسمح لك بجمع معلومات مختلفة في القالب الخاص بك من خلال العديد من الطرق. على سبيل المثال، قد تحتاج إلى الحصول على أسماء بعض حقول الدمج أو التسلسل الهرمي للمناطق في القالب. سنشرح الآن المتغيرات المحتملة للحصول على بعض المعلومات المحددة من القالب الخاص بك.

### الحصول على دمج أسماء الحقول

يمكنك العثور على سيناريو حيث تريد دمج البيانات مع حقول الدمج التي تم إنشاؤها بواسطة الآخرين، وفي هذه الحالة، لن تكون متأكدا من الأسماء الدقيقة لحقول الدمج. لذلك، لتحقيق الغرض mail merge، أولا، ستحتاج إلى قراءة وعرض أسماء جميع حقول الدمج. Aspose.Words يسمح لك بالحصول على مجموعة من أسماء حقول الدمج باستخدام طريقة [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

يوضح مثال الكود التالي كيفية الحصول على أسماء جميع حقول الدمج في القالب:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### احصل على معلومات حول مناطق الدمج

قد يكون لديك سيناريو حيث تريد فهم كيفية هيكلة القالب الخاص بك من خلال مناطق الدمج المحددة. يمكنك استخدام بعض الطرق لجمع كل المعلومات الضرورية حول مناطق الدمج أو للحصول على التسلسل الهرمي لمناطق الدمج في القالب، مثل طريقة [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). يمكنك استخدام خصائص وطرق فئة [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).يوضح مثال الكود التالي كيفية الحصول على التسلسل الهرمي لمناطق الدمج:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إضافة الحقول المعينة

Aspose.Words يسمح لك بتعيين أسماء الحقول تلقائيا في مصدر البيانات وأسماء mail merge الحقول في القالب باستخدام خاصية [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). على سبيل المثال، إذا كان لديك اسم حقل يسمى "اسم العائلة" في القالب الخاص بك، وفي مصدر البيانات لديك اسم الحقل "اسم العائلة" أو شكل آخر مثل "اسم العائلة" أو "LastName"، فسيتم تعيين الحقل الموجود في مصدر البيانات تلقائيا إلى الحقل المعين المقابل. إذا كان سيتم دمج قالب دمج مع العديد من مصادر البيانات، فإن الحقول المعينة تجعل من غير الضروري إعادة إدخال الحقول في القالب للاتفاق مع أسماء الحقول في قاعدة البيانات.

يوضح مثال التعليمات البرمجية التالية كيفية إضافة حقل معين باستخدام طريقة [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) عندما يكون لحقل دمج في قالب وحقل بيانات في مصدر بيانات أسماء مختلفة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
