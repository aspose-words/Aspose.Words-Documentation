---
title: متداخلة Mail Merge مع المناطق في C#
second_title: Aspose.Words ل .NET
articleTitle: متداخلة Mail Merge مع المناطق
linktitle: متداخلة Mail Merge مع المناطق
type: docs
description: "قم بإجراء عملية Mail Merge مع المناطق المتداخلة باستخدام C#. الدمج المتداخل هو ميزة تمكنك من دمج البيانات الهرمية من مصدر البيانات في قالب الدمج الخاص بك."
keywords: "mail merge with nested regions c#"
weight: 10
url: /ar/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
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

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## كيفية معالجة Mail Merge مع المناطق المتداخلة

يمكن أن تأتي البيانات المراد دمجها في قالب من مصادر مختلفة، بشكل أساسي قواعد البيانات العلائقية أو XML مستندات. في مثالنا، سنستخدم ملف XML لتخزين بياناتنا وتحميلها مباشرة في **DataSet**.

Aspose.Words يسمح لك بمعالجة Mail Merge مع المناطق المتداخلة باستخدام علاقات البيانات المحددة في **DataSet**. عندما يتم تحميل الكائن **DataSet** XML، فإنه إما يستخدم المخطط المقدم أو يستنتجه من بنية XML نفسها لتحقيق ذلك. من هذا الهيكل، فإنه يخلق علاقات بين الجداول عند الضرورة.

توضح الصورة أدناه كيف سيتم ربط البيانات من جدول *Order* الذي تم تمريره إلى مناطق الدمج المتداخلة بجدول *Item*، بالإضافة إلى المخرجات التي تم إنشاؤها أثناء عملية الدمج.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

كما ترى من مستند الإخراج، يتم إدراج كل طلب من جدول **Order** في قالب الدمج مع جميع العناصر ذات الصلة بالترتيب من جدول **Item**. سيتم إدراج الطلب التالي مع العناصر الخاصة بهم حتى يتم سرد جميع الطلبات والعناصر. يجب أن يتطابق ترتيب التداخل Mail Merge مع المناطق في القالب مع علاقات البيانات بين الجداول في مصدر البيانات.

يوضح مثال الكود التالي كيفية إنشاء فاتورة باستخدام Mail Merge المتداخلة مع المناطق:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

يمكنك التحقق من تنفيذ إعداد علاقات البيانات يدويا من [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## كيفية إعداد علاقات البيانات في متداخلة Mail Merge مع المناطق

تحتاج إلى إعداد جميع علاقات البيانات في بنية الوالدين والطفل لتنفيذ Mail Merge المتداخلة مع المناطق بشكل صحيح. يمكن أن يؤدي تخطي هذه الخطوة المهمة إلى فشل في تنفيذ Mail Merge المتداخلة مع المناطق.

عند استرداد البيانات الخاصة بـ Mail Merge المتداخلة من ملف XML باستخدام طريقة **ReadXml**، يتم إنشاء العلاقات تلقائيا وفقا لهيكل المستند XML. ومع ذلك، تحتاج إلى التأكد من إنشاء العلاقات الصحيحة.

إذا كان Mail Merge لا يعمل كما هو متوقع، فقد تحتاج إلى إعادة هيكلة ملف XML أو إنشاء علاقات صريحة بين DataTable كائنات في DataSet.

`DataSet` التي لديها جداول البيانات ذات الصلة سوف تستخدم الكائن **DataRelation** لتمثيل العلاقة بين الوالدين والطفل بين الجداول.

يوضح مثال الكود التالي كيفية إنشاء `DataRelation` بين جدول العميل وجدول الطلب باستخدام كائن `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## كيفية إنشاء علاقات البيانات من مصدر بيانات مخصص

قم بتنفيذ واجهة [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) لإنشاء علاقات في بنية الوالدين والطفل لمصدر البيانات المخصص. استخدم طريقة [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) لإرجاع البيانات الفرعية ذات الصلة لسجل الأصل الحالي.

يوضح المثال التالي كيفية إنشاء علاقات البيانات باستخدام **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
