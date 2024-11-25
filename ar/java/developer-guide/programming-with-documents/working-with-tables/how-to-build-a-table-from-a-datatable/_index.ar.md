---
title: كيفية بناء جدول من `DataTable` في Java
second_title: Aspose.Words ل Java
articleTitle: بناء جدول من `DataTable`
linktitle: بناء جدول من `DataTable`
description: "مثال على ملء جدول المستندات من قاعدة بيانات خارجية باستخدام Java."
type: docs
weight: 130
url: /ar/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

في كثير من الأحيان التطبيق الخاص بك سوف سحب البيانات من قاعدة بيانات وتخزينها في شكل **DataTable**. قد ترغب في إدراج هذه البيانات بسهولة في المستند كجدول جديد وتطبيق التنسيق بسرعة على الجدول بأكمله.

{{% alert color="primary" %}}

لاحظ أن الطريقة المفضلة لإدراج البيانات من **DataTable** في جدول المستندات هي باستخدام [Mail Merge مع المناطق](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). يتم اقتراح التقنية المقدمة في هذه المقالة فقط إذا كنت غير قادر على إنشاء قالب مناسب مسبقا لدمج البيانات معه، بمعنى آخر، إذا كنت تحتاج إلى حدوث كل شيء برمجيا.

{{% /alert %}}

باستخدام Aspose.Words، يمكنك بسهولة استرداد البيانات من قاعدة بيانات وتخزينها كجدول:

1. قم بإنشاء كائن [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) جديد على [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. ابدأ جدولا جديدا باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. إذا أردنا إدراج أسماء كل عمود من **DataTable** كصف رأس، فقم بالتكرار خلال كل عمود بيانات واكتب أسماء الأعمدة في صف في الجدول.
1. كرر من خلال كل **DataRow** في **DataTable**:
   1. كرر من خلال كل كائن في **DataRow**.
   1. أدخل الكائن في المستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). تعتمد الطريقة المستخدمة على نوع الكائن الذي يتم إدراجه على سبيل المثال [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) للنص و [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) لمصفوفة بايت تمثل صورة.
   1. في نهاية معالجة صف البيانات، قم أيضا بإنهاء الصف الذي يتم إنشاؤه بواسطة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) باستخدام [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. بمجرد معالجة جميع الصفوف من **DataTable**، قم بإنهاء الجدول عن طريق الاتصال [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. أخيرا، يمكننا تعيين نمط الجدول المطلوب باستخدام إحدى خصائص الجدول المناسبة مثل [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) لتطبيق التنسيق تلقائيا على الجدول بأكمله.
   يتم استخدام البيانات التالية في **DataTable** في هذا المثال:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

يوضح مثال الكود التالي كيفية تنفيذ الخوارزمية أعلاه في Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

يمكن بعد ذلك استدعاء الطريقة بسهولة باستخدام **DocumentBuilder** والبيانات.

يوضح مثال التعليمات البرمجية التالية كيفية استيراد البيانات من `DataTable` وإدراجها في جدول جديد في المستند:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

يتم إنتاج الجدول الموضح في الصورة أدناه عن طريق تشغيل الكود أعلاه.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
