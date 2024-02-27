---
title: فونت های TrueType را روی Linux در C# نصب کنید
second_title: Aspose.Words برای .NET
articleTitle: فونت های TrueType را روی Linux نصب کنید
linktitle: فونت های TrueType را روی Linux نصب کنید
description: "Aspose.Words for .NET اجازه می دهد تا سند ایجاد شده با استفاده از Microsoft Word در دستگاه Linux را با بهترین دقت با استفاده از C# ارائه دهید. برای انجام این کار، فایل‌های فونت را از یک دستگاه Windows کپی کنید یا یک بسته فونت `TrueType` را روی دستگاه Linux خود در C# نصب کنید."
type: docs
weight: 20
url: /fa/net/installing-truetype-fonts-on-linux/
---

اغلب، شما از Aspose.Words برای تبدیل اسناد DOC یا DOCX به فرمت PDF استفاده می کنید. اگر لازم است این کار را روی یک ماشین Linux انجام دهید، این موضوع به شما کمک می کند تا یاد بگیرید چگونه مطمئن شوید که Aspose.Words اسناد شما را با بهترین دقت ارائه می کند.

اغلب، اسناد DOC و DOCX که نیاز به تبدیل دارند با استفاده از Microsoft Word در یک سیستم عامل Windows یا Mac OS ایجاد می‌شوند. بنابراین، بیشتر فونت‌های مورد استفاده در اسناد DOC و DOCX "Windows fonts" یا "Office fonts" هستند، که فونت‌هایی هستند که با Microsoft Windows یا Microsoft Office نصب می‌شوند. این فونت ها عبارتند از: Arial، Calibri، Cambria، Century Gothic، Courier New، Garamond، Tahoma، Verdana، Wingdings و بسیاری دیگر.

مشکل این است که فونت های `TrueType` لیست شده در بالا به طور پیش فرض روی توزیع های Linux نصب نمی شوند. اگر یک سند معمولی DOCX را بگیرید که با فونت Cambria فرمت شده است و سعی کنید آن را به فرمت PDF در Linux تبدیل کنید، Aspose.Words از فونت دیگری استفاده می کند زیرا Cambria در دسترس نیست. در نتیجه، سند PDF در مقایسه با سند اصلی DOCX متفاوت به نظر می رسد. برای اطمینان از اینکه اسناد تبدیل شده توسط Aspose.Words تا حد امکان نزدیک به نسخه اصلی ظاهر می شوند، باید "فونت های Windows" را روی سیستم Linux خود نصب کنید.

دو راه اصلی برای دریافت فونت TrueType در سیستم Linux وجود دارد:

- فایل های .TTF و .TTC را از دستگاه Windows روی دستگاه Linux خود کپی کنید
- یک بسته فونت `TrueType` مانند *msttcorefonts* را نصب کنید

## کپی کردن فونت ها از دستگاه Windows

یک راه آسان و سریع برای دریافت فونت های TrueType در سیستم Linux، کپی کردن فایل های .TTF و .TTC از دایرکتوری `C:\Windows\Fonts` در یک ماشین Windows به برخی دایرکتوری ها در دستگاه Linux است. به هیچ وجه نیازی به نصب یا ثبت این فونت ها در Linux ندارید. فقط باید محل فونت ها را با استفاده از کلاس [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) در Aspose.Words مشخص کنید.

{{% alert color="primary" %}}

بررسی کنید که آیا مجوز فونت مورد نیاز است یا خیر، و قبل از نصب فونت MS بر روی هر سیستم عامل Linux، EULA را به دقت بخوانید.

{{% /alert %}}

## یک بسته فونت `TrueType` را نصب کنید

تعدادی بسته Linux، حاوی فونت های Microsoft TrueType وجود دارد که می توانید آنها را دانلود و بر روی دستگاه Linux خود نصب کنید. مراحل دقیق ممکن است در توزیع های مختلف Linux متفاوت باشد.

- در Ubuntu، از Synaptic Package Manager برای پیدا کردن و نصب بسته *ttf-mscorefonts-installer* استفاده کنید.
- در openSUSE، از Yast2 → Software Management برای پیدا کردن و نصب بسته *fetchmsttfonts* استفاده کنید.
- از فونت های Liberation تحت مجوز OFL به عنوان جایگزینی برای فونت های استاندارد Windows استفاده کنید: Arial، Times New Roman، و Courier New.
- برای بسته های فونت مناسب برای سایر توزیع های Linux، اسناد موجود را در اینترنت جستجو کنید.

پس از نصب بسته، Aspose.Words این فونت ها را در پوشه های سیستم شما پیدا می کند و هنگام کار با اسناد از آنها استفاده می کند.

## همچنین ببینید

- [فونت های آزادی](https://github.com/liberationfonts) به عنوان جایگزینی برای فونت های استاندارد Windows
