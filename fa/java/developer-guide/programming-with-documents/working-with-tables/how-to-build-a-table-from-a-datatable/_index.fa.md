---
title: چگونه یک جدول را از یک جدول بسازید `DataTable` در Java
second_title: Aspose.Words برای Java
articleTitle: ساخت یک جدول از یک `DataTable`
linktitle: ساخت یک جدول از یک `DataTable`
description: "مثال پر کردن جدول سند از پایگاه داده خارجی با استفاده از Java..."
type: docs
weight: 130
url: /fa/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

اغلب درخواست شما داده ها را از یک پایگاه داده می گیرد و آن را به شکل یک پایگاه داده ذخیره می کند. **DataTable**... شما ممکن است بخواهید به راحتی این اطلاعات را به عنوان یک جدول جدید وارد کنید و به سرعت قالب بندی را به کل جدول اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که روش ترجیحی قرار دادن داده ها از یک **DataTable** در یک جدول سند با استفاده از [Mail Merge مناطق](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)... تکنیک ارائه شده در این مقاله تنها پیشنهاد شده است اگر شما قادر به ایجاد یک قالب مناسب از قبل برای ادغام داده ها با، به عبارت دیگر، اگر شما نیاز به همه چیز به صورت برنامه ریزی.

{{% /alert %}}

استفاده از Aspose.Words, شما به راحتی می توانید داده ها را از یک پایگاه داده بازیابی کنید و آن را به عنوان یک جدول ذخیره کنید:

1. ایجاد یک جدید [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) روی جسم شما [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)...
1. شروع یک میز جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)...
1. اگر می خواهیم نام هر یک از ستون ها را از ستون های ما وارد کنیم **DataTable** به عنوان یک ردیف سر سپس آن را از طریق هر ستون داده و نوشتن نام ستون به یک ردیف در جدول.
1. از طریق هر **DataRow** در **DataTable**:
   ۱٫ از طریق هر شی در **DataRow**...
   1- وارد کردن شی به سند با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)... روش استفاده شده بستگی به نوع شی موجود دارد به عنوان مثال [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()برای متن و [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])برای یک آرایه بایت که نشان دهنده یک تصویر است.
   1.در پایان پردازش ردیف داده ها، ردیف ایجاد شده توسط ردیف ایجاد شده توسط [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) با استفاده از [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)...
1. هنگامی که همه ردیف ها از **DataTable** این میز را با درخواست به پایان رسانده اند [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)...
1. در نهایت، ما می توانیم سبک میز مورد نظر را با استفاده از یکی از ویژگی های میز مناسب مانند [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) به طور خودکار قالب بندی را به کل جدول اعمال کنید.
   داده های زیر در ما **DataTable** در این مثال استفاده می شود:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

مثال کد زیر نشان می دهد که چگونه الگوریتم فوق را در بالا اجرا کنیم Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

سپس می تواند به راحتی با استفاده از شما تماس بگیرد. **DocumentBuilder** داده ها

مثال کد زیر نشان می دهد که چگونه داده ها را از یک `DataTable` و آن را در یک جدول جدید در سند قرار دهید:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

جدول نشان داده شده در تصویر زیر با اجرای کد بالا تولید می شود.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
