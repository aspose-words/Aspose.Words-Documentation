---
title: آشیانه Mail Merge با مناطق در C#
second_title: Aspose.Words برای .NET
articleTitle: آشیانه Mail Merge با مناطق
linktitle: آشیانه Mail Merge با مناطق
type: docs
description: "عملیات Mail Merge را با مناطق آشیانه ای با استفاده از C# انجام دهید. ادغام آشیانه ای یک ویژگی است که شما را قادر می سازد داده های سلسله مراتبی را از منبع داده خود به قالب ادغام خود ادغام کنید."
keywords: "mail merge with nested regions c#"
weight: 10
url: /fa/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

در برخی از سناریوها، ممکن است لازم باشد از Mail Merge آشیانه ای با مناطق استفاده کنید. ادغام آشیانه ای یک ویژگی است که شما را قادر می سازد تا داده های سلسله مراتبی را از منبع داده خود به قالب ادغام خود ادغام کنید تا به راحتی سند خود را پر کنید. اساسا، داده های سلسله مراتبی به عنوان مجموعه ای از آیتم های داده نشان داده می شوند و روابط سلسله مراتبی توضیح می دهد که چگونه آیتم های داده با یکدیگر مرتبط هستند (یک آیتم داده والدین یکی دیگر است).

Aspose.Words به شما اجازه می دهد تا عملیات Mail Merge را با مناطق آشیانه ای انجام دهید. شما می توانید از این ویژگی استفاده کنید اگر یک منبع داده دارید که به یک ساختار درخت مانند سازماندهی شده است و می خواهید یک عملیات Mail Merge را برای پر کردن یک قالب با داده های سلسله مراتبی اجرا کنید.

{{% alert color="primary" %}}

Nested Mail Merge فقط در هنگام انجام یک Mail Merge با مناطق مرتبط است.

{{% /alert %}}

## آشیانه ای چیست Mail Merge

منطقه Mail Merge اگر دو یا چند منطقه Mail Merge داشته باشید که یکی از آنها در داخل دیگری به شکل سلسله مراتبی باشد، آشیانه نامیده می شود. توجه داشته باشید که هر منطقه حاوی داده های یک جدول است.

رایج ترین مثال از یک Mail Merge آشیانه ای یک سفارش است که شامل چندین آیتم است که در آن شما باید چندین جدول داده را به هم پیوند دهید و اطلاعات را در یک قالب ارائه دهید.

تصویر زیر دو منطقه آشیانه ای را نشان می دهد که در آن منطقه *Order* Mail Merge مادر منطقه *Item* Mail Merge است.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## نحوه پردازش Mail Merge با مناطق آشیانه ای

داده هایی که باید در یک قالب ادغام شوند می توانند از منابع مختلف، عمدتا پایگاه داده های رابطه ای یا اسناد XML باشند. در مثال ما، ما از یک فایل XML برای ذخیره داده های خود استفاده می کنیم و آن را مستقیما به **DataSet** بارگذاری می کنیم.

Aspose.Words به شما اجازه می دهد تا Mail Merge را با مناطق آشیانه ای با استفاده از روابط داده مشخص شده در **DataSet** پردازش کنید. وقتی شیء **DataSet** XML بارگذاری می شود، یا از طرح ارائه شده استفاده می کند یا آن را از ساختار خود XML برای انجام این کار استنباط می کند. از این ساختار، در صورت لزوم روابط بین جداول ایجاد می کند.

تصویر زیر نشان می دهد که چگونه داده های جدول *Order* که به مناطق ادغام شده منتقل شده است به جدول *Item* و همچنین خروجی تولید شده در طول عملیات ادغام مرتبط خواهد بود.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

همانطور که از سند خروجی می بینید، هر سفارش از جدول **Order** در قالب ادغام با تمام موارد مرتبط با سفارش از جدول **Item** قرار داده شده است. سفارش بعدی همراه با اقلام آنها قرار داده خواهد شد تا زمانی که تمام سفارشات و اقلام ذکر شده باشد. ترتیب لانه سازی Mail Merge با مناطق در قالب باید با روابط داده بین جداول در منبع داده مطابقت داشته باشد.

مثال کد زیر نشان می دهد که چگونه یک فاکتور را با استفاده از Mail Merge با مناطق ایجاد کنید:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

شما می توانید پیاده سازی تنظیم روابط داده ها را به صورت دستی از [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## چگونه روابط داده را در مناطق آشیانه ای Mail Merge تنظیم کنیم

شما باید تمام روابط داده را در ساختار والدین و کودک تنظیم کنید تا Mail Merge آشیانه ای را با مناطق به درستی اجرا کنید. حذف این مرحله مهم می تواند منجر به شکست در اجرای Mail Merge آشیانه ای با مناطق شود.

هنگام بازیابی داده ها برای یک فایل Mail Merge از یک فایل XML با استفاده از روش **ReadXml**، روابط به طور خودکار با توجه به ساختار سند XML ایجاد می شوند. با این حال، باید مطمئن شوید که روابط صحیح ایجاد شده است.

اگر Mail Merge به عنوان انتظار می رود کار نمی کند، پس شما ممکن است نیاز به بازسازی فایل XML خود را و یا به طور صریح ایجاد روابط بین DataTable اشیاء در DataSet.

`DataSet` که دارای جداول داده مرتبط است از شی **DataRelation** برای نشان دادن رابطه والدین و فرزند بین جداول استفاده می کند.

مثال کد زیر نشان می دهد که چگونه یک `DataRelation` بین جدول مشتری و جدول سفارش با استفاده از یک شی `DataRelation` ایجاد کنیم:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## چگونه روابط داده را از یک منبع داده سفارشی ایجاد کنیم

رابط [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) را برای ایجاد روابط در ساختار والدین و فرزند منبع داده سفارشی خود پیاده سازی کنید. از روش [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) برای بازگرداندن داده های مربوط به فرزند یک پرونده والدین فعلی استفاده کنید.

مثال زیر نشان می دهد که چگونه با استفاده از **GetChildDataSource**روابط داده ایجاد کنیم:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
