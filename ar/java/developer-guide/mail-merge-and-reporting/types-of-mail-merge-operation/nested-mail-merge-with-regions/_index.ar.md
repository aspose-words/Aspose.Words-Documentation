---
title: متداخلة Mail Merge مع المناطق في Java
second_title: Aspose.Words ل Java
articleTitle: متداخلة Mail Merge مع المناطق
linktitle: متداخلة Mail Merge مع المناطق
type: docs
description: "قم بإجراء عملية Mail Merge مع مناطق متداخلة. الدمج المتداخل هو ميزة تمكنك من دمج البيانات الهرمية من مصدر البيانات في قالب الدمج باستخدام Java."
keywords: "mail merge with nested regions Java, Nested Mail Merge Regions"
weight: 10
url: /ar/java/nested-mail-merge-with-regions/
timestamp: 2024-01-27-14-07-04
---

في بعض السيناريوهات، قد تحتاج إلى استخدام Mail Merge المتداخلة مع المناطق. الدمج المتداخل هو ميزة تمكنك من دمج البيانات الهرمية من مصدر البيانات الخاص بك في قالب الدمج الخاص بك لملء المستند بسهولة. في الأساس، يتم تمثيل البيانات الهرمية كمجموعة من عناصر البيانات، وتصف العلاقات الهرمية كيفية ارتباط عناصر البيانات ببعضها البعض (عنصر واحد من البيانات هو أصل عنصر آخر).

Aspose.Words يسمح لك بإجراء عملية Mail Merge مع مناطق متداخلة. يمكنك استخدام هذه الميزة إذا كان لديك مصدر بيانات منظم في بنية تشبه الشجرة وتريد تنفيذ عملية Mail Merge لملء قالب ببيانات هرمية.

{{% alert color="primary" %}}

المتداخلة Mail Merge ذات الصلة فقط عند تنفيذ Mail Merge مع المناطق.

{{% /alert %}}

## ما هو المتداخلة Mail Merge

تسمى منطقة Mail Merge متداخلة إذا كان لديك منطقتان أو أكثر Mail Merge حيث توجد إحداهما داخل الأخرى في شكل هرمي. لاحظ أن كل منطقة تحتوي على بيانات من جدول واحد.

المثال الأكثر شيوعا للتداخل Mail Merge هو ترتيب يحتوي على عناصر متعددة حيث تحتاج إلى ربط جداول بيانات متعددة وتقديم المعلومات في قالب.

توضح الصورة أدناه منطقتين متداخلتين حيث تكون منطقة *Order* Mail Merge هي أصل منطقة *Item* Mail Merge.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions_aspose_words_java" style="width:650px"/>

## كيفية معالجة Mail Merge مع المناطق المتداخلة

يمكن أن تأتي البيانات المراد دمجها في قالب من مصادر مختلفة، بشكل أساسي قواعد البيانات العلائقية أو XML مستندات. في مثالنا، سنستخدم ملف XML لتخزين بياناتنا وتحميلها مباشرة في **DataSet**.

Aspose.Words يسمح لك بمعالجة Mail Merge مع المناطق المتداخلة باستخدام علاقات البيانات المحددة في **DataSet**. عندما يتم تحميل الكائن **DataSet** XML، فإنه إما يستخدم المخطط المقدم أو يستنتجه من بنية XML نفسها لتحقيق ذلك. من هذا الهيكل، فإنه يخلق علاقات بين الجداول عند الضرورة.

توضح الصورة أدناه كيف سيتم ربط البيانات من جدول *Order* الذي تم تمريره إلى مناطق الدمج المتداخلة بجدول *Item*، بالإضافة إلى المخرجات التي تم إنشاؤها أثناء عملية الدمج.

<img src="/words/java/nested-mail-merge-with-regions/nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions_aspose_words_java" style="width:650px"/>

كما ترى من مستند الإخراج، يتم إدراج كل طلب من جدول **Order** في قالب الدمج مع جميع العناصر ذات الصلة بالترتيب من جدول **Item**. سيتم إدراج الطلب التالي مع العناصر الخاصة بهم حتى يتم سرد جميع الطلبات والعناصر. يجب أن يتطابق ترتيب التداخل Mail Merge مع المناطق في القالب مع علاقات البيانات بين الجداول في مصدر البيانات.

يوضح مثال الكود التالي كيفية إنشاء فاتورة باستخدام Mail Merge المتداخلة مع المناطق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-NestedMailMerge.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

## كيفية إعداد علاقات البيانات في متداخلة Mail Merge مع المناطق

تحتاج إلى إعداد جميع علاقات البيانات في بنية الوالدين والطفل لتنفيذ Mail Merge المتداخلة مع المناطق بشكل صحيح. يمكن أن يؤدي تخطي هذه الخطوة المهمة إلى فشل في تنفيذ Mail Merge المتداخلة مع المناطق.

عند استرداد البيانات الخاصة بـ Mail Merge المتداخلة من ملف XML باستخدام طريقة **ReadXml**، يتم إنشاء العلاقات تلقائيا وفقا لهيكل المستند XML. ومع ذلك، تحتاج إلى التأكد من إنشاء العلاقات الصحيحة.

إذا كان Mail Merge لا يعمل كما هو متوقع، فقد تحتاج إلى إعادة هيكلة ملف XML أو إنشاء علاقات صريحة بين DataTable كائنات في DataSet.

`DataSet` التي لديها جداول البيانات ذات الصلة سوف تستخدم الكائن **DataRelation** لتمثيل العلاقة بين الوالدين والطفل بين الجداول.

يوضح مثال الكود التالي كيفية إنشاء `DataRelation` بين جدول العميل وجدول الطلب باستخدام كائن `DataRelation`:
{{< highlight java >}}
dataSet.getRelations().add(new DataRelation("OrderToItem", orderTable.getColumns().get("Order_Id"), itemTable.getColumns().get("Order_Id"), false));
{{< /highlight >}}
