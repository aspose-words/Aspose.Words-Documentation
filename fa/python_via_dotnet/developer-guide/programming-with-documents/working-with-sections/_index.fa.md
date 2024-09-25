---
title: کار با بخش ها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با بخش ها
linktitle: کار با بخش ها
description: "با استفاده از Python بخش‌ها و بخش‌ها را در یک سند ایجاد و مدیریت کنید. درج بخش در یک سند Python. بخش Python را حذف کنید. بخش هایی را بین اسناد کپی کنید."
type: docs
weight: 120
url: /fa/python-net/working-with-sections/
---

گاهی اوقات شما سندی را می خواهید که قالب بندی یکسانی در همه صفحات نداشته باشد. به عنوان مثال، ممکن است لازم باشد قالب‌های شماره صفحه را تغییر دهید، اندازه و جهت صفحه متفاوتی داشته باشید، یا اولین صفحه سند را به عنوان صفحه جلد بدون شماره‌گذاری داشته باشید. شما می توانید با بخش ها به آن دست پیدا کنید.

بخش ها گره های سطحی هستند که سرصفحه ها و پاورقی ها، جهت گیری، ستون ها، حاشیه ها، قالب بندی شماره صفحه و موارد دیگر را کنترل می کنند.

Aspose.Words به شما امکان می دهد بخش ها را مدیریت کنید، یک سند را به بخش ها تقسیم کنید و تغییرات قالب بندی را انجام دهید که فقط برای یک بخش خاص اعمال می شود. Aspose.Words اطلاعات مربوط به قالب بندی بخش مانند سرصفحه ها و پاورقی ها، تنظیمات صفحه و تنظیمات ستون را در بخش شکست ذخیره می کند.

در این مقاله نحوه کار با بخش ها و بخش ها توضیح داده شده است.

## Section و Section Break چیست؟

بخش های سند توسط کلاس های [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) نشان داده می شوند. اشیاء بخش فرزندان مستقیم گره [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) هستند و از طریق ویژگی [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) قابل دسترسی هستند. شما می توانید آن گره ها را با استفاده از روش هایی مانند [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node)، [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node)، [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) و غیره مدیریت کنید.

Section break گزینه ای است که صفحات سند را به بخش هایی با طرح بندی قابل تنظیم تقسیم می کند.

## انواع شکستن بخش

Aspose.Words به شما امکان می دهد اسناد را با استفاده از بخش های مختلف شمارش [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) تقسیم و قالب بندی کنید:

- SectionBreak Continuous
- SectionBreakNewColumn
- بخش BreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

همچنین می‌توانید از شمارش [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) برای انتخاب نوع شکست استفاده کنید که فقط برای بخش اول مانند NewColumn، NewPage، EvenPage و OddPage اعمال می‌شود.

## یک بخش را مدیریت کنید

از آنجایی که یک بخش یک گره مرکب معمولی است، کل دستکاری گره API را می توان برای دستکاری بخش ها استفاده کرد: افزودن، حذف و سایر عملیات بر روی بخش ها. در مقاله [Aspose.Words Document Object Model (DOM)](/words/fa/python-net/aspose-words-document-object-model/) می توانید اطلاعات بیشتری در مورد گره ها بخوانید.

از طرف دیگر، می توانید از `DocumentBuilder` API برای کار با بخش ها نیز استفاده کنید. در این مقاله، ما بر روی این روش خاص کار با بخش ها تمرکز خواهیم کرد.

## درج یا حذف بخش شکست

Aspose.Words به شما این امکان را می دهد که با استفاده از روش [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype)، یک بخش را به متن وارد کنید.

مثال کد زیر نحوه درج شکست بخش را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

از روش [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) برای حذف یک بخش استراحت استفاده کنید. اگر نیازی به حذف یک بخش استراحت خاص و حذف محتوای آن بخش ندارید، می توانید از روش [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) استفاده کنید.

مثال کد زیر نحوه حذف شکستن بخش ها را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

توجه داشته باشید که یک بخش شکست اطلاعاتی در مورد بخش قبل از آن دارد، نه بخشی که بعد از آن قرار می گیرد. بنابراین اگر یک بخش شکست را حذف کنید، متن قبل از شکست حذف شده، ویژگی های بخش شکست را به دنبال آن دریافت می کند. این می تواند باعث شود که کل سند به منظره تبدیل شود یا سرصفحه ها و پاورقی ها تغییر کنند یا به طور کامل ناپدید شوند.

{{% /alert %}}

## یک بخش را جابجا کنید

اگر می خواهید بخشی را از یک موقعیت به موقعیت دیگر در سند خود منتقل کنید، باید شاخص آن بخش را دریافت کنید. Aspose.Words به شما امکان می دهد موقعیت بخش را از [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) دریافت کنید. می توانید از ویژگی [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) برای دریافت تمام بخش ها در سند خود استفاده کنید. اما اگر می خواهید فقط قسمت اول را دریافت کنید، می توانید از ویژگی [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) استفاده کنید.

مثال کد زیر نحوه دسترسی به بخش اول و تکرار از طریق فرزندان یک گره مرکب را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## یک طرح بندی بخش را مشخص کنید

گاهی اوقات می‌خواهید با ایجاد طرح‌بندی‌های خلاقانه برای بخش‌های مختلف سند، سندتان بهتر به نظر برسد. اگر می خواهید نوع شبکه بخش فعلی را مشخص کنید، می توانید یک حالت طرح بندی بخش را با استفاده از شمارش [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) انتخاب کنید:

- پیش فرض
- توری
- LineGrid
- SnapToChars

مثال کد زیر نحوه محدود کردن تعداد خطوطی که هر صفحه ممکن است داشته باشد را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## یک بخش را ویرایش کنید

وقتی بخش جدیدی را به سند خود اضافه می کنید، بدنه یا پاراگرافی وجود نخواهد داشت که بتوانید آن را ویرایش کنید. Aspose.Words به شما این امکان را می دهد که با استفاده از روش [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) تضمین کنید که یک بخش دارای بدنه ای با حداقل یک پاراگراف است - به طور خودکار یک گره Body (یا HeaderFooter) را به سند اضافه می کند و سپس یک پاراگراف را به آن اضافه می کند.

مثال کد زیر نحوه تهیه یک نود بخش جدید با استفاده از **EnsureMinimum** را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### افزودن یا ارائه محتوا

اگر می خواهید شکلی بکشید یا متن یا تصویری را در ابتدا / انتهای یک بخش اضافه کنید، می توانید از روش های [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) و [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) کلاس [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) استفاده کنید.

مثال کد زیر نحوه اضافه کردن محتوای یک بخش موجود را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### یک بخش را شبیه سازی کنید

Aspose.Words به شما این امکان را می دهد که با ایجاد یک کپی کامل از آن با استفاده از روش [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default)، یک بخش را کپی کنید.

مثال کد زیر نحوه کلون کردن بخش اول در سند خود را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### بخش ها را بین اسناد کپی کنید

در برخی موارد، ممکن است اسناد بزرگ با بخش های زیادی داشته باشید و بخواهید محتوای یک بخش را از یک سند به سند دیگر کپی کنید.

Aspose.Words به شما این امکان را می دهد که با استفاده از روش [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) بخش هایی را بین اسناد کپی کنید.

مثال کد زیر نحوه کپی کردن بخش ها بین اسناد را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### با Section Header و Footer کار کنید

قوانین اساسی برای نمایش سرصفحه یا پاورقی برای هر بخش بسیار ساده است:

1. اگر بخش دارای هدر/پانویس از نوع خاصی نباشد، از قسمت قبلی گرفته شده است.
2. نوع سرصفحه/پانویس نمایش داده شده در صفحه توسط تنظیمات بخش "صفحه اول متفاوت" و "صفحات زوج و فرد متفاوت" کنترل می شود – اگر غیرفعال باشند، عناوین خود بخش نادیده گرفته می شوند.

مثال کد زیر نحوه ایجاد 2 بخش با هدرهای مختلف را نشان می دهد:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

اگر می خواهید متن سرصفحه ها و پاورقی ها را بدون حذف اشیاء [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) در سند خود حذف کنید، می توانید از روش [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) استفاده کنید. علاوه بر این، می توانید از روش [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) برای حذف تمام اشکال از سرصفحه ها و پاورقی ها در سند خود استفاده کنید.

مثال کد زیر نحوه پاک کردن محتوای تمام سرصفحه ها و پاورقی ها را در یک بخش نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

کد زیر به عنوان مثال نحوه حذف تمام اشکال از تمام فوترهای سرصفحه در یک بخش:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## خصوصیات صفحه را در یک بخش سفارشی کنید

قبل از چاپ یک صفحه یا یک سند، ممکن است بخواهید اندازه و طرح بندی یک صفحه یا کل سند را سفارشی کرده و تغییر دهید. با تنظیم صفحه، می توانید تنظیمات صفحات سند مانند حاشیه، جهت و اندازه را برای چاپ صفحات اول مختلف یا صفحات فرد تغییر دهید.

Aspose.Words به شما اجازه می دهد تا با استفاده از کلاس [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) ویژگی های صفحه و بخش را سفارشی کنید.

مثال کد زیر نحوه تنظیم ویژگی هایی مانند اندازه صفحه و جهت بخش فعلی را نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

مثال کد زیر نحوه تغییر خصوصیات صفحه را در تمام بخش ها نشان می دهد:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## همچنین ببینید

- [سطوح منطقی گره ها در یک سند](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [درج و الحاق اسناد](/words/fa/python-net/insert-and-append-documents/)
