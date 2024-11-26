---
title: انواع عملیات Mail Merge در Java
second_title: Aspose.Words برای Java
articleTitle: انواع عملیات Mail Merge
linktitle: انواع عملیات Mail Merge
type: docs
description: "انجام دو نوع مختلف از عملیات Mail Merge: ساده Mail Merge و Mail Merge با مناطق. ساده Mail Merge کل سند را در هر رکورد منبع داده تکرار می کند، در حالی که Mail Merge با مناطق تنها مناطق مشخص شده در هر رکورد را با استفاده از Java تکرار می کند."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /fa/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

ایده اصلی Mail Merge این است که به طور خودکار یک سند یا چندین سند بر اساس قالب و داده های شما از منبع داده خود ایجاد کنید. Aspose.Words به شما اجازه می دهد تا دو نوع مختلف از عملیات Mail Merge را انجام دهید: ساده Mail Merge و Mail Merge با مناطق.

رایج ترین مثال استفاده از simple Mail Merge زمانی است که می خواهید یک سند برای مشتریان مختلف با اضافه کردن نام آنها در ابتدای سند ارسال کنید. برای انجام این کار، شما باید زمینه های ادغام مانند *First Name* و *Last Name* را در قالب خود ایجاد کنید، و سپس آنها را با داده های منبع داده خود پر کنید. در حالی که رایج ترین مثال استفاده از Mail Merge با مناطق زمانی است که شما می خواهید یک سند ارسال کنید که شامل سفارشات خاص با لیست تمام موارد در هر سفارش است. برای انجام این کار، شما باید مناطق ادغام را در داخل منطقه خود برای هر سفارش ایجاد کنید تا آن را با تمام داده های مورد نیاز برای آیتم ها پر کنید.

تفاوت اصلی بین هر دو عملیات ادغام این است که ساده Mail Merge (بدون مناطق) کل سند را در هر رکورد منبع داده تکرار می کند، در حالی که Mail Merge با مناطق فقط مناطق تعیین شده را در هر رکورد تکرار می کند. شما می توانید یک عملیات ساده Mail Merge را به عنوان یک مورد خاص از ادغام با مناطقی که تنها منطقه کل سند است، در نظر بگیرید.

{{% alert color="primary" %}}

کلاس [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) نشان دهنده یک قابلیت Mail Merge است. با خواص آن، شما می توانید رفتار مورد نیاز را قبل از اجرای یک عملیات Mail Merge سفارشی کنید.

{{% /alert %}}

## عملیات ساده Mail Merge {#simple-mail-merge-operation}

یک Mail Merge ساده برای پر کردن فیلدهای Mail Merge داخل قالب شما با داده های مورد نیاز از منبع داده شما (نمایش جدول واحد) استفاده می شود. پس شبیه به کلاسیک Mail Merge در Microsoft Word است.

شما می توانید یک یا چند فیلد ادغام را در قالب خود اضافه کنید و سپس عملیات ساده Mail Merge را اجرا کنید. توصیه می شود از آن استفاده کنید اگر قالب شما شامل هیچ منطقه ادغام نیست.

محدودیت اصلی استفاده از این نوع این است که کل محتوای سند برای هر رکورد در منبع داده تکرار خواهد شد.

### چگونه یک عملیات ساده Mail Merge را اجرا کنیم {#how-to-execute-a-simple-mail-merge-operation}

وقتی قالب شما آماده شد، می توانید عملیات ساده Mail Merge را شروع کنید. Aspose.Words به شما اجازه می دهد تا یک عملیات ساده Mail Merge را با استفاده از [روش ها را اجرا کنید](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) مختلف که اشیاء داده های مختلف را به عنوان منبع داده قبول می کند، اجرا کنید.

مثال کد زیر نشان می دهد که چگونه یک عملیات ساده Mail Merge را با استفاده از یکی از روش [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object) اجرا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

شما می توانید تفاوت بین سند را قبل از اجرای ساده متوجه شوید mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

و بعد از اجرای ساده mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### چگونه چندین سند ادغام شده ایجاد کنیم

در Aspose.Words، عملیات استاندارد Mail Merge تنها یک سند را با محتوای منبع داده شما پر می کند. بنابراین، شما باید عملیات Mail Merge را چندین بار اجرا کنید تا چندین سند ادغام شده به عنوان خروجی ایجاد کنید.

مثال کد زیر نشان می دهد که چگونه چندین سند ادغام شده را در طول یک عملیات Mail Merge تولید کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge با مناطق

شما می توانید مناطق مختلف را در قالب خود ایجاد کنید تا مناطق خاصی داشته باشید که می توانید به سادگی با داده های خود پر کنید. اگر می خواهید جدول ها، ردیف هایی با داده های تکراری را وارد کنید، از Mail Merge با مناطق استفاده کنید تا اسناد خود را با مشخص کردن آن مناطق در قالب خود به طور پویا رشد دهید.

شما می توانید مناطق آشیانه ای (کودک) و همچنین مناطق ادغام ایجاد کنید. مزیت اصلی استفاده از این نوع افزایش پویا قطعات داخل یک سند است. جزئیات بیشتر را در مقاله بعدی "Nested Mail Merge with Regions"مشاهده کنید.

{{% alert color="primary" %}}

اطلاعات مربوط به یک منطقه Mail Merge را می توان با استفاده از کلاس [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/) بدست آورد.

{{% /alert %}}

### نحوه اجرای Mail Merge با مناطق

منطقه Mail Merge یک بخش خاص در داخل یک سند است که دارای نقطه شروع و نقطه پایان است. هر دو نقطه به عنوان فیلد های Mail Merge که نام های خاص *"TableStart:XXX"* و *"TableEnd:XXX"* دارند، نشان داده می شوند. تمام محتوایی که در یک منطقه Mail Merge گنجانده شده است به طور خودکار برای هر رکورد در منبع داده تکرار می شود.

Aspose.Words به شما اجازه می دهد تا Mail Merge را با مناطق با استفاده از [روش ها را اجرا کنید](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) مختلف که اشیاء داده های مختلف را به عنوان منبع داده قبول می کنند، اجرا کنید.

به عنوان اولین قدم، ما باید `DataSet` را ایجاد کنیم تا بعدا آن را به عنوان پارامتر ورودی به روش `ExecuteWithRegions` منتقل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

مثال کد زیر نشان می دهد که چگونه Mail Merge را با مناطق با استفاده از روش [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet) اجرا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

شما می توانید تفاوت بین سند را قبل از اجرای Mail Merge با مناطق مشاهده کنید:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

و پس از اجرای Mail Merge با مناطق:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### محدودیت های Mail Merge با مناطق

برخی از نکات مهم وجود دارد که شما باید در هنگام انجام یک Mail Merge با مناطق در نظر بگیرید:

* نقطه شروع *TableStart:Orders* و نقطه پایان *TableEnd:Orders* هر دو باید در یک ردیف یا سلول باشند. به عنوان مثال، اگر یک منطقه ادغام را در یک سلول جدول شروع کنید، باید منطقه ادغام را در همان ردیف سلول اول پایان دهید.
* نام فیلد ادغام باید با نام ستون در DataTable شما مطابقت داشته باشد. مگر اینکه شما فیلد های نقشه برداری شده را مشخص کرده باشید، Mail Merge با مناطق برای هر فیلد ادغام که نام متفاوتی از نام ستون دارد، موفق نخواهد بود.

اگر یکی از این قوانین شکسته شود، نتایج غیر منتظره ای خواهید داشت یا ممکن است استثنا ایجاد شود.

{{% alert color="primary" %}}

اگر از مناطق Mail Merge استفاده نکنید، شبیه به Microsoft Word mail merge خواهد بود و کل محتوای سند برای هر رکورد در منبع داده تکرار خواهد شد.

{{% /alert %}}

