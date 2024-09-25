---
title: کار با بخش ها در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با بخش ها
linktitle: کار با بخش ها
description: "درک مفاهیم بخش سند و شیوه های دستکاری با استفاده از C#. درج بخش در یک سند C#. بخش C# را حذف کنید. بخش هایی را بین اسناد کپی کنید."
type: docs
weight: 120
url: /fa/net/working-with-sections/
---

گاهی اوقات شما سندی را می خواهید که قالب بندی یکسانی در همه صفحات نداشته باشد. به عنوان مثال، ممکن است لازم باشد قالب‌های شماره صفحه را تغییر دهید، اندازه و جهت صفحه متفاوتی داشته باشید، یا اولین صفحه سند را به عنوان صفحه جلد بدون شماره‌گذاری داشته باشید. شما می توانید با بخش ها به آن دست پیدا کنید.

بخش ها گره های سطحی هستند که سرصفحه ها و پاورقی ها، جهت گیری، ستون ها، حاشیه ها، قالب بندی شماره صفحه و موارد دیگر را کنترل می کنند.

Aspose.Words به شما امکان می‌دهد بخش‌ها را مدیریت کنید، یک سند را به بخش‌ها تقسیم کنید و تغییرات قالب‌بندی را انجام دهید که فقط برای یک بخش خاص اعمال می‌شود. Aspose.Words اطلاعات مربوط به قالب بندی بخش مانند سرصفحه ها و پاورقی ها، تنظیمات صفحه و تنظیمات ستون را در بخش شکست ذخیره می کند.

در این مقاله نحوه کار با بخش ها و بخش ها توضیح داده شده است.

## Section و Section Break چیست؟

بخش های سند توسط کلاس های [Section](https://reference.aspose.com/words/net/aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) نشان داده می شوند. اشیاء بخش فرزندان مستقیم گره [Document](https://reference.aspose.com/words/net/aspose.words/document/) هستند و از طریق ویژگی [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) قابل دسترسی هستند. شما می توانید آن گره ها را با استفاده از روش هایی مانند [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/)، [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/)، [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) و غیره مدیریت کنید.

Section break گزینه ای است که صفحات سند را به بخش هایی با طرح بندی قابل تنظیم تقسیم می کند.

## انواع شکستن بخش

Aspose.Words به شما امکان می دهد اسناد را با استفاده از بخش های مختلف شمارش [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) تقسیم و قالب بندی کنید:

* بخش Break Continuous
* بخش BreakNewColumn
* بخش BreakNewPage
* SectionBreakEvenPage
* بخش BreakOddPage

همچنین می‌توانید از شمارش [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) برای انتخاب نوع شکست استفاده کنید که فقط برای بخش اول مانند NewColumn، NewPage، EvenPage و OddPage اعمال می‌شود.

## یک بخش را مدیریت کنید

از آنجایی که یک بخش یک گره مرکب معمولی است، کل دستکاری گره API را می توان برای دستکاری بخش ها استفاده کرد: افزودن، حذف و سایر عملیات بر روی بخش ها. در مقاله [Aspose.Words Document Object Model (DOM)](/words/fa/net/aspose-words-document-object-model/) می توانید اطلاعات بیشتری در مورد گره ها بخوانید.

از طرف دیگر، می توانید از `DocumentBuilder` API برای کار با بخش ها نیز استفاده کنید. در این مقاله، ما بر روی این روش خاص کار با بخش ها تمرکز خواهیم کرد.

## درج یا حذف بخش شکست

Aspose.Words به شما این امکان را می دهد که با استفاده از روش [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) یک بخش شکست را در متن وارد کنید.

مثال کد زیر نحوه درج شکست بخش را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

از روش [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) برای حذف یک بخش استراحت استفاده کنید. اگر نیازی به حذف یک بخش استراحت خاص و حذف محتوای آن بخش ندارید، می توانید از روش [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) استفاده کنید.

مثال کد زیر نحوه حذف شکستن بخش ها را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

توجه داشته باشید که یک بخش شکست اطلاعاتی در مورد بخش قبل از آن دارد، نه بخشی که بعد از آن قرار می گیرد. بنابراین اگر یک بخش شکست را حذف کنید، متن قبل از شکست حذف شده، ویژگی های بخش شکست را به دنبال آن دریافت می کند. این می تواند باعث شود که کل سند به منظره تبدیل شود یا سرصفحه ها و پاورقی ها تغییر کنند یا به طور کامل ناپدید شوند.

{{% /alert %}}

## یک بخش را جابجا کنید

اگر می خواهید بخشی را از یک موقعیت به موقعیت دیگر در سند خود منتقل کنید، باید شاخص آن بخش را دریافت کنید. Aspose.Words به شما امکان می دهد با استفاده از ویژگی [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) یک موقعیت بخش را از [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) دریافت کنید. می توانید از ویژگی [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) برای دریافت تمام بخش ها در سند خود استفاده کنید. اما اگر می خواهید فقط قسمت اول را دریافت کنید، می توانید از ویژگی [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) استفاده کنید.

مثال کد زیر نحوه دسترسی به بخش اول و تکرار از طریق فرزندان یک گره مرکب را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## یک طرح بندی بخش را مشخص کنید

گاهی اوقات می‌خواهید با ایجاد طرح‌بندی‌های خلاقانه برای بخش‌های مختلف سند، سندتان بهتر به نظر برسد. اگر می خواهید نوع شبکه بخش فعلی را مشخص کنید، می توانید یک حالت طرح بندی بخش را با استفاده از شمارش [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) انتخاب کنید:

* پیش فرض
* توری
* LineGrid
* SnapToChars

مثال کد زیر نحوه محدود کردن تعداد خطوطی که هر صفحه ممکن است داشته باشد را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## یک بخش را ویرایش کنید

وقتی بخش جدیدی را به سند خود اضافه می کنید، بدنه یا پاراگرافی وجود نخواهد داشت که بتوانید آن را ویرایش کنید. Aspose.Words به شما این امکان را می دهد که با استفاده از روش [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) تضمین کنید که یک بخش دارای بدنه ای با حداقل یک پاراگراف است - به طور خودکار یک گره Body (یا HeaderFooter) را به سند اضافه می کند و سپس یک پاراگراف را به آن اضافه می کند.

مثال کد زیر نحوه تهیه یک گره بخش جدید با استفاده از **EnsureMinimum** را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### افزودن یا ارائه محتوا

اگر می خواهید شکلی بکشید یا متن یا تصویری را در ابتدا / انتهای یک بخش اضافه کنید، می توانید از روش های [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) و [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) کلاس [Section](https://reference.aspose.com/words/net/aspose.words/section/) استفاده کنید.

مثال کد زیر نحوه اضافه کردن محتوای یک بخش موجود را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### یک بخش را شبیه سازی کنید

Aspose.Words به شما این امکان را می دهد که با ایجاد یک کپی کامل از آن با استفاده از روش [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/)، یک بخش را کپی کنید.

مثال کد زیر نحوه کلون کردن بخش اول در سند خود را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### بخش ها را بین اسناد کپی کنید

در برخی موارد، ممکن است اسناد بزرگ با بخش های زیادی داشته باشید و بخواهید محتوای یک بخش را از یک سند به سند دیگر کپی کنید.

Aspose.Words به شما امکان می دهد با استفاده از روش [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) بخش هایی را بین اسناد کپی کنید.

مثال کد زیر نحوه کپی کردن بخش ها بین اسناد را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### با Section Header و Footer کار کنید

قوانین اساسی برای نمایش سرصفحه یا پاورقی برای هر بخش بسیار ساده است:

1. اگر بخش دارای هدر/پانویس از نوع خاصی نباشد، از قسمت قبلی گرفته شده است.
2. نوع سرصفحه/پانویس نمایش داده شده در صفحه توسط تنظیمات بخش "صفحه اول متفاوت" و "صفحات زوج و فرد متفاوت" کنترل می شود – اگر غیرفعال باشند، عناوین خود بخش نادیده گرفته می شوند.

مثال کد زیر نحوه ایجاد 2 بخش با هدرهای مختلف را نشان می دهد:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

اگر می خواهید متن سرصفحه ها و پاورقی ها را بدون حذف اشیاء [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) در سند خود حذف کنید، می توانید از روش [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) استفاده کنید. علاوه بر این، می توانید از روش [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) برای حذف تمام اشکال از سرصفحه ها و پاورقی ها در سند خود استفاده کنید.

مثال کد زیر نحوه پاک کردن محتوای تمام سرصفحه ها و پاورقی ها را در یک بخش نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

کد زیر به عنوان مثال نحوه حذف تمام اشکال از تمام فوترهای سرصفحه در یک بخش:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## خصوصیات صفحه را در یک بخش سفارشی کنید

قبل از چاپ یک صفحه یا یک سند، ممکن است بخواهید اندازه و طرح بندی یک صفحه یا کل سند را سفارشی کرده و تغییر دهید. با تنظیم صفحه، می توانید تنظیمات صفحات سند مانند حاشیه، جهت و اندازه را برای چاپ صفحات اول مختلف یا صفحات فرد تغییر دهید.

Aspose.Words به شما اجازه می دهد تا با استفاده از کلاس [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) ویژگی های صفحه و بخش را سفارشی کنید.

مثال کد زیر نحوه تنظیم ویژگی هایی مانند اندازه صفحه و جهت گیری برای بخش فعلی را نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

مثال کد زیر نحوه تغییر خصوصیات صفحه را در تمام بخش ها نشان می دهد:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## همچنین ببینید

* [سطوح منطقی گره ها در یک سند](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [درج و الحاق اسناد](/words/fa/net/insert-and-append-documents/)

