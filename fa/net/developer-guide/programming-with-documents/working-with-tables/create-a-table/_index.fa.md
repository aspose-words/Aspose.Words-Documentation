---
title: نحوه ایجاد جدول در C#
second_title: Aspose.Words برای .NET
articleTitle: یک جدول ایجاد کنید
linktitle: یک جدول ایجاد کنید
description: "راهنمای ساخت جدول در C# به روش های مختلف. جدولی را در C# برای سند خود ایجاد کنید."
type: docs
weight: 20
url: /fa/net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words به کاربران اجازه می دهد تا جداول را در یک سند از ابتدا ایجاد کنند و چندین روش مختلف برای انجام این کار ارائه می دهد. این مقاله جزئیاتی را در مورد نحوه اضافه کردن جداول فرمت شده به سند خود با استفاده از هر روش و همچنین مقایسه هر روش در پایان مقاله ارائه می دهد.

## سبک های جدول پیش فرض

به جدول جدید ایجاد شده مقادیر پیش فرض مشابه آنچه در Microsoft Word استفاده می شود داده می شود:

|  خواص جدول |  پیش فرض در Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

یک جدول در صورت قرارگیری محکم می تواند به صورت خطی باشد یا اگر بتواند در هر نقطه از صفحه قرار گیرد شناور باشد. به طور پیش فرض، Aspose.Words همیشه جداول درون خطی ایجاد می کند.

{{% /alert %}}

## با DocumentBuilder یک جدول ایجاد کنید

در Aspose.Words، کاربران می توانند با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) یک جدول در یک سند ایجاد کنند. الگوریتم اصلی برای ایجاد جدول به شرح زیر است:

1. جدول را با [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) شروع کنید
2. با استفاده از [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) یک سلول به جدول اضافه کنید - این به طور خودکار یک ردیف جدید را شروع می کند
3. در صورت تمایل، از ویژگی [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) برای تعیین قالب بندی سلول استفاده کنید
4. محتوای سلول را با استفاده از روش های **DocumentBuilder** مناسب مانند [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/)، [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) و غیره وارد کنید
5. مراحل 2-4 را تکرار کنید تا ردیف کامل شود
6. برای پایان دادن به ردیف فعلی با [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) تماس بگیرید
7. در صورت تمایل، از ویژگی [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) برای تعیین قالب بندی ردیف استفاده کنید
8. مراحل 2-7 را تکرار کنید تا جدول کامل شود
9. برای تکمیل ساخت جدول با [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) تماس بگیرید

{{% alert color="primary" %}}

جزئیات مهم:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) را می توان در داخل یک سلول نیز فراخوانی کرد، در این صورت شروع به ایجاد یک جدول تودرتو در داخل سلول می کند.
* پس از فراخوانی [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/)، یک سلول جدید ایجاد می شود و هر محتوایی که با استفاده از روش های دیگر کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) اضافه کنید، به سلول فعلی اضافه می شود. برای ایجاد یک سلول جدید در همان ردیف، دوباره **InsertCell** را فراخوانی کنید.
* اگر **InsertCell** بلافاصله بعد از [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) و انتهای یک سطر فراخوانی شود، جدول در یک ردیف جدید ادامه خواهد یافت.
* روش [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) برای پایان دادن به جدول فقط باید یک بار پس از فراخوانی **EndRow** فراخوانی شود. فراخوانی **EndTable** مکان نما را از سلول فعلی به موقعیت بلافاصله بعد از جدول منتقل می کند.

{{% /alert %}}

روند ایجاد جدول به وضوح در تصویر زیر قابل مشاهده است:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

مثال کد زیر نحوه ایجاد یک جدول ساده با استفاده از **DocumentBuilder** با قالب بندی پیش فرض را نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

مثال کد زیر نحوه ایجاد یک جدول فرمت شده با استفاده از DocumentBuilder را نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

مثال کد زیر نحوه درج یک جدول تودرتو با استفاده از DocumentBuilder را نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## ایجاد جدول از طریق DOM (Document Object Model)

می توانید با افزودن یک گره [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) جدید در یک موقعیت خاص، جداول را مستقیماً در DOM وارد کنید.

لطفاً توجه داشته باشید که بلافاصله پس از ایجاد گره جدول، خود جدول کاملاً خالی خواهد بود، یعنی هنوز دارای ردیف و سلول نیست. برای درج ردیف ها و سلول ها در جدول، گره های فرزند مناسب [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) را به DOM اضافه کنید.

{{% alert color="primary" %}}

این روش برای ایجاد جدول از همان پیش فرض های جدول استفاده می کند که در هنگام استفاده از **DocumentBuilder**.

{{% /alert %}}

مثال کد زیر نحوه ساخت یک جدول جدید را از ابتدا با افزودن گره های فرزند مناسب به درخت سند نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## یک جدول از HTML ایجاد کنید

Aspose.Words از درج محتوا در یک سند از منبع HTML با استفاده از روش [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) پشتیبانی می کند. ورودی می تواند یک صفحه کامل HTML یا فقط یک قطعه جزئی باشد.

با استفاده از روش **InsertHtml**، کاربران می توانند جداول را از طریق برچسب های جدول مانند `<table>`، `<tr>`، `<td>` در سند وارد کنند.

مثال کد زیر نشان می دهد که چگونه می توان یک جدول را از یک رشته حاوی تگ های HTML در یک سند وارد کرد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## یک کپی از یک جدول موجود درج کنید

اغلب مواقعی وجود دارد که شما نیاز به ایجاد یک جدول بر اساس جدول موجود در یک سند دارید. ساده ترین راه برای کپی کردن یک جدول با حفظ تمام قالب بندی، شبیه سازی گره جدول با استفاده از روش [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) است.

از همین تکنیک می توان برای افزودن کپی از یک ردیف یا سلول موجود به جدول استفاده کرد.

مثال کد زیر نحوه کپی کردن یک جدول با استفاده از سازنده گره را نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه کلون کردن آخرین ردیف جدول و الحاق آن به جدول را نشان می دهد:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) دانلود کنید.

{{% /alert %}}

اگر به دنبال ایجاد جداول در یک سند هستید که با هر رکورد از منبع داده شما به صورت پویا رشد می کند، روش فوق توصیه نمی شود. درعوض، خروجی مورد نظر با استفاده از Mail merge با مناطق راحت‌تر به دست می‌آید. در بخش [Mail Merge با مناطق](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) می توانید با این تکنیک بیشتر آشنا شوید.

## مقایسه روش های ایجاد جدول

Aspose.Words چندین روش برای ایجاد جداول جدید در یک سند ارائه می دهد. هر روش مزایا و معایب خاص خود را دارد، بنابراین انتخاب هر کدام از آنها اغلب به موقعیت خاص بستگی دارد.

بیایید نگاهی دقیق‌تر به این روش‌های ایجاد جداول بیندازیم و مزایا و معایب آنها را با هم مقایسه کنیم:

|  روش | مزایای |  معایب |
|  :-  |  :-  |  :-  |
| از طریق `DocumentBuilder` | روش استاندارد برای درج جداول و سایر محتوای اسناد | گاهی اوقات ایجاد انواع مختلف جداول به طور همزمان با یک نمونه سازنده دشوار است |
| از طریق DOM |  با کدهای اطراف که بدون استفاده از **DocumentBuilder** گره‌ها را مستقیماً در DOM ایجاد و وارد می‌کنند، بهتر سازگار است | جدول "خالی" ایجاد می شود: قبل از انجام بیشتر عملیات، باید با [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) تماس بگیرید تا گره های فرزند گم شده ایجاد شوند |
| از HTML | می تواند یک جدول جدید از منبع HTML با استفاده از برچسب هایی مانند `<table>`، `<tr>`، `<td>` ایجاد کند | همه فرمت های ممکن جدول Microsoft Word را نمی توان در HTML اعمال کرد |
| شبیه سازی جدول موجود | شما می توانید یک کپی از یک جدول موجود ایجاد کنید، در حالی که تمام قالب بندی ردیف ها و سلول ها را حفظ کنید | قبل از آماده شدن جدول برای استفاده، گره های فرزند مناسب باید حذف شوند |
