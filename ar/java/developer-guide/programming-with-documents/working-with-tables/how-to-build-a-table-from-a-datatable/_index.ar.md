---
title: كيفية بناء جدول من `DataTable` في Java
second_title: Aspose.Words for Java
articleTitle: بناء جدول من `DataTable`
linktitle: بناء جدول من `DataTable`
description: "مثال على ملء جدول الوثائق من قاعدة البيانات الخارجية باستخدام Java."
type: docs
weight: 130
url: /ar/java/how-to-build-a-table-from-a-datatable/
---

في الغالب تطبيقك سيسحب البيانات من قاعدة بيانات ويخزنها في شكل **DataTable**. ولعلكم ترغبون في إدراج هذه البيانات بسهولة في وثيقتكم كطاولة جديدة وتطبيقها بسرعة على الجدول بأكمله.

{{% alert color="primary" %}}

ملاحظة أن الطريقة المفضلة لإدراج البيانات من **DataTable** في جدول الوثائق هو باستخدام [Mail Merge الأقاليم](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). والتقنية التي تقدم في هذه المادة لا تُقترح إلا إذا لم تتمكن من وضع نموذج مناسب مسبقاً لدمج البيانات، بعبارة أخرى، إذا طلبت من كل شيء أن يحدث برنامجياً.

{{% /alert %}}

استخدام Aspose.Words, يمكنك بسهولة إسترجاع البيانات من قاعدة بيانات وتخزنها كطاولة

1 إنشاء جديد [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) على جسمك [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1 بدء طاولة جديدة باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1 إذا أردنا إدراج أسماء كل من الأعمدة منا **DataTable** ومن ثم يُكرَّر في كل عمود من أعمدة البيانات، ويُكتب أسماء الأعمدة إلى صف في الجدول.
1 من خلال كل **DataRow** في **DataTable**:
   1- تكرّر من خلال كل جسم في **DataRow**.
   1 - إدراج الموضوع في الوثيقة باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). وتتوقف الطريقة المستخدمة على نوع الجسم الذي يجري إدخاله على سبيل المثال [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()للنص و [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])من أجل صفيفة صغيرة تمثل صورة
   ١ - في نهاية تجهيز صف البيانات، ينهي أيضا الصف الذي ينشئه [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) باستخدام [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1 مرة واحدة كل الصفوف من **DataTable** تم تجهيزه وانهاء الطاولة بالاتصال [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1 وأخيرا، يمكننا أن نضع أسلوب الجدول المرغوب فيه باستخدام واحدة من خصائص الجداول المناسبة مثل [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) لتطبيق الشكل تلقائياً على الجدول بأكمله
   البيانات التالية في **DataTable** وتستخدم في هذا المثال:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

ويبين المثال الرمزي التالي كيفية تنفيذ الخوارزمية المذكورة أعلاه في Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

الطريقة يمكن أن تسمى بسهولة باستخدامك **DocumentBuilder** والبيانات

ويبين المثال الرمزي التالي كيفية استيراد البيانات من `DataTable` وتدرجه في جدول جديد في الوثيقة:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

وينتج الجدول الوارد في الصورة الواردة أدناه عن طريق تشغيل الرمز المذكور أعلاه.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
