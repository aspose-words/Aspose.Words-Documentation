---
title: Mail Merge با مناطق در C++
second_title: Aspose.Words برای C++
articleTitle: Mail Merge با مناطق
linktitle: Mail Merge با مناطق
type: docs
description: "مناطق مختلفی را در قالب خود ایجاد کنید تا مناطق خاصی داشته باشید که می توانید به سادگی با داده های خود پر کنید. از mail merge با مناطق استفاده کنید اگر می خواهید جداول، ردیف هایی با داده های تکراری را وارد کنید تا اسناد شما به طور پویا رشد کنند."
keywords: "how to execute mail merge c++"
weight: 20
url: /fa/cpp/mail-merge-with-regions/
---

شما می توانید مناطق مختلف را در قالب خود ایجاد کنید تا مناطق خاصی داشته باشید که می توانید به سادگی با داده های خود پر کنید. اگر می خواهید جدول ها، ردیف هایی با داده های تکراری را وارد کنید، از mail merge با مناطق استفاده کنید تا اسناد خود را با مشخص کردن آن مناطق در قالب خود به طور پویا رشد دهید.

شما می توانید مناطق آشیانه ای (کودک) و همچنین مناطق ادغام ایجاد کنید. مزیت اصلی استفاده از این نوع افزایش پویا قطعات داخل یک سند است. جزئیات بیشتر را در مقاله بعدی "Nested Mail Merge with Regions"مشاهده کنید.

{{% alert color="primary" %}}

اطلاعات مربوط به یک منطقه mail merge را می توان با استفاده از کلاس [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) بدست آورد.

{{% /alert %}}

## نحوه اجرای Mail Merge با مناطق

منطقه mail merge یک بخش خاص در داخل یک سند است که دارای نقطه شروع و نقطه پایان است. هر دو نقطه به عنوان فیلد های mail merge که نام های خاص *"TableStart:XXX"* و *"TableEnd:XXX"* دارند، نشان داده می شوند. تمام محتوایی که در یک منطقه mail merge گنجانده شده است به طور خودکار برای هر رکورد در منبع داده تکرار می شود.

Aspose.Words به شما اجازه می دهد تا mail merge را با مناطق با استفاده از یکی از روش های [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) که منبع داده سفارشی [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) را قبول می کند، اجرا کنید.

مثال کد زیر نشان می دهد که چگونه mail merge را با مناطق از پایگاه داده sqlite با [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

شما می توانید تفاوت بین سند را قبل از اجرای mail merge با مناطق مشاهده کنید:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

و پس از اجرای mail merge با مناطق:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## محدودیت های Mail Merge با مناطق

برخی از نکات مهم وجود دارد که شما باید در هنگام انجام یک mail merge با مناطق در نظر بگیرید:

* نقطه شروع *TableStart:Orders* و نقطه پایان *TableEnd:Orders* هر دو باید در یک ردیف یا سلول باشند. به عنوان مثال، اگر یک منطقه ادغام را در یک سلول جدول شروع کنید، باید منطقه ادغام را در همان ردیف سلول اول پایان دهید.
  نام فیلد ادغام باید با نام ستون در DataTable شما مطابقت داشته باشد. مگر اینکه فیلد های نقشه برداری شده را مشخص کنید ،mail merge با مناطق برای هر فیلد ادغام که نام دیگری به جز نام ستون دارد موفق نخواهد شد.
* Aspose.Words برای C++ فقط از منابع داده مبتنی بر [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) و [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) پشتیبانی می کند. برخلاف .NET و Java، C++ برای کار با پایگاه داده ها (مانند ADODB، ODBC یا JDBC) یک سیستم عامل متقابل پذیرفته شده API ندارد. برای کار با یک منبع داده خاص، باید رابط [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) یا [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) را پیاده سازی کنید.

اگر یکی از این قوانین شکسته شود، نتایج غیر منتظره ای خواهید داشت یا ممکن است استثنا ایجاد شود.

{{% alert color="primary" %}}

اگر از مناطق mail merge استفاده نکنید، مشابه Microsoft Word mail merge خواهد بود و کل محتوای سند برای هر رکورد در منبع داده تکرار خواهد شد.

{{% /alert %}}

