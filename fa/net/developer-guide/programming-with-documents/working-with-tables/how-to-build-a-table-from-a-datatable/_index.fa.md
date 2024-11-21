---
title: چگونه یک جدول از یک `DataTable` در C# بسازیم
second_title: Aspose.Words برای .NET
articleTitle: یک جدول از یک `DataTable` بسازید
linktitle: یک جدول از یک `DataTable` بسازید
description: "نمونه ای از پر کردن جدول سند از پایگاه داده خارجی با استفاده از C#."
type: docs
weight: 120
url: /fa/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

اغلب برنامه شما داده ها را از یک پایگاه داده بیرون می کشد و آن ها را در قالب یک **DataTable** ذخیره می کند. شما به راحتی می توانید این داده ها را به عنوان یک جدول جدید در سند خود وارد کنید و به سرعت قالب بندی را در کل جدول اعمال کنید.

{{% alert color="primary" %}}

توجه داشته باشید که روش ترجیحی برای درج داده ها از یک **DataTable** در یک جدول سند، استفاده از [Mail Merge با مناطق](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) است. تکنیک ارائه شده در این مقاله تنها در صورتی پیشنهاد می شود که قادر به ایجاد یک الگوی مناسب قبل از دست برای ادغام داده ها با آن نباشید، به عبارت دیگر اگر نیاز دارید که همه چیز به صورت برنامه ریزی شده اتفاق بیفتد.

{{% /alert %}}

با استفاده از Aspose.Words، می توانید به راحتی داده ها را از یک پایگاه داده بازیابی کرده و به صورت جدول ذخیره کنید:

1. یک شی **DocumentBuilder** جدید در **Document** خود ایجاد کنید.
1. یک جدول جدید با استفاده از **DocumentBuilder** شروع کنید.
1. اگر می‌خواهیم نام هر یک از ستون‌ها را از **DataTable** خود به‌عنوان یک ردیف هدر درج کنیم، در هر ستون داده‌ها را تکرار کرده و نام ستون‌ها را در یک ردیف در جدول بنویسیم.
1. از طریق هر **DataRow** در **DataTable** تکرار کنید:
   1. از طریق هر شی در **DataRow** تکرار کنید.
   1. شی را با استفاده از **DocumentBuilder** در سند وارد کنید. روش استفاده شده بستگی به نوع شیء درج شده دارد، مثلاً **DocumentBuilder.Writeln** برای متن و **DocumentBuilder.InsertImage** برای آرایه بایتی که یک تصویر را نشان می دهد.
   1. در پایان پردازش **DataRow** همچنین ردیف ایجاد شده توسط **DocumentBuilder** را با استفاده از **DocumentBuilder.EndRow** پایان دهید.
1. هنگامی که تمام ردیف های **DataTable** پردازش شدند، جدول را با فراخوانی **DocumentBuilder.EndTable** تمام کنید.
1. در نهایت می توانیم سبک جدول مورد نظر را با استفاده از یکی از ویژگی های جدول مناسب مانند **Table.StyleIdentifier** تنظیم کنیم تا به طور خودکار قالب بندی را در کل جدول اعمال کنیم.

روش **ImportTableFromDataTable** یک شی **DocumentBuilder** را می پذیرد، **DataTable** حاوی داده ها و یک پرچم است که مشخص می کند عنوان ستون از **DataTable** در بالای جدول گنجانده شده است یا خیر. این روش یک جدول از این پارامترها با استفاده از موقعیت فعلی سازنده و قالب بندی می سازد. روشی را برای وارد کردن داده ها از `DataTable` و درج آن در جدول جدید با استفاده از DocumentBuilder ارائه می دهد.

داده های زیر در **DataTable** ما در این مثال استفاده شده است:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

مثال کد زیر نحوه اجرای الگوریتم فوق را در Aspose.Words نشان می دهد:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

سپس می توان روش را با استفاده از **DocumentBuilder** و داده های شما به راحتی فراخوانی کرد.

مثال کد زیر نحوه وارد کردن داده ها از یک `DataTable` و درج آن را در جدول جدید در سند نشان می دهد:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
