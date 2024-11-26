---
title: ویژگی های پیشرفته Mail Merge در C++
second_title: Aspose.Words برای C++
articleTitle: ویژگی های پیشرفته Mail Merge
linktitle: ویژگی های پیشرفته Mail Merge
type: docs
description: "Aspose.Words برای C++ برخی از ویژگی های پیشرفته Mail Merge را فراهم می کند که به شما اجازه می دهد تا سفارشی سازی Mail Merge را انجام دهید. به عنوان مثال، به دست آوردن اطلاعات در مورد ساختار قالب، تنظیم قوانین، تمیز کردن پس از یک عملیات Mail Merge و دیگران."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /fa/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words برخی از ویژگی ها و روش های اضافی Mail Merge را فراهم می کند که به شما اجازه می دهد تا سفارشی سازی بیشتری از فرآیند Mail Merge را به صورت ساده Mail Merge یا Mail Merge با مناطق انجام دهید.

ویژگی های پیشرفته Mail Merge شامل، اما محدود به، به دست آوردن اطلاعات در مورد ساختار قالب قبل از انجام یک عملیات mail merge، تنظیم قوانین برای یک عملیات mail merge، و تمیز کردن در طول یک عملیات Mail Merge است. این مقاله تنها چند ویژگی و نمونه را پوشش می دهد تا به شما نشان دهد چگونه از ویژگی های پیشرفته استفاده کنید.

## تنظیم قوانین برای عملیات Mail Merge

اضافه کردن قوانین به قالب شما به شما اجازه می دهد تا روند جریان کار را موثرتر و انعطاف پذیرتر کنید. با استفاده از قوانین Mail Merge می توانید محتوایی را تنظیم کنید که می تواند به سرعت تغییر کند و از نیاز به تولید چندین سند جلوگیری کند.

Aspose.Words به شما اجازه می دهد تا Mail Merge را بر اساس قوانینی که هنگام انجام عملیات Mail Merge و کنترل اطلاعات ادغام اجرا می شود، سفارشی کنید. به عنوان مثال، هنگامی که شما یک ایمیل یا نامه برای ارسال به همه مشتریان خود ایجاد می کنید. شما می توانید یک قانون را تنظیم کنید تا نامه بتواند داده های مختلفی را بر اساس مقادیر مختلف در زمینه های خاص منبع داده شما داشته باشد.

نگاهی به برخی از قوانین Mail Merge که می توانید اجرا کنید.

### اجرای فیلد بعدی برای ادغام سوابق داده در سند فعلی

شما می توانید فیلد [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) را برای ادغام رکورد داده بعدی در سند ادغام شده حاصل از فعلی، به جای شروع یک سند ادغام شده جدید، پیاده سازی کنید. برای نمایش چندین رکورد در یک سند استفاده می شود.

### فیلد های NextIf و SkipIf را برای مقایسه دو عبارت پیاده سازی کنید

شما می توانید از فیلد [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) یا فیلد [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) استفاده کنید اگر می خواهید دو عبارت ([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) expressions) را با برخی از [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/) مقایسه کنید.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words رکورد داده بعدی را در سند ادغام فعلی ادغام می کند و تمام فیلد های ادغام در قالب که پس از *NextIf* فیلد هستند با مقادیر رکورد داده بعدی به جای رکورد داده فعلی جایگزین می شوند. | Aspose.Words رکورد داده بعدی را به یک سند ادغام جدید ادغام می کند. |
| `SkipIf` | Aspose.Words سند ادغام فعلی را لغو می کند، به رکورد داده بعدی در منبع داده منتقل می شود و یک سند ادغام جدید را شروع می کند. | Aspose.Words سند ادغام فعلی را ادامه خواهد داد. |

## اطلاعات مربوط به ساختار قالب را بدست آورید

Aspose.Words به شما اجازه می دهد تا اطلاعات مختلفی را در قالب خود از طریق روش های مختلف جمع آوری کنید. به عنوان مثال، ممکن است لازم باشد نام برخی از زمینه های ادغام یا سلسله مراتب مناطق را در قالب خود دریافت کنید. حالا ما انواع احتمالی را برای به دست آوردن اطلاعات خاص از قالب شما توضیح خواهیم داد.

### نام فیلدهای ادغام را دریافت کنید

شما می توانید با سناریویی روبرو شوید که در آن می خواهید داده ها را با زمینه های ادغام که توسط دیگران ایجاد شده اند ادغام کنید و در این مورد، در مورد نام دقیق زمینه های ادغام مطمئن نخواهید بود. بنابراین، برای رسیدن به هدف mail merge، ابتدا باید نام تمام زمینه های ادغام را بخوانید و نمایش دهید. Aspose.Words به شما اجازه می دهد تا مجموعه ای از نام های فیلد ادغام را با استفاده از روش [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) دریافت کنید.

مثال کد زیر نشان می دهد که چگونه نام تمام زمینه های ادغام را در قالب بدست آوریم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### اطلاعات مربوط به مناطق ادغام را دریافت کنید

ممکن است سناریویی داشته باشید که می خواهید درک کنید که چگونه قالب شما از طریق مناطق ادغام مشخص شده ساختار یافته است. شما می توانید از برخی روش ها برای جمع آوری تمام اطلاعات لازم در مورد مناطق ادغام یا برای به دست آوردن سلسله مراتب مناطق ادغام در قالب خود استفاده کنید، مانند روش [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). شما می توانید از خواص و روش های کلاس [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) استفاده کنید.مثال کد زیر نشان می دهد که چگونه سلسله مراتب مناطق ادغام را بدست آوریم:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

شما می توانید فایل نمونه این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### اضافه کردن زمینه های نقشه برداری

Aspose.Words به شما اجازه می دهد تا به طور خودکار نام فیلد ها را در منبع داده خود و نام فیلد های Mail Merge را در قالب با استفاده از ویژگی [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) نقشه برداری کنید. به عنوان مثال، اگر شما یک نام فیلد به نام "نام خانوادگی" در قالب خود دارید، و در منبع داده شما نام فیلد "نام خانوادگی" یا یک تغییر دیگر مانند "Last_Name" یا "LastName" دارید، پس فیلد در منبع داده به طور خودکار به فیلد نقشه برداری مربوطه نقشه می کشد. اگر یک قالب ادغام با بسیاری از منابع داده ادغام شود، زمینه های نقشه برداری شده ورود مجدد زمینه ها به قالب را برای موافقت با نام زمینه ها در پایگاه داده غیر ضروری می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد نقشه برداری شده را با استفاده از روش [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) اضافه کنیم وقتی یک فیلد ادغام در یک قالب و یک فیلد داده در یک منبع داده نام های مختلفی دارند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
