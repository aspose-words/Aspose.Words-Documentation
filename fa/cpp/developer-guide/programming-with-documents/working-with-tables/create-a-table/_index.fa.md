---
title: چگونه یک جدول در C++ایجاد کنیم
second_title: Aspose.Words برای C++
articleTitle: یک جدول ایجاد کنید
linktitle: یک جدول ایجاد کنید
description: "روش های مختلف برای ایجاد جداول با استفاده از C++. جدول را در C++ برای سند خود ایجاد کنید. یک جدول در C++ اضافه کنید."
type: docs
weight: 20
url: /fa/cpp/create-a-table/
---

Aspose.Words به کاربران اجازه می دهد تا جداول را در یک سند از ابتدا ایجاد کنند و چندین روش مختلف برای انجام این کار فراهم می کند. در این مقاله توضیحاتی در مورد نحوه افزودن جداول فرمت شده به سند خود با استفاده از هر روش و همچنین مقایسه هر روش در پایان مقاله ارائه شده است.

## سبک های جدول پیش فرض

جدول تازه ایجاد شده به مقادیر پیش فرض مشابه با آنهایی که در Microsoft Wordاستفاده می شود داده شده است:

| ویژگی جدول | پیش فرض در Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 pt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

یک جدول می تواند خطی باشد اگر به شدت قرار گرفته باشد، یا شناور باشد اگر می تواند در هر نقطه از صفحه قرار گیرد. به طور پیش فرض ،Aspose.Words همیشه جداول خطی ایجاد می کند.

{{% /alert %}}

## ایجاد یک جدول با DocumentBuilder

در Aspose.Words، کاربران می توانند یک جدول در یک سند با استفاده از [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ایجاد کنند. الگوریتم اصلی برای ایجاد یک جدول به شرح زیر است:

1. جدول را با [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)شروع کنید
2. با استفاده از [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) یک سلول به جدول اضافه کنید-این به طور خودکار یک ردیف جدید را شروع می کند
3. به صورت اختیاری، از ویژگی [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) برای مشخص کردن قالب بندی سلول استفاده کنید
4. محتوای سلول را با استفاده از روش های مناسب **DocumentBuilder** مانند [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/)، [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) و دیگران وارد کنید
5. مراحل 2-4 را تکرار کنید تا ردیف کامل شود
6. برای پایان دادن به ردیف فعلی با [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) تماس بگیرید
7. به صورت اختیاری، از ویژگی [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) برای مشخص کردن قالب بندی ردیف استفاده کنید
8. مراحل 2-7 را تکرار کنید تا جدول کامل شود
9. برای اتمام ساخت میز با [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) تماس بگیرید

{{% alert color="primary" %}}

جزئیات مهم:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) همچنین می تواند در داخل یک سلول فراخوانده شود، در این صورت ایجاد یک جدول آشیانه ای در داخل سلول را آغاز می کند.
- پس از فراخوانی [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/)، یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر کلاس [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) اضافه می کنید به سلول فعلی اضافه می شود. برای ایجاد یک سلول جدید در همان ردیف، دوباره با **InsertCell** تماس بگیرید.
- اگر **InsertCell** بلافاصله پس از [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) و پایان یک ردیف فراخوانده شود، جدول در یک ردیف جدید ادامه خواهد یافت.
- روش [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) برای پایان دادن به جدول فقط باید یک بار پس از فراخوانی **EndRow** فراخوانده شود. فراخوانی **EndTable** نشانگر را از سلول فعلی به موقعیت بلافاصله پس از جدول منتقل می کند.

{{% /alert %}}

روند ایجاد یک جدول را می توان به وضوح در تصویر زیر مشاهده کرد:

![creating-table-process](creating-table-process.jpg)

مثال کد زیر نشان می دهد که چگونه یک جدول ساده با استفاده از **DocumentBuilder** با قالب بندی پیش فرض ایجاد کنید:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول فرمت شده با استفاده از DocumentBuilderایجاد کنیم:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

مثال کد زیر نشان می دهد که چگونه یک جدول آشیانه ای را با استفاده از DocumentBuilderوارد کنید:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## ایجاد یک جدول از طریق DOM (مدل شیء سند)

شما می توانید جداول را مستقیما به DOM با اضافه کردن یک گره [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) جدید در یک موقعیت خاص وارد کنید.

لطفا توجه داشته باشید که بلافاصله پس از ایجاد گره جدول، خود جدول کاملا خالی خواهد بود، یعنی هنوز ردیف ها و سلول ها را شامل نمی شود. برای قرار دادن ردیف ها و سلول ها در یک جدول، گره های مناسب [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) child را به DOM اضافه کنید.

{{% alert color="primary" %}}

این روش ایجاد یک جدول از همان جدول پیش فرض استفاده می کند که هنگام استفاده از **DocumentBuilder** استفاده می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک جدول جدید را از ابتدا با اضافه کردن گره های مناسب کودک به درخت سند بسازید:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## یک جدول از HTMLایجاد کنید

Aspose.Words از وارد کردن محتوا به یک سند از یک منبع HTML با استفاده از روش [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) پشتیبانی می کند. ورودی می تواند یک صفحه کامل HTML یا فقط یک قطعه جزئی باشد.

با استفاده از روش **InsertHtml**، کاربران می توانند جداول را از طریق برچسب های جدول مانند `<table>`, `<tr>`, `<td>`.

مثال کد زیر نشان می دهد که چگونه یک جدول را از یک رشته حاوی برچسب های HTML در یک سند قرار دهید:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## یک کپی از یک جدول موجود را وارد کنید

اغلب اوقات زمانی وجود دارد که شما نیاز به ایجاد یک جدول بر اساس یک جدول موجود در یک سند دارید. ساده ترین راه برای کپی کردن یک جدول در حالی که تمام قالب بندی ها را حفظ می کند، شبیه سازی گره جدول با استفاده از روش [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) است.

همین تکنیک را می توان برای اضافه کردن نسخه های یک ردیف یا سلول موجود به یک جدول استفاده کرد.

مثال کد زیر نشان می دهد که چگونه یک جدول را با استفاده از node constructors تکرار کنیم:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

مثال کد زیر نشان می دهد که چگونه آخرین ردیف یک جدول را کلان کنیم و آن را به جدول اضافه کنیم:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

اگر شما به دنبال ایجاد جداول در یک سند هستید که با هر رکورد از منبع داده شما به صورت پویا رشد می کند، روش فوق توصیه نمی شود. در عوض، خروجی مورد نظر با استفاده از Mail merge با مناطق به راحتی به دست می آید. شما می توانید در مورد این تکنیک در [Mail Merge با مناطق](/words/cpp/types-of-mail-merge-operations/) بخش.

## روش های ایجاد جدول را مقایسه کنید

Aspose.Words چندین روش برای ایجاد جداول جدید در یک سند فراهم می کند. هر روش مزایا و معایب خاص خود را دارد، بنابراین انتخاب آن برای استفاده اغلب به وضعیت خاص بستگی دارد.

بیایید نگاهی دقیق تر به این روش های ایجاد جداول بیندازیم و مزایا و معایب آنها را مقایسه کنیم:

| روش | مزایا | معایب |
| :- | :- | :- |
| `DocumentBuilder` | روش استاندارد برای قرار دادن جداول و سایر محتوای اسناد | گاهی اوقات دشوار است که انواع مختلفی از جداول را در همان زمان با همان نمونه سازنده ایجاد کنید |
| از طریق DOM | با کد اطراف که گره ها را مستقیما به DOM بدون استفاده از **DocumentBuilder**ایجاد و وارد می کند، بهتر مطابقت دارد | جدول "خالی" ایجاد شده است: قبل از انجام بیشتر عملیات، باید با [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) تماس بگیرید تا هر گره کودک گمشده ای ایجاد کنید |
| از HTML | می تواند یک جدول جدید از منبع HTML با استفاده از برچسب هایی مانند `<table>`, `<tr>`, `<td>` | همه فرمت های جدول Microsoft Word را نمی توان به HTMLاعمال کرد |
| شبیه سازی یک جدول موجود | شما می توانید یک کپی از یک جدول موجود را ایجاد کنید در حالی که تمام ردیف ها و قالب بندی سلول را حفظ می کنید | گره های مناسب کودک باید قبل از آماده شدن جدول برای استفاده برداشته شوند |
