---
title: كيفية بناء جدول من DataTable في C#
second_title: Aspose.Words لـ .NET
articleTitle: إنشاء جدول من DataTable
linktitle: إنشاء جدول من DataTable
description: "مثال لملء جدول المستندات من قاعدة بيانات خارجية باستخدام C#."
type: docs
weight: 120
url: /ar/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

غالبًا ما يقوم تطبيقك بسحب البيانات من قاعدة البيانات وتخزينها في شكل **DataTable**. يمكنك بسهولة إدراج هذه البيانات في مستندك كجدول جديد وتطبيق التنسيق بسرعة على الجدول بأكمله.

{{% alert color="primary" %}}

لاحظ أن الطريقة المفضلة لإدراج البيانات من **DataTable** إلى جدول المستندات هي باستخدام [Mail Merge مع المناطق](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). يتم اقتراح التقنية المعروضة في هذه المقالة فقط إذا كنت غير قادر على إنشاء قالب مناسب مسبقًا لدمج البيانات معه، وبعبارة أخرى، إذا كنت تريد أن يحدث كل شيء برمجيًا.

{{% /alert %}}

باستخدام Aspose.Words، يمكنك بسهولة استرداد البيانات من قاعدة البيانات وتخزينها كجدول:

1. قم بإنشاء كائن **DocumentBuilder** جديد على **Document** الخاص بك.
1. ابدأ جدولاً جديدًا باستخدام **DocumentBuilder**.
1. إذا أردنا إدراج أسماء كل عمود من الأعمدة من **DataTable** كصف رأس، فقم بالتكرار خلال كل عمود بيانات واكتب أسماء الأعمدة في صف في الجدول.
1. قم بالتكرار خلال كل **DataRow** في ملف **DataTable**:
   1. قم بالتكرار خلال كل كائن في **DataRow**.
   1. أدخل الكائن في المستند باستخدام **DocumentBuilder**. تعتمد الطريقة المستخدمة على نوع الكائن الذي يتم إدراجه، على سبيل المثال **DocumentBuilder.Writeln** للنص و**DocumentBuilder.InsertImage** لمصفوفة البايت التي تمثل صورة.
   1. في نهاية معالجة **DataRow**، قم أيضًا بإنهاء الصف الذي تم إنشاؤه بواسطة **DocumentBuilder** باستخدام **DocumentBuilder.EndRow**.
1. بمجرد معالجة جميع الصفوف من **DataTable**، قم بإنهاء الجدول عن طريق الاتصال بـ **DocumentBuilder.EndTable**.
1. أخيرًا، يمكننا ضبط نمط الجدول المطلوب باستخدام إحدى خصائص الجدول المناسبة مثل **Table.StyleIdentifier** لتطبيق التنسيق تلقائيًا على الجدول بأكمله.

تقبل طريقة **ImportTableFromDataTable** كائن **DocumentBuilder**، و**DataTable** الذي يحتوي على البيانات وعلامة تحدد ما إذا كان عنوان العمود من **DataTable** متضمنًا في أعلى الجدول. تقوم هذه الطريقة بإنشاء جدول من هذه المعلمات باستخدام الموقع الحالي للمنشئ وتنسيقه. يوفر طريقة لاستيراد البيانات من `DataTable` وإدراجها في جدول جديد باستخدام DocumentBuilder.

يتم استخدام البيانات التالية في **DataTable** الخاص بنا في هذا المثال:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

يوضح مثال التعليمات البرمجية التالي كيفية تنفيذ الخوارزمية المذكورة أعلاه في Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

يمكن بعد ذلك استدعاء الطريقة بسهولة باستخدام **DocumentBuilder** والبيانات الخاصة بك.

يوضح مثال التعليمات البرمجية التالي كيفية استيراد البيانات من `DataTable` وإدراجها في جدول جديد في المستند:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
