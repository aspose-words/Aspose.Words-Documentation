---
title: Mail Merge مع المناطق في C++
second_title: Aspose.Words ل C++
articleTitle: Mail Merge مع المناطق
linktitle: Mail Merge مع المناطق
type: docs
description: "قم بإنشاء مناطق مختلفة في القالب الخاص بك للحصول على مناطق خاصة يمكنك ببساطة ملؤها ببياناتك. استخدام Mail Merge مع المناطق إذا كنت ترغب في إدراج الجداول والصفوف مع تكرار البيانات لجعل المستندات الخاصة بك تنمو بشكل حيوي."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /ar/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

يمكنك إنشاء مناطق مختلفة في القالب الخاص بك للحصول على مناطق خاصة يمكنك ببساطة ملؤها ببياناتك. استخدام Mail Merge مع المناطق إذا كنت ترغب في إدراج الجداول والصفوف مع تكرار البيانات لجعل المستندات الخاصة بك تنمو بشكل حيوي عن طريق تحديد تلك المناطق داخل القالب.

يمكنك إنشاء مناطق متداخلة (فرعية) بالإضافة إلى مناطق دمج. الميزة الرئيسية لاستخدام هذا النوع هي زيادة الأجزاء داخل المستند ديناميكيا. اطلع على مزيد من التفاصيل في المقالة التالية "متداخلة Mail Merge مع المناطق".

{{% alert color="primary" %}}

يمكن الحصول على معلومات حول منطقة Mail Merge باستخدام فئة [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## كيفية تنفيذ Mail Merge مع المناطق

المنطقة Mail Merge هي جزء محدد داخل مستند يحتوي على نقطة بداية ونقطة نهاية. يتم تمثيل كلتا النقطتين كحقول Mail Merge لها أسماء محددة *"TableStart:XXX"* و *"TableEnd:XXX"*. سيتم تكرار جميع المحتويات المضمنة في منطقة Mail Merge تلقائيا لكل سجل في مصدر البيانات.

Aspose.Words يسمح لك بتنفيذ Mail Merge مع المناطق باستخدام إحدى طرق [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) التي تقبل [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) مصدر البيانات المخصص.

يوضح مثال التعليمات البرمجية التالية كيفية تنفيذ Mail Merge مع المناطق من قاعدة بيانات سكليتي مع [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

يمكنك ملاحظة الفرق بين المستند قبل تنفيذ Mail Merge مع المناطق:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

وبعد تنفيذ Mail Merge مع المناطق:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## حدود Mail Merge مع المناطق

هناك بعض النقاط المهمة التي تحتاج إلى أخذها في الاعتبار عند إجراء Mail Merge مع المناطق:

* يجب أن تكون نقطة البداية *TableStart:Orders* ونقطة النهاية *TableEnd:Orders* في نفس الصف أو الخلية. على سبيل المثال، إذا بدأت منطقة دمج في خلية جدول، فيجب إنهاء منطقة الدمج في نفس الصف مثل الخلية الأولى.
  يجب أن يتطابق اسم حقل الدمج مع اسم العمود في DataTable. ما لم تحدد الحقول المعينة، Mail Merge مع المناطق لن تنجح لأي حقل دمج له اسم آخر غير اسم العمود.
* Aspose.Words ل C++ يدعم فقط [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) و [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) مصادر البيانات القائمة. على عكس .NET و Java، C++ ليس لديها منصة مشتركة مقبولة بشكل عام API للعمل مع قواعد البيانات (مثل ADODB أو ODBC أو JDBC). من أجل العمل مع مصدر بيانات معين، يجب عليك تنفيذ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) أو [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) واجهة.

إذا تم كسر إحدى هذه القواعد، فستحصل على نتائج غير متوقعة أو قد يتم طرح استثناء.

{{% alert color="primary" %}}

إذا كنت لا تستخدم مناطق mail merge، فستكون مشابهة لـ Microsoft Word mail merge، وسيتم تكرار محتوى المستند بالكامل لكل سجل في مصدر البيانات.

{{% /alert %}}

