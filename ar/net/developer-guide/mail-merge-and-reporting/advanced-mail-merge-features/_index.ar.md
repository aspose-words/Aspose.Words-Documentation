---
title: متقدم Mail Merge الميزات في C#
second_title: Aspose.Words ل .NET
articleTitle: متقدم Mail Merge الميزات
linktitle: متقدم Mail Merge الميزات
type: docs
description: "Aspose.Words إلى عن على .NET يوفر بعض الميزات المتقدمة Mail Merge التي تسمح لك بإجراء المزيد Mail Merge التخصيص باستخدام C#. على سبيل المثال، الحصول على معلومات حول بنية القالب، ووضع القواعد، والتنظيف بعد عملية Mail Merge، وغيرها."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /ar/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words يوفر بعض الخصائص والطرق Mail Merge الإضافية التي تسمح لك بإجراء مزيد من التخصيص لعملية Mail Merge إما بطريقة بسيطة Mail Merge أو Mail Merge مع المناطق.

تتضمن الميزات المتقدمة Mail Merge، على سبيل المثال لا الحصر، الحصول على معلومات حول بنية القالب قبل إجراء عملية Mail Merge، ووضع قواعد لعملية Mail Merge، والتنظيف أثناء عملية Mail Merge. ستغطي هذه المقالة بعض الخصائص والأمثلة فقط لتظهر لك كيفية استخدام الميزات المتقدمة.

## وضع قواعد لعمليات Mail Merge

تتيح لك إضافة قواعد إلى القالب الخاص بك جعل عملية سير العمل أكثر فعالية ومرونة. باستخدام قواعد Mail Merge، يمكنك إعداد محتوى يمكن تغييره بسرعة وتجنب الحاجة إلى إنشاء مستندات متعددة.

Aspose.Words يسمح لك لتخصيص Mail Merge استنادا إلى القواعد التي يتم تشغيلها عند تنفيذ Mail Merge عملية والتحكم دمج المعلومات. على سبيل المثال، عند إنشاء بريد إلكتروني أو خطاب لإرساله إلى جميع عملائك. يمكنك إعداد قاعدة بحيث يمكن أن يحتوي الحرف على بيانات مختلفة بناء على القيم المختلفة في حقول معينة من مصدر البيانات الخاص بك.

ألق نظرة على بعض القواعد Mail Merge التي يمكنك تنفيذها.

### تنفيذ الحقل التالي لدمج سجلات البيانات في المستند الحالي

يمكنك تنفيذ الحقل [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) لدمج سجل البيانات التالي في المستند المدمج الناتج الحالي، بدلا من بدء مستند مدمج جديد. يتم استخدامه لعرض سجلات متعددة في مستند واحد.

### تنفيذ NextIf و SkipIf الحقول لمقارنة تعبيرين

يمكنك استخدام حقل [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) أو حقل [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) إذا كنت تريد مقارنة تعبيرين ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) و [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) تعبيرين) ببعض [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words سيتم دمج سجل البيانات التالي في مستند الدمج الحالي، وسيتم استبدال جميع حقول الدمج في القالب التي تلي *NextIf* بقيم من سجل البيانات التالي بدلا من سجل البيانات الحالي. | Aspose.Words سيتم دمج سجل البيانات التالي في مستند دمج جديد. |
| `SkipIf` | سيؤدي Aspose.Words إلى إلغاء مستند الدمج الحالي، والانتقال إلى سجل البيانات التالي في مصدر البيانات، وبدء مستند دمج جديد. | Aspose.Words سيستمر مستند الدمج الحالي. |

يوضح مثال الكود التالي كيفية مقارنة تعبيرين مع **NextIf** أو **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## الحصول على معلومات حول بنية القالب

Aspose.Words يسمح لك بجمع معلومات مختلفة في القالب الخاص بك من خلال العديد من الطرق. على سبيل المثال، قد تحتاج إلى الحصول على أسماء بعض حقول الدمج أو التسلسل الهرمي للمناطق في القالب. سنشرح الآن المتغيرات المحتملة للحصول على بعض المعلومات المحددة من القالب الخاص بك.

### الحصول على دمج أسماء الحقول

يمكنك العثور على سيناريو حيث تريد دمج البيانات مع حقول الدمج التي تم إنشاؤها بواسطة الآخرين، وفي هذه الحالة، لن تكون متأكدا من الأسماء الدقيقة لحقول الدمج. لذلك، لتحقيق الغرض Mail Merge، أولا، ستحتاج إلى قراءة وعرض أسماء جميع حقول الدمج. Aspose.Words يسمح لك بالحصول على مجموعة من أسماء حقول الدمج باستخدام طريقة [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

يوضح مثال الكود التالي كيفية الحصول على أسماء جميع حقول الدمج في القالب:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### احصل على معلومات حول مناطق الدمج

قد يكون لديك سيناريو حيث تريد فهم كيفية هيكلة القالب الخاص بك من خلال مناطق الدمج المحددة. يمكنك استخدام بعض الطرق لجمع كل المعلومات الضرورية حول مناطق الدمج أو للحصول على التسلسل الهرمي لمناطق الدمج في القالب، مثل طريقة [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). يمكنك استخدام خصائص وطرق فئة [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).يوضح مثال الكود التالي كيفية الحصول على التسلسل الهرمي لمناطق الدمج:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

يوضح مثال الكود التالي كيفية الحصول على مناطق دمج محددة داخل القالب بناء على أسمائها:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### إضافة الحقول المعينة

Aspose.Words يسمح لك بتعيين أسماء الحقول تلقائيا في مصدر البيانات وأسماء Mail Merge الحقول في القالب باستخدام خاصية [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). على سبيل المثال، إذا كان لديك اسم حقل يسمى "اسم العائلة" في القالب الخاص بك، وفي مصدر البيانات لديك اسم الحقل "اسم العائلة" أو شكل آخر مثل "Last_Name" أو "LastName"، فسيتم تعيين الحقل الموجود في مصدر البيانات تلقائيا إلى الحقل المعين المقابل. إذا كان سيتم دمج قالب دمج مع العديد من مصادر البيانات، فإن الحقول المعينة تجعل من غير الضروري إعادة إدخال الحقول في القالب للاتفاق مع أسماء الحقول في قاعدة البيانات.

يوضح مثال التعليمات البرمجية التالية كيفية إضافة حقل معين باستخدام طريقة [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) عندما يكون لحقل دمج في قالب وحقل بيانات في مصدر بيانات أسماء مختلفة:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
