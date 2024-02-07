---
title: ناوبری با مکان نما در C#
second_title: Aspose.Words برای .NET
articleTitle: ناوبری با مکان نما
linktitle: ناوبری با مکان نما
description: "با استفاده از C# بین گره‌های مختلف در یک سند، مانند پاراگراف، نشانک، یا یک کاراکتر خاص حرکت کنید."
type: docs
weight: 10
url: /fa/net/navigation-with-cursor/
---

هنگام کار با یک سند، حتی اگر کوتاه یا طولانی باشد، باید در سند خود پیمایش کنید. ناوبری با مکان نما مجازی نشان دهنده توانایی حرکت بین گره های مختلف در یک سند است.

در یک سند کوتاه، حرکت در یک سند ساده است زیرا می‌توانید نقطه درج را حتی با استفاده از کلیدهای جهت‌نمای صفحه‌کلید یا با کلیک کردن روی ماوس برای قرار دادن نقطه درج در هر کجا که می‌خواهید، جابه‌جا کنید. اما هنگامی که یک سند بزرگ دارید که صفحات زیادی دارد، این تکنیک های اساسی ناکافی خواهند بود.

این مقاله نحوه حرکت در یک سند و حرکت با مکان نما مجازی به قسمت های مختلف آن را توضیح می دهد.

## تشخیص موقعیت مکان نما فعلی

قبل از شروع فرآیند پیمایش در سند خود، باید گره ای را که در حال حاضر انتخاب شده است دریافت کنید. با استفاده از ویژگی [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) می توانید موقعیت دقیق مکان نما را در یک گره انتخاب شده بدست آورید. علاوه بر این، به جای دریافت گره فعلی، می توانید پاراگراف انتخاب شده فعلی یا بخش انتخاب شده فعلی را با استفاده از ویژگی های [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) و [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) دریافت کنید.

هر عملیات درج که با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) انجام می دهید قبل از [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) درج می شود. هنگامی که پاراگراف فعلی خالی است یا مکان نما درست قبل از پایان پاراگراف قرار می گیرد، **CurrentNode** null را برمی گرداند.

## روش‌های پیمایش در یک سند

هنگامی که متن را ویرایش می کنید، مهم است که بدانید چگونه سند خود را پیمایش کنید و دقیقاً کجا در آن حرکت کنید. Aspose.Words به شما امکان می‌دهد در یک سند حرکت کنید و به بخش‌ها و بخش‌های مختلف آن پیمایش کنید - این شبیه به عملکرد صفحه ناوبری در Microsoft Word برای رفتن به یک صفحه یا عنوان در یک سند Word بدون پیمایش است.

روش اصلی این است که بتوانید موقعیت مکان نما را به یک گره خاص در سند خود منتقل کنید، می توانید با استفاده از روش [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) به این هدف برسید.

مثال کد زیر نحوه انتقال **DocumentBuilder** را به گره های مختلف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

اما در کنار روش اصلی **MoveTo**، روش های خاص تری نیز وجود دارد.

### به ابتدا یا انتهای یک سند بروید

می توانید با استفاده از روش های [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) و [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) به ابتدا یا انتهای سند خود بروید.

مثال کد زیر نحوه انتقال مکان نما به ابتدا یا انتهای یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### با نشانک‌ها پیمایش کنید

می‌توانید مکانی را که می‌خواهید پیدا کنید علامت‌گذاری کنید و دوباره به آن جا بروید. می‌توانید هر تعداد نشانک را که می‌خواهید در سند خود وارد کنید، و سپس با شناسایی نشانک‌هایی با نام‌های منحصربه‌فرد، در میان آنها پیمایش کنید. با استفاده از روش [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) می توانید به نشانک منتقل شوید.

مثال های کد زیر نحوه انتقال مکان نما به نشانک را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### به سلول های جدول بروید

با استفاده از روش [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) می توانید به سلول جدول بروید. این روش به شما امکان می دهد مکان نما خود را در هر سلولی در یک جدول خاص هدایت کنید. علاوه بر این، می توانید یک شاخص برای حرکت مکان نما به هر موقعیت یا کاراکتر مشخص شده در یک سلول در روش **MoveToCell** تعیین کنید.

مثال کد زیر نحوه انتقال مکان نما به سلول جدول مشخص را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### به یک فیلد بروید

با استفاده از روش [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) می توانید به یک فیلد خاص در سند خود بروید. علاوه بر این، می توانید با استفاده از روش [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) به یک فیلد ادغام خاص بروید.

مثال کد زیر نحوه انتقال مکان‌نمای سازنده سند را به یک فیلد خاص نشان می‌دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### به سربرگ یا پاورقی بروید

با استفاده از روش [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) می توانید به ابتدای سرصفحه یا پاورقی بروید

مثال کد زیر نحوه انتقال مکان‌نمای سازنده سند به سرصفحه یا پاورقی سند را نشان می‌دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### به بخش یا پاراگراف بروید

با استفاده از روش‌های [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) یا [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) می‌توانید به بخش یا پاراگراف خاصی بروید. علاوه بر این، می توانید یک شاخص برای حرکت مکان نما به هر موقعیت یا یک کاراکتر مشخص در یک پاراگراف در روش **MoveToParagraph** تعیین کنید.

مثال کد زیر نحوه انتقال به یک بخش خاص و یک پاراگراف خاص در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
