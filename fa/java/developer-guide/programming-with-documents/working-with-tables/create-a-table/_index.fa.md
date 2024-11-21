---
title: چگونه یک جدول ایجاد کنیم Java
second_title: Aspose.Words برای Java
articleTitle: ایجاد یک جدول
linktitle: ایجاد یک جدول
description: "راه های مختلف برای ایجاد جداول در سند شما با استفاده از Java..."
type: docs
weight: 20
url: /fa/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words به کاربران اجازه می دهد تا جداول را در یک سند از ابتدا ایجاد کنند و چندین روش مختلف برای انجام این کار فراهم می کنند. این مقاله جزئیاتی در مورد چگونگی اضافه کردن جداول فرمت شده به سند شما با استفاده از هر روش و همچنین مقایسه هر روش در پایان مقاله ارائه می دهد.

## بازی Table پیش فرض Styles

جدول جدید ایجاد شده ارزش های پیش فرض مشابه آنچه که در آن استفاده می شود، داده می شود. Microsoft Word:

| Table property | شکست در Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| رنگ مرزی |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

یک جدول می تواند در صورتی که به طور محکم قرار گیرد یا شناور باشد، اگر می تواند در هر نقطه در صفحه قرار گیرد. به طور پیش فرض، Aspose.Words همیشه در جدول های خط ایجاد می کند.

{{% /alert %}}

## ایجاد یک جدول با DocumentBuilder

In In In Aspose.Words, کاربران می توانند یک جدول را در یک سند ایجاد کنند. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)... الگوریتم اصلی برای ایجاد یک جدول به شرح زیر است:

1. میز را با [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. اضافه کردن یک سلول به میز با استفاده از [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) این به طور خودکار یک ردیف جدید را شروع می کند
3. اختیاری، استفاده از [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) ویژگی برای مشخص کردن قالب بندی سلولی
4. محتوای سلول را با استفاده از مناسب قرار دهید **DocumentBuilder** روش هایی مانند [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), و دیگران
5. مرحله ۴ تا زمانی که ردیف کامل باشد
6. Call Call Call [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) پایان دادن به ردیف فعلی
7. اختیاری، استفاده از [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) ویژگی برای مشخص کردن قالب بندی ردیف
8 مراحل 2-7 را تا زمانی که میز کامل باشد تکرار کنید
9. Call Call Call [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) ساخت میز

{{% alert color="primary" %}}

جزئیات مهم:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) همچنین می توان در داخل یک سلول نام برد که در آن شروع به ایجاد یک میز داخل سلول می کند.
- بعد از تماس [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر اضافه می کنید. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس به سلول فعلی اضافه خواهد شد. برای ایجاد یک سلول جدید در یک ردیف، تماس بگیرید **InsertCell** دوباره.
- اگر **InsertCell** بلافاصله پس از [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) و پایان یک ردیف، میز به یک ردیف جدید ادامه خواهد داد.
- The [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) روش برای پایان دادن به میز باید فقط یک بار پس از تماس فراخوانده شود **EndRow**... Calling **EndTable** حرکت نما از سلول فعلی به موقعیت بلافاصله پس از میز.

{{% /alert %}}

فرآیند ایجاد یک میز را می توان به وضوح در تصویر زیر مشاهده کرد:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

مثال کد زیر نشان می دهد که چگونه یک جدول ساده ایجاد کنیم **DocumentBuilder** با فرمت پیش فرض:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول فرمت شده با استفاده از DocumentBuilder ایجاد کنید:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول قفل شده را با استفاده از DocumentBuilder وارد کنید:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## ایجاد یک جدول از طریق DOM ()Document Object Model))

شما می توانید جداول را به طور مستقیم وارد کنید DOM اضافه کردن یک جدید [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) گره در یک موقعیت خاص

لطفا توجه داشته باشید که بلافاصله پس از ایجاد گره میز، میز کاملا خالی خواهد بود، که هنوز شامل ردیف ها و سلول ها نیست. برای قرار دادن ردیف ها و سلول ها به یک جدول، مناسب را اضافه کنید. [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) گره های کودک به DOM...

{{% alert color="primary" %}}

این روش ایجاد یک میز از همان پیش فرض های جدول استفاده می کند، همانطور که هنگام استفاده از آن **DocumentBuilder**...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول جدید را با اضافه کردن گره های مناسب کودک به درخت سند ایجاد کنیم:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## ایجاد یک جدول از HTML

Aspose.Words پشتیبانی از قرار دادن محتوا به یک سند از یک منبع HTML با استفاده از [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) روش ورودی می تواند یک صفحه HTML کامل یا فقط یک قطعه جزئی باشد.

استفاده از این **InsertHtml** روش، کاربران می توانند جداول را از طریق تگ های جدول مانند جدول وارد کنند. `<table>`, `<tr>`, `<td>`...

مثال کد زیر نشان می دهد که چگونه یک جدول را به یک سند از یک رشته حاوی تگ های HTML وارد کنید:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## یک کپی از یک جدول موجود

اغلب اوقات زمانی وجود دارد که شما نیاز به ایجاد یک میز بر اساس یک جدول موجود در یک سند دارید. ساده ترین راه برای کپی کردن یک جدول در حالی که حفظ همه قالب بندی برای کلون کردن گره جدول با استفاده از گره جدول است [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) روش

همان تکنیک را می توان برای اضافه کردن کپی از یک ردیف یا سلول موجود به یک میز استفاده کرد.

مثال کد زیر نشان می دهد که چگونه یک جدول را با استفاده از سازنده های گره تکرار کنیم:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه آخرین ردیف یک میز را پر کنید و آن را به جدول اضافه کنید:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)...

{{% /alert %}}

اگر به دنبال ایجاد جداول در یک سند هستید که به طور پویا با هر رکورد از منبع داده شما رشد می کند، سپس روش فوق توصیه نمی شود. در عوض، خروجی مطلوب به راحتی با استفاده از آن به دست می آید. Mail merge با مناطق شما می توانید بیشتر در مورد این تکنیک در [Mail Merge مناطق](/words/java/types-of-mail-merge-operations/) بخش

## مقایسه راه ها برای ایجاد یک جدول

Aspose.Words چندین روش برای ایجاد جداول جدید در یک سند فراهم می کند. هر روش دارای مزایا و معایب خود است، بنابراین انتخاب استفاده از آن اغلب بستگی به وضعیت خاص دارد.

بیایید نگاهی دقیق تر به این روش ها برای ایجاد جداول و مقایسه مزایا و معایب آنها داشته باشیم:

|  Method Method Method | مزایای |  عدم موفقیت |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | روش استاندارد برای قرار دادن جداول و سایر محتوای سند | گاهی اوقات ایجاد بسیاری از انواع جداول در همان زمان با نمونه های مشابه سخت است |
| Via DOM |  Fits در بهتر با کد اطراف که گره ها را به طور مستقیم در داخل ایجاد و وارد می کند DOM بدون استفاده از **DocumentBuilder** | جدول "خالق" ایجاد شده است: قبل از انجام اکثر عملیات، باید تماس بگیرید [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) ایجاد گره های کودک گمشده |
| از HTML | می تواند یک جدول جدید از منبع HTML با استفاده از تگ ها مانند `<table>`, `<tr>`, `<td>` | همه چیز ممکن نیست Microsoft Word فرمت های جدول را می توان به HTML اعمال کرد |
| ایجاد یک میز موجود | شما می توانید یک کپی از یک میز موجود ایجاد کنید در حالی که تمام ردیف ها و قالب بندی سلولی را حفظ می کنید | گره های مناسب کودک قبل از اینکه میز آماده استفاده باشد باید برداشته شود |
