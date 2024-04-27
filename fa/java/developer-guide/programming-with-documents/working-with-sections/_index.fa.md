---
title: کار با بخش ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با بخش ها
linktitle: کار با بخش ها
description: "درک مفاهیم بخش سند و شیوه های دستکاری با استفاده از Java... بخش Insert در یک سند Java... بخش حذف Java... بخش های کپی بین اسناد"
type: docs
weight: 120
url: /fa/java/working-with-sections/
---

گاهی اوقات شما می خواهید یک سند که همان قالب بندی را در تمام صفحات نداشته باشد. به عنوان مثال، شما ممکن است نیاز به تغییر فرمت های شماره صفحه داشته باشید، اندازه و جهت گیری صفحات مختلف داشته باشید یا اولین صفحه سند را به عنوان یک صفحه پوشش بدون هیچ شماره گذاری داشته باشید. شما می توانید با بخش ها به آن دست یابید.

بخش ها گره های سطح هستند که هدرها و پاداران، جهت گیری، ستون ها، حاشیه ها، قالب بندی شماره صفحه و دیگران را کنترل می کنند.

Aspose.Words به شما اجازه می دهد بخش ها را مدیریت کنید، یک سند را به بخش ها تقسیم کنید و تغییرات قالب بندی را ایجاد کنید که فقط به یک بخش خاص اعمال می شود. Aspose.Words ذخیره اطلاعات در مورد قالب بندی بخش مانند headers و Footers، تنظیمات صفحه و تنظیمات ستون در بخش شکستن.

این مقاله توضیح می دهد که چگونه با بخش ها و بخش ها کار کنیم.

## چه بخش و چه بخش است

بخش های مستند توسط [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) کلاس ها اشیاء بخش فرزندان فوری هستند [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) گره و می تواند از طریق دسترسی [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) مالکیت شما می توانید این گره ها را با استفاده از برخی از روش ها مانند [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), و دیگران.

شکستن بخش یک گزینه است که صفحات سند را به بخش هایی با طرح های قابل تنظیم تقسیم می کند.

## انواع یک بخش شکستن

Aspose.Words اجازه می دهد تا اسناد را با استفاده از بخش های مختلف تقسیم و فرمت کنید. [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) تکرار:

- بخش CryContinious
- بخش Cry NewColumn
- بخش Cry NewPage
- بخش CryoPage
- بخش CryOddPage

شما همچنین می توانید از [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) تکرار برای انتخاب یک نوع شکستن که تنها برای بخش اول مانند NewColumn، NewPage، حتی Page و OddPage اعمال می شود.

## مدیریت یک بخش

از آنجا که یک بخش یک گره کامپوزیت معمولی است، کل دستکاری گره API می تواند برای دستکاری بخش ها استفاده شود: اضافه کردن، حذف و سایر عملیات ها در بخش ها. شما می توانید در مورد گره ها در مقاله بیشتر بخوانید [Aspose.Words Document Object Model (DOM)](/words/fa/java/aspose-words-document-object-model/)...

از سوی دیگر، می توانید از آن استفاده کنید. `DocumentBuilder` API برای کار با بخش ها در این مقاله، ما بر روی این روش خاص کار با بخش ها تمرکز خواهیم کرد.

## اضافه کردن یا حذف یک بخش

Aspose.Words به شما اجازه می دهد تا یک بخش را با استفاده از متن وارد کنید. [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) روش

مثال کد زیر نشان می دهد که چگونه یک بخش را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

استفاده از [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) روش حذف یک بخش شکستن اگر نیازی به حذف یک بخش خاص ندارید و در عوض محتوای آن بخش را حذف کنید، می توانید از آن استفاده کنید. [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) روش

مثال کد زیر نشان می دهد که چگونه بخش ها را حذف کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

توجه داشته باشید که یک بخش شکستن اطلاعات مربوط به بخش است که قبل از آن می رود، نه بخشی که پس از آن می رود. بنابراین اگر یک استراحت بخش را حذف کنید، متن قبل از شکستن حذف شده، خواص بخش را پس از آن می گیرد. این می تواند باعث شود کل سند برای تبدیل شدن به چشم انداز، یا هدر و پا برای تغییر یا به طور کامل ناپدید شود.

{{% /alert %}}

## حرکت یک بخش

اگر می خواهید یک بخش را از یک موقعیت به دیگری در سند خود منتقل کنید، باید شاخص آن بخش را دریافت کنید. Aspose.Words اجازه می دهد تا شما یک موقعیت بخش از یک [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)... می توانید از آن استفاده کنید [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) مالکیت برای دریافت تمام بخش ها در سند شما اما اگر می خواهید فقط بخش اول را دریافت کنید، می توانید از آن استفاده کنید. [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) مالکیت

مثال کد زیر نشان می دهد که چگونه به بخش اول دسترسی پیدا کنید و از طریق فرزندان یک گره کامپوزیتی آن را تنظیم کنید:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## یک بخش را مشخص کنید

گاهی اوقات می خواهید سند شما با ایجاد طرح های خلاقانه برای بخش های مختلف سند بهتر به نظر برسد. اگر می خواهید نوع شبکه فعلی را مشخص کنید، می توانید یک حالت طرح بخش را با استفاده از حالت چیدمان بخش انتخاب کنید. [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) تکرار:

- شکست
- Grid
- خط Grid
- SnapToChars

مثال کد زیر نشان می دهد که چگونه تعداد خطوطی که هر صفحه ممکن است داشته باشد را محدود کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## ویرایش یک بخش

هنگامی که یک بخش جدید را به سند خود اضافه می کنید، هیچ بدن یا پاراگرافی وجود ندارد که بتوانید ویرایش کنید. Aspose.Words به شما اجازه می دهد تا تضمین کنید که یک بخش حاوی یک بدن با حداقل یک پاراگراف است. [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) روش – به طور خودکار یک گره بدن (یا سرسرپوتر) را به سند اضافه می کند و سپس یک پاراگراف به آن اضافه می کند.

مثال کد زیر نشان می دهد که چگونه یک گره جدید را با استفاده از یک گره جدید آماده کنیم. **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Append یا Prepend Content

اگر می خواهید برخی از شکل یا اضافه کردن متن یا تصویر در ابتدای / انتهای یک بخش، شما می توانید از آن استفاده کنید. [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) و [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) روش های [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) کلاس

مثال کد زیر نشان می دهد که چگونه محتوای یک بخش موجود را ارائه دهید:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clone a Section

Aspose.Words اجازه دهید یک بخش را با ایجاد یک کپی کامل از آن با استفاده از آن تکرار کنید. [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) روش

مثال کد زیر نشان می دهد که چگونه بخش اول را در سند خود کلون کنید:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### بخش های کپی بین اسناد

در برخی موارد، شما ممکن است اسناد بزرگی با بخش های زیادی داشته باشید و می خواهید محتوای یک بخش را از یک سند به دیگری کپی کنید.

Aspose.Words اجازه می دهد تا شما را به کپی بخش بین اسناد با استفاده از [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) روش

مثال کد زیر نشان می دهد که چگونه بخش های بین اسناد را کپی کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### کار با بخش سرسر و پا

قوانین اساسی برای نمایش یک سر یا پا برای هر بخش بسیار ساده است:

1. اگر این بخش هدرها و پاهای خود را از نوع خاصی نداشته باشد، از بخش قبلی گرفته می شود.
2. نوع هدر / فوتر که در صفحه نمایش داده می شود توسط "صفحه اول متنوع" و تنظیمات بخش "سخت و حتی صفحات" کنترل می شود - اگر آنها غیرفعال هستند، پس عناوین خود بخش نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه دو بخش را با هدرهای مختلف ایجاد کنیم:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

اگر می خواهید متن هدرها و عابران را بدون حذف کنید [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) اشیاء در سند شما، می توانید از آن استفاده کنید [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) روش علاوه بر این می توانید از آن استفاده کنید. [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) روش حذف همه اشکال از هدر و پا در سند خود را.

مثال کد زیر نشان می دهد که چگونه محتوای تمام هدرها و پاها را در یک بخش مشخص کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

مثال زیر این است که چگونه تمام اشکال را از تمام سربرگ های پا در یک بخش حذف کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## سفارشی سازی Page Properties در یک بخش

قبل از چاپ یک صفحه یا یک سند ممکن است بخواهید اندازه و طرح یک صفحه یا کل سند را سفارشی و اصلاح کنید. با تنظیم صفحه، می توانید تنظیمات صفحات سند مانند حاشیه، جهت گیری و اندازه برای چاپ صفحات اول یا صفحات عجیب مختلف را تغییر دهید.

Aspose.Words به شما اجازه می دهد تا ویژگی های صفحه و بخش را با استفاده از [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) کلاس

مثال کد زیر نشان می دهد که چگونه چنین ویژگی هایی را به عنوان اندازه صفحه و جهت گیری برای بخش فعلی تنظیم کنیم:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

مثال کد زیر نشان می دهد که چگونه خواص صفحه را در تمام بخش ها تغییر دهید:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## همچنین ببینید

- [سطح منطقی گره ها در یک سند](/words/fa/java/logical-levels-of-nodes-in-a-document/)
- [Insert and Append Files](/words/fa/java/insert-and-append-documents/)