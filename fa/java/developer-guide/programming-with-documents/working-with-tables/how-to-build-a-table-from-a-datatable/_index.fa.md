---
title: چگونه یک جدول از یک `DataTable` در Javaبسازیم
second_title: Aspose.Words برای Java
articleTitle: یک جدول از یک `DataTable`بسازید
linktitle: یک جدول از یک `DataTable`بسازید
description: "مثال پر کردن جدول اسناد از پایگاه داده خارجی با استفاده از Java."
type: docs
weight: 130
url: /fa/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

اغلب برنامه شما داده ها را از یک پایگاه داده بیرون می کشد و آن را به شکل **DataTable** ذخیره می کند. شما ممکن است بخواهید به راحتی این داده ها را به عنوان یک جدول جدید در سند خود وارد کنید و به سرعت قالب بندی را به کل جدول اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که روش ترجیح داده شده برای وارد کردن داده ها از یک **DataTable** به یک جدول سند با استفاده از [Mail Merge با مناطق](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). تکنیک ارائه شده در این مقاله تنها در صورتی پیشنهاد می شود که شما قادر به ایجاد یک قالب مناسب از قبل برای ادغام داده ها با، به عبارت دیگر، اگر شما نیاز به همه چیز را به صورت برنامه ریزی شده اتفاق می افتد.

{{% /alert %}}

با استفاده از Aspose.Words می توانید به راحتی داده ها را از یک پایگاه داده بازیابی کنید و آن را به عنوان یک جدول ذخیره کنید:

1. یک شی جدید [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) در [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) خود ایجاد کنید.
1. شروع یک جدول جدید با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. اگر می خواهیم نام هر یک از ستون ها را از **DataTable** خود به عنوان یک ردیف سرصفحه وارد کنیم، سپس از طریق هر ستون داده تکرار کنید و نام ستون ها را به یک ردیف در جدول بنویسید.
1. از طریق هر **DataRow** در **DataTable**تکرار کنید:
   1. از طریق هر شی در **DataRow** تکرار کنید.
   1. شی را با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) وارد سند کنید. روش مورد استفاده به نوع شیء وارد شده بستگی دارد به عنوان مثال [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) برای متن و [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) برای یک آرایه بایت که یک تصویر را نشان می دهد.
   1. در پایان پردازش ردیف داده ها نیز ردیف ایجاد شده توسط [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) با استفاده از [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) به پایان می رسد.
1. هنگامی که تمام ردیف های **DataTable** پردازش شده اند، جدول را با فراخوانی [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) به پایان برسانید.
1. در نهایت، ما می توانیم سبک جدول مورد نظر را با استفاده از یکی از ویژگی های جدول مناسب مانند [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) تنظیم کنیم تا به طور خودکار قالب بندی را به کل جدول اعمال کنیم.
   داده های زیر در **DataTable** ما در این مثال استفاده می شود:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

مثال کد زیر نشان می دهد که چگونه الگوریتم فوق را در Aspose.Wordsاجرا کنیم:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

این روش را می توان به راحتی با استفاده از **DocumentBuilder** و داده های خود فراخواند.

مثال کد زیر نشان می دهد که چگونه داده ها را از یک `DataTable` وارد کنید و آن را در یک جدول جدید در سند قرار دهید:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

جدول نشان داده شده در تصویر زیر با اجرای کد بالا تولید می شود.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
