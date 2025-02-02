---
title: تنظيف قبل أو أثناء عملية Mail Merge
second_title: Aspose.Words ل C++
articleTitle: تنظيف قبل أو أثناء عملية Mail Merge
linktitle: تنظيف قبل أو أثناء عملية Mail Merge
type: docs
description: "قم بتطبيق خيارات تنظيف وإزالة مختلفة مثل حذف حقول الدمج قبل إجراء عملية Mail Merge أو إزالة المناطق غير المستخدمة أثناء عملية mail merge."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /ar/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يسمح لك بتطبيق خيارات تنظيف وإزالة مختلفة مثل حذف حقول الدمج قبل إجراء عملية Mail Merge أو إزالة المناطق غير المستخدمة أثناء عملية mail merge. سيشرح هذا القسم كيفية حذف الحقول المدمجة وكيفية إعداد خيار إزالة.

## حذف الحقول المدمجة

عند استخدام قالب طويل تم إنشاؤه بواسطة شخص آخر، قد ترغب في حذف كافة حقول الدمج الموجودة بالفعل في هذا القالب قبل إجراء عملية mail merge. يمكنك استخدام طريقة [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) إذا كنت تريد حذف جميع حقول الدمج من مستند دون تنفيذ عملية mail merge. لا تتأثر هذه الطريقة بأي خيارات إزالة للخاصية [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) وتنفيذها يزيل الحقول المدمجة فقط، وليس أي حقول تحتوي على أو فقرات فارغة.

يوضح مثال الكود التالي كيفية حذف جميع حقول الدمج من القالب الخاص بك دون تنفيذ عملية mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## قم بإعداد خيار `Removing`

يمكنك Aspose.Words من إزالة الحقول والمناطق والفقرات غير المدمجة من قالب أثناء عملية Mail Merge باستخدام خيارات الإزالة.

استخدم خاصية **CleanupOptions** مع تعداد [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) لتعيين خيار الإزالة. حدد العناصر التي تريد إزالتها عن طريق اختيار الخيارات التالية (يمكنك الجمع بين أكثر من واحد):

* إزالة الفقرات الفارغة
* إزالة المناطق غير المستخدمة
* إزالة الحقول غير المستخدمة
* إزالة الحقول التي تحتوي على
* إزالة الحقول الثابتة
* إزالة صفوف الجدول الفارغة

يمكنك اعتبار حقل الدمج غير مدمج في أحد الشروط التالية:

1. إذا كان حقل الدمج في مصدر البيانات لا يحتوي على عمود أو حقل تعيين.
2. إذا كان حقل الدمج في مصدر البيانات يحتوي على حقل تعيين ولكن البيانات فارغة.

{{% alert color="primary" %}}

إذا كنت تقوم بدمج البيانات باستخدام مصادر بيانات منفصلة، فسيتم تمكين خيارات الإزالة هذه فقط مع المكالمة الأخيرة لطريقة تنفيذ mail merge.

{{% /alert %}}

### إزالة الفقرات الفارغة

ستكون الفقرة التي تتضمن حقول الدمج فارغة فقط عندما تزيل عملية Mail Merge جميع حقول الدمج الخاصة بها على أنها غير مدمجة. يمكن لهذه الفقرات الفارغة إضافة مساحة غير مرغوب فيها وتغيير شكل التقرير الذي تم إنشاؤه. قد تواجه حالتين مع الفقرات أثناء عملية mail merge:

1. سيتم دمج الحقل Mail Merge مع بيانات فارغة.
2. حقل الدمج غير مستخدم وسيتم إزالته.

في كلتا الحالتين، سيزيل الخيار **RemoveEmptyParagraphs** تلقائيا الفقرات الفارغة من المستند. أيضا، فإنه سيتم إزالة `TableStart` و TableEnd دمج الحقول إذا بقية الفقرة فارغة.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الفقرات الفارغة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إزالة الحقول غير المستخدمة

Aspose.Words يسمح لك بإزالة أي حقول Mail Merge غير مستخدمة عن طريق تعيين علامة **RemoveUnusedFields** إلى **CleanupOptions**. سيؤدي هذا الخيار إلى إزالة حقول الدمج التي لا تحتوي على البيانات المقابلة في مصدر البيانات.

يوضح مثال الكود التالي كيفية إزالة أي حقول دمج غير مستخدمة من مستند تلقائيا أثناء عملية mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### إزالة الحقول التي تحتوي على

يمكن احتواء حقل دمج داخل حقل آخر مثل حقل **IF** أو حقل صيغة. قم بإزالة هذا الحقل الخارجي عند دمج حقل الدمج أو إزالته من المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الحقول التي تحتوي على حقول دمج من مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**ملاحظة**

### إزالة صفوف الجدول الفارغة

Aspose.Words يسمح لك بإزالة صفوف الجدول الفارغة عن طريق تعيين علامة **RemoveEmptyTableRows** إلى **CleanupOptions**. سيؤدي هذا الخيار إلى إزالة صفوف الجدول التي تحتوي على حقول دمج فارغة.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة صفوف الجدول الفارغة التي تحتوي على مناطق Mail Merge من مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
