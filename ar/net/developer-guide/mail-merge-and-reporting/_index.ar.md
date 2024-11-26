---
title: Mail Merge والإبلاغ في C#
second_title: Aspose.Words ل .NET
articleTitle: Mail Merge والإبلاغ
linktitle: Mail Merge والإبلاغ
type: docs
description: "Mail Merge هي ميزة شائعة لإنشاء المستندات بسرعة باستخدام C#. Aspose.Words إلى عن على .NET يأخذ وظيفة Mail Merge القياسية ويقدمها بخطوات عديدة إلى الأمام، ويحولها إلى حل تقارير كامل يسمح لك بإنشاء مستندات أكثر تعقيدا مثل التقارير والكتالوجات والمخزونات والفواتير."
keywords: "how to use Mail Merge c#"
weight: 30
url: /ar/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge هي ميزة شائعة لإنشاء مستندات بسرعة وسهولة مثل الحروف والتسميات والمظاريف. يمكنك Aspose.Words من إنشاء مستندات من قوالب تحتوي على حقول Mail Merge.

حقل Mail Merge هو حقل يمكنك إدراجه في قالب mail merge لتضمين قيم محددة من سجل مصدر بيانات في مستندات الإخراج. على سبيل المثال، يمكنك إدراج حقل دمج في قالب بريد إلكتروني بحيث يكون للتحية الاسم الأول للمستلم بدلا من الاسم العام "مرحبا!". Aspose.Words يضع البيانات من مصدر خارجي، مثل قاعدة بيانات أو ملف، في هذه الحقول وتنسيقها. يتم حفظ المستند الناتج في المجلد المحدد.

Aspose.Words يأخذ وظيفة Mail Merge القياسية ويقدمها بخطوات عديدة إلى الأمام، ويحولها إلى حل تقارير كامل يسمح لك بإنشاء مستندات أكثر تعقيدا مثل التقارير والكتالوجات والمخزونات والفواتير. فيما يلي بعض مزايا حل الإبلاغ Aspose.Words:

- تقارير التصميم في Microsoft Word باستخدام حقول Mail Merge القياسية
- تحديد المناطق التي تنمو في المستند، مثل صفوف الترتيب التفصيلية
- إدراج الصور خلال mail merge
- تنفيذ أي منطق مخصص أو التحكم في التنسيق أو إدراج محتوى معقد باستخدام معالجات الأحداث Mail Merge
- املأ المستندات بالبيانات من أي نوع من مصادر البيانات

{{% alert color="primary" %}}

يتم استخدام مساحة الاسم [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) للعمل مع دمج البريد.

{{% /alert %}}

## الآلية والمكونات الرئيسية لـ Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words يوفر القدرة على تحميل المستندات في مختلف [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) ثم يسمح للمستخدمين بإجراء عملية Mail Merge.

عادة، يسمح لك المستند المحمل بتخزين حقول الدمج، على سبيل المثال، مستند بتنسيق DOCX. ولكن هناك تنسيقات لا تخزن مثل هذه الحقول، على سبيل المثال، TXT. إذا كان Aspose.Words يدعم تحميل تنسيقات الملفات هذه، فيمكنك إضافة حقول الدمج مباشرة إلى نموذج المستند، وحفظ المستند بطريقة ملائمة [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/)، وتنفيذ عملية Mail Merge.

ستقوم عملية Mail Merge بدمج *mail merge template* و *data source* لإنشاء فرد *merged documents*.

## ما هو Mail Merge قالب {#what-is-a-mail-merge-template}

الهدف من تطبيق عملية mail merge باستخدام قالب دمج هو تبسيط عملية إنشاء مستند.

هناك عدة طرق لإنشاء وتصميم قالب دمج. يمكنك استخدام Microsoft Word، ولا يجب أن يكون قالب الدمج قالب Microsoft Word، أي مستند بتنسيق DOT أو DOTX، يمكن أن يكون مستندا عاديا بتنسيق DOC أو DOCX. تحتاج إلى إدراج بعض الحقول الخاصة التي تسمى حقول الدمج في هذا القالب في الأماكن التي تريد فيها إدراج البيانات من مصدر البيانات لاحقا. أو يمكنك إنشاء قالب دمج برمجيا باستخدام فئة [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

يحتوي قالب الدمج على النص الرئيسي، والذي يجب أن يكون هو نفسه في جميع مستندات الإخراج بعد إجراء عملية Mail Merge. يمكنك استخدام أي تنسيق للقالب الخاص بك إذا كانت هناك إمكانية لإضافة حقول دمج إليه. سيتم ملء جميع حقول الدمج داخل القالب الخاص بك من مصدر البيانات الخاص بك أثناء عملية Mail Merge.

## مصادر البيانات لعملية Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge يقبل مصادر البيانات المختلفة. هذا يمكن أن يكون إما DataTable, DataView, DataSet, IDataReader, مجموعة من القيم التي يدعمها ADO .NET، أو مصادر البيانات المخصصة التي يمثلها [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) التطبيقات.

يحتوي مصدر البيانات على جميع المعلومات التي يتم سحبها أثناء عملية Mail Merge من أجل تخصيص رسائل البريد الإلكتروني والمستندات الفردية. يمكن إنشاء مصادر البيانات يدويا أو إنشاؤها عن طريق الإبلاغ من قاعدة بيانات أو تطبيق موجود. إذا كانت لديك بيانات بتنسيق XML، فيمكنك تحميلها ودمجها مع DataSet. ستتم عملية Mail Merge من خلال جميع سجلات مصدر البيانات وإدراجها في حقول Mail Merge في المستند. يمكنك تنفيذ بعض واجهات mail merge مثل [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/) لدمج البيانات من أي مصدر بيانات، بما في ذلك استعلام LINQ أو ملف XML أو كائنات الأعمال.

يوضح مثال التعليمات البرمجية التالية كيفية تحميل جدول بيانات كمصدر بيانات لعملية Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## المستندات المدمجة لعملية Mail Merge {#merged-documents-of-a-mail-merge-operation}

المستند المدمج هو نتيجة العملية Mail Merge عند دمج القالب مع مصدر البيانات. يتم استبدال كافة حقول الدمج داخل المستند المدمج بالبيانات الفعلية من مصدر البيانات.

تعرض الصورة التالية مثالا لقالب الدمج مع الحقول المدمجة قبل تنفيذ عملية Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

تظهر الصورة التالية مثالا على المستند المدمج الناتج نتيجة لأداء عملية Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## أنظر أيضا

- [العمل مع Mail Merge قوالب في Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
