---
title: کار با بخش ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با بخش ها
linktitle: کار با بخش ها
description: "درک مفاهیم بخش اسناد و شیوه های دستکاری با استفاده از C++. بخش را در یک سند C++ وارد کنید. حذف بخش C++. بخش های بین اسناد را کپی کنید."
type: docs
weight: 120
url: /fa/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

گاهی اوقات شما یک سند می خواهید که در تمام صفحات قالب بندی یکسان نداشته باشد. به عنوان مثال، ممکن است لازم باشد فرمت های شماره صفحه را تغییر دهید، اندازه و جهت گیری صفحه متفاوت داشته باشید یا صفحه سند اول را به عنوان صفحه جلد بدون هیچ شماره گذاری داشته باشید. شما می توانید این کار را با بخش ها انجام دهید.

بخش ها گره های سطحی هستند که سر و پای صفحه، جهت گیری، ستون ها، حاشیه ها، قالب بندی شماره صفحه و دیگران را کنترل می کنند.

Aspose.Words به شما اجازه می دهد تا بخش ها را مدیریت کنید، یک سند را به بخش ها تقسیم کنید و تغییرات قالب بندی را که فقط برای یک بخش خاص اعمال می شود، انجام دهید. Aspose.Words اطلاعات مربوط به قالب بندی بخش مانند سر و پای صفحه، تنظیم صفحه و تنظیمات ستون را در بخش break ذخیره می کند.

در این مقاله نحوه کار با بخش ها و وقفه های بخش توضیح داده شده است.

## چه بخش و بخش شکستن است

بخش های سند توسط کلاس های [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) و [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) نشان داده می شوند. اشیاء بخش فرزندان فوری گره [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) هستند و می توانند از طریق ویژگی [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) دسترسی پیدا کنند. شما می توانید این گره ها را با استفاده از برخی روش ها مانند [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), و دیگران.

Section break گزینه ای است که صفحات سند را به بخش هایی با طرح های قابل تنظیم تقسیم می کند.

## انواع شکستن بخش

Aspose.Words اجازه می دهد تا شما را به تقسیم و فرمت اسناد با استفاده از بخش های مختلف شکستن [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) شمارش:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

همچنین می توانید از [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) enumeration برای انتخاب نوع break که فقط برای بخش اول اعمال می شود استفاده کنید مانند NewColumn, NewPage, EvenPage, و OddPage.

## مدیریت یک بخش

از آنجا که یک بخش یک گره ترکیبی عادی است، کل دستکاری گره API می تواند برای دستکاری بخش ها استفاده شود: برای اضافه کردن، حذف و سایر عملیات در بخش ها. شما می توانید در مورد گره ها در مقاله بیشتر بخوانید [Aspose.Words مدل شیء سند (DOM)](/words/cpp/aspose-words-document-object-model/).

از طرف دیگر، شما همچنین می توانید از `DocumentBuilder` API برای کار با بخش ها استفاده کنید. در این مقاله، ما بر روی این روش خاص کار با بخش ها تمرکز خواهیم کرد.

## یک شکاف بخش را وارد یا حذف کنید

Aspose.Words به شما اجازه می دهد تا یک بخش را با استفاده از روش [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/) به متن وارد کنید.

مثال کد زیر نشان می دهد که چگونه یک بخش را وارد یک سند کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

از روش [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) برای حذف یک بخش استفاده کنید. در صورتی که نیازی به حذف بخش خاصی از break ندارید و در عوض محتوای آن بخش را حذف می کنید می توانید از روش [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه شکستن بخش ها را حذف کنیم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

توجه داشته باشید که یک بخش break اطلاعاتی در مورد بخش قبل از آن دارد، نه بخش بعد از آن. بنابراین اگر شما یک بخش را حذف کنید، متن قبل از شکستن حذف شده ویژگی های بخش را پس از آن دریافت می کند. این می تواند باعث شود که کل سند به چشم انداز تبدیل شود، یا سر و پای صفحه تغییر کند یا به طور کامل ناپدید شود.

{{% /alert %}}

## یک بخش را جابجا کنید

اگر می خواهید بخشی را از یک موقعیت به موقعیت دیگر در سند خود منتقل کنید، باید فهرست آن بخش را دریافت کنید. Aspose.Words به شما اجازه می دهد تا یک موقعیت بخش از [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) را بدست آورید. شما می توانید از ویژگی [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) برای دریافت تمام بخش ها در سند خود استفاده کنید. اما اگر می خواهید فقط بخش اول را دریافت کنید، می توانید از ویژگی [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه به بخش اول دسترسی پیدا کنید و از طریق فرزندان یک گره ترکیبی تکرار کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## یک طرح بندی بخش را مشخص کنید

گاهی اوقات می خواهید سند شما با ایجاد طرح های خلاقانه برای بخش های مختلف سند بهتر به نظر برسد. اگر می خواهید نوع شبکه بخش فعلی را مشخص کنید، می توانید یک حالت طرح بندی بخش را با استفاده از شمارش [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/) انتخاب کنید:

- پیش فرض
- شبکه
- LineGrid
- SnapToChars

مثال کد زیر نشان می دهد که چگونه تعداد خطوط هر صفحه را محدود کنیم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## ویرایش یک بخش

وقتی بخش جدیدی را به سند خود اضافه می کنید، هیچ بدن یا پاراگراف دیگری وجود نخواهد داشت که بتوانید ویرایش کنید. Aspose.Words به شما اجازه می دهد تا تضمین کنید که یک بخش شامل یک بدن با حداقل یک پاراگراف با استفاده از روش [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) است – به طور خودکار یک گره بدن (یا HeaderFooter) را به سند اضافه می کند و سپس یک پاراگراف به آن اضافه می کند.

مثال کد زیر نشان می دهد که چگونه یک گره بخش جدید را با استفاده از **EnsureMinimum**آماده کنیم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### اضافه کردن یا پیشوند محتوا

اگر می خواهید در ابتدای/انتهای یک بخش شکل یا متن یا تصویر اضافه کنید، می توانید از روش های [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) و [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) کلاس [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه محتوای یک بخش موجود را اضافه کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### یک بخش را کلان کنید

Aspose.Words به شما اجازه می دهد تا یک بخش را با ایجاد یک کپی کامل از آن با استفاده از روش [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/) تکرار کنید.

مثال کد زیر نشان می دهد که چگونه بخش اول را در سند خود کلان کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### بخش های کپی بین اسناد

در برخی موارد، ممکن است اسناد بزرگی با بخش های زیادی داشته باشید و بخواهید محتوای یک بخش را از یک سند به سند دیگر کپی کنید.

Aspose.Words به شما اجازه می دهد تا بخش هایی را بین اسناد با استفاده از روش [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/) کپی کنید.

مثال کد زیر نشان می دهد که چگونه بخش های بین اسناد را کپی کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### با سر و پای بخش کار کنید

قوانین اساسی برای نمایش هدر یا پاورقی برای هر بخش کاملا ساده است:

1. اگر این بخش سرصفحه ها / پای صفحه های خاص خود را نداشته باشد، از بخش قبلی گرفته شده است.
2. نوع header / footer نمایش داده شده در صفحه توسط تنظیمات بخش "صفحه اول متفاوت" و "صفحات عجیب و غریب و حتی متفاوت" کنترل می شود – اگر آنها غیرفعال باشند، عناوین خود بخش نادیده گرفته می شوند.

مثال کد زیر نشان می دهد که چگونه بخش های 2 با سرصفحه های مختلف ایجاد کنید:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

اگر می خواهید متن سرصفحه ها و پاورقی ها را بدون حذف اشیاء [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) در سند خود حذف کنید، می توانید از روش [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) استفاده کنید. علاوه بر این، می توانید از روش [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) برای حذف تمام اشکال از سرصفحه ها و پاورقی ها در سند خود استفاده کنید.

مثال کد زیر نشان می دهد که چگونه محتوای تمام سرصفحه ها و پای صفحه ها را در یک بخش پاک کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

مثال کد زیر چگونه تمام اشکال را از تمام سرصفحه ها، پای صفحه ها در یک بخش حذف کنیم:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## ویژگی های صفحه را در یک بخش سفارشی کنید

قبل از چاپ یک صفحه یا یک سند ممکن است بخواهید اندازه و طرح یک صفحه یا کل سند را سفارشی و تغییر دهید. با تنظیم صفحه، می توانید تنظیمات صفحات سند مانند حاشیه ها، جهت گیری و اندازه را برای چاپ صفحات اول مختلف یا صفحات عجیب و غریب تغییر دهید.

Aspose.Words به شما اجازه می دهد تا ویژگی های صفحه و بخش را با استفاده از کلاس [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) سفارشی کنید.

مثال کد زیر نشان می دهد که چگونه ویژگی هایی مانند اندازه صفحه و جهت گیری برای بخش فعلی را تنظیم کنید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

مثال کد زیر نشان می دهد که چگونه ویژگی های صفحه را در تمام بخش ها تغییر دهید:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## بایگانی برچسب برای:

- [سطوح منطقی گره ها در یک سند](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [اسناد را وارد و اضافه کنید](/words/cpp/insert-and-append-documents/)
