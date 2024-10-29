---
title: متداخلة Mail Merge مع المناطق في C++
second_title: Aspose.Words ل C++
articleTitle: متداخلة Mail Merge مع المناطق
linktitle: متداخلة Mail Merge مع المناطق
type: docs
description: "قم بإجراء عملية mail merge مع المناطق المتداخلة باستخدام C++. الدمج المتداخل هو ميزة تمكنك من دمج البيانات الهرمية من مصدر البيانات في قالب الدمج الخاص بك."
keywords: "mail merge with nested regions c++"
weight: 30
url: /ar/cpp/nested-mail-merge-with-regions/
---

في بعض السيناريوهات، قد تحتاج إلى استخدام mail merge المتداخلة مع المناطق. الدمج المتداخل هو ميزة تسمح لك بدمج البيانات الهرمية من مصدر البيانات في قالب الدمج الخاص بك لملء المستند بسهولة. في الأساس، يتم تمثيل البيانات الهرمية كمجموعة من عناصر البيانات، وتصف العلاقات الهرمية كيفية ارتباط عناصر البيانات ببعضها البعض (عنصر واحد من البيانات هو أصل عنصر آخر).

Aspose.Words تمكنك من تنفيذ عملية mail merge مع المناطق المتداخلة. يمكنك استخدام هذه الميزة إذا كان لديك مصدر بيانات منظم في بنية تشبه الشجرة وتريد تنفيذ عملية mail merge لملء قالب ببيانات هرمية.

{{% alert color="primary" %}}

المتداخلة mail merge ذات الصلة فقط عند تنفيذ mail merge مع المناطق.

{{% /alert %}}

## ما هو المتداخلة Mail Merge

تسمى منطقة mail merge متداخلة إذا كان لديك منطقتان أو أكثر mail merge حيث توجد إحداهما داخل الأخرى في شكل هرمي. لاحظ أن كل منطقة تحتوي على بيانات من جدول واحد.

المثال الأكثر شيوعا للتداخل mail merge هو ترتيب يحتوي على بعض العناصر حيث تحتاج إلى ربط العديد من جداول البيانات وتقديم المعلومات في قالب.

توضح الصورة أدناه منطقتين متداخلتين حيث تكون منطقة *Order* mail merge هي أصل منطقة *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## كيفية معالجة Mail Merge مع المناطق المتداخلة

يمكن أن تأتي البيانات المراد دمجها في قالب من مصادر مختلفة، بشكل أساسي قواعد البيانات العلائقية أو XML مستندات. في مثالنا، نحن ذاهبون إلى استخدام [SQLite](https://www.sqlite.org/index.html) قاعدة بيانات لتخزين البيانات لدينا وتحميله مع العرف تنفيذ مصدر البيانات.

توضح الصورة أدناه كيفية ربط البيانات من جدول *Order* الذي تم تمريره إلى مناطق الدمج المتداخلة بجدول *Item*، بالإضافة إلى المخرجات التي تم إنشاؤها أثناء عملية الدمج.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

كما ترى من مستند الإخراج، يتم إدراج كل طلب من جدول **Order** في قالب الدمج مع جميع العناصر ذات الصلة بالترتيب من جدول **Item**. سيتم إدراج الطلب التالي مع العناصر الخاصة بهم حتى يتم سرد جميع الطلبات والعناصر. يجب أن يتطابق ترتيب التداخل mail merge مع المناطق في القالب مع علاقات البيانات بين الجداول في مصدر البيانات.

## كيفية إنشاء علاقات البيانات من مصدر بيانات مخصص

قم بتنفيذ واجهة [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) لإنشاء علاقات في بنية الوالدين والطفل لمصدر البيانات المخصص. استخدم طريقة [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) لإرجاع البيانات الفرعية ذات الصلة لسجل الأصل الحالي.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء فاتورة باستخدام متداخلة mail merge مع مناطق من [SQLite](https://www.sqlite.org/index.html) قاعدة بيانات مع [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}