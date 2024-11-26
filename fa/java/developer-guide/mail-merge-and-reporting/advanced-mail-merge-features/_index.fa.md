---
title: ویژگی های پیشرفته Mail Merge در Java
second_title: Aspose.Words برای Java
articleTitle: ویژگی های پیشرفته Mail Merge
linktitle: ویژگی های پیشرفته Mail Merge
type: docs
description: "Aspose.Words برای Java برخی از ویژگی های پیشرفته Mail Merge را فراهم می کند که به شما امکان می دهد سفارشی سازی Mail Merge بیشتری انجام دهید. به عنوان مثال، به دست آوردن اطلاعات در مورد ساختار قالب، تنظیم قوانین، تمیز کردن پس از یک عملیات Mail Merge و دیگران."
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /fa/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words برخی از ویژگی ها و روش های اضافی Mail Merge را فراهم می کند که به شما اجازه می دهد تا سفارشی سازی بیشتری از فرآیند Mail Merge را به صورت ساده Mail Merge یا Mail Merge با مناطق انجام دهید.

ویژگی های پیشرفته Mail Merge شامل، اما محدود به، به دست آوردن اطلاعات در مورد ساختار قالب قبل از انجام یک عملیات Mail Merge، تنظیم قوانین برای یک عملیات Mail Merge، و تمیز کردن در طول یک عملیات Mail Merge است. این مقاله تنها چند ویژگی و نمونه را پوشش می دهد تا به شما نشان دهد چگونه از ویژگی های پیشرفته استفاده کنید.

## تنظیم قوانین برای عملیات Mail Merge

اضافه کردن قوانین به قالب شما به شما اجازه می دهد تا روند جریان کار را موثرتر و انعطاف پذیرتر کنید. با استفاده از قوانین Mail Merge می توانید محتوایی را تنظیم کنید که می تواند به سرعت تغییر کند و از نیاز به تولید چندین سند جلوگیری کند.

Aspose.Words به شما اجازه می دهد تا Mail Merge را بر اساس قوانینی که هنگام انجام عملیات Mail Merge و کنترل اطلاعات ادغام اجرا می شود، سفارشی کنید. به عنوان مثال، هنگامی که شما یک ایمیل یا نامه برای ارسال به همه مشتریان خود ایجاد می کنید. شما می توانید یک قانون را تنظیم کنید تا نامه بتواند داده های مختلفی را بر اساس مقادیر مختلف در زمینه های خاص منبع داده شما داشته باشد.

نگاهی به برخی از قوانین Mail Merge که می توانید اجرا کنید.

### اجرای فیلد بعدی برای ادغام سوابق داده در سند فعلی

شما می توانید فیلد [Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/) را برای ادغام رکورد داده بعدی در سند ادغام شده حاصل از فعلی، به جای شروع یک سند ادغام شده جدید، پیاده سازی کنید. برای نمایش چندین رکورد در یک سند استفاده می شود.

### فیلد های NextIf و SkipIf را برای مقایسه دو عبارت پیاده سازی کنید

شما می توانید از فیلد [NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/) یا فیلد [SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/) استفاده کنید اگر می خواهید دو عبارت ([right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression) و [left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression) را با برخی از [operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator) مقایسه کنید.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words رکورد داده بعدی را در سند ادغام فعلی ادغام می کند و تمام فیلد های ادغام در قالب که پس از *NextIf* فیلد هستند با مقادیر رکورد داده بعدی به جای رکورد داده فعلی جایگزین می شوند. | Aspose.Words رکورد داده بعدی را به یک سند ادغام جدید ادغام می کند. |
| `SkipIf` | Aspose.Words سند ادغام فعلی را لغو می کند، به رکورد داده بعدی در منبع داده منتقل می شود و یک سند ادغام جدید را شروع می کند. | Aspose.Words سند ادغام فعلی را ادامه خواهد داد. |

مثال کد زیر نشان می دهد که چگونه دو عبارت را با **NextIf** یا **SkipIf**مقایسه کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## اطلاعات مربوط به ساختار قالب را بدست آورید

Aspose.Words به شما اجازه می دهد تا اطلاعات مختلفی را در قالب خود از طریق روش های مختلف جمع آوری کنید. به عنوان مثال، ممکن است لازم باشد نام برخی از زمینه های ادغام یا سلسله مراتب مناطق را در قالب خود دریافت کنید. حالا ما انواع احتمالی را برای به دست آوردن اطلاعات خاص از قالب شما توضیح خواهیم داد.

### نام فیلدهای ادغام را دریافت کنید

شما می توانید با سناریویی روبرو شوید که در آن می خواهید داده ها را با زمینه های ادغام که توسط دیگران ایجاد شده اند ادغام کنید و در این مورد، در مورد نام دقیق زمینه های ادغام مطمئن نخواهید بود. بنابراین، برای رسیدن به هدف Mail Merge، ابتدا باید نام تمام زمینه های ادغام را بخوانید و نمایش دهید. Aspose.Words به شما اجازه می دهد تا مجموعه ای از نام های فیلد ادغام را با استفاده از روش [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) دریافت کنید.

مثال کد زیر نشان می دهد که چگونه نام تمام زمینه های ادغام را در قالب بدست آوریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### اطلاعات مربوط به مناطق ادغام را دریافت کنید

ممکن است سناریویی داشته باشید که می خواهید درک کنید که چگونه قالب شما از طریق مناطق ادغام مشخص شده ساختار یافته است. شما می توانید از برخی روش ها برای جمع آوری تمام اطلاعات لازم در مورد مناطق ادغام یا برای به دست آوردن سلسله مراتب مناطق ادغام در قالب خود استفاده کنید، مانند روش [GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy). شما می توانید از خواص و روش های کلاس [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/) استفاده کنید.مثال کد زیر نشان می دهد که چگونه سلسله مراتب مناطق ادغام را بدست آوریم:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

مثال کد زیر نشان می دهد که چگونه مناطق ادغام خاص را در داخل قالب خود بر اساس نام آنها بدست آورید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### اضافه کردن زمینه های نقشه برداری

Aspose.Words به شما اجازه می دهد تا به طور خودکار نام فیلد ها را در منبع داده خود و نام فیلد های Mail Merge را در قالب با استفاده از ویژگی [MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields) نقشه برداری کنید. به عنوان مثال، اگر شما یک نام فیلد به نام "نام خانوادگی" در قالب خود داشته باشید، و در منبع داده خود نام فیلد "نام خانوادگی" یا یک تغییر دیگر مانند "Last_Name" یا "LastName" داشته باشید، پس فیلد در منبع داده به طور خودکار به فیلد نقشه برداری مربوطه نقشه برداری می شود. اگر یک قالب ادغام با بسیاری از منابع داده ادغام شود، زمینه های نقشه برداری شده ورود مجدد زمینه ها به قالب را برای موافقت با نام زمینه ها در پایگاه داده غیر ضروری می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد نقشه برداری شده را با استفاده از روش [Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String) اضافه کنیم وقتی یک فیلد ادغام در یک قالب و یک فیلد داده در یک منبع داده نام های مختلفی دارند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
