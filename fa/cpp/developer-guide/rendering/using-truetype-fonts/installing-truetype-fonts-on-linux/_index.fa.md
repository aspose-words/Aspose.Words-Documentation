---
title: فونت های TrueType را روی Linux در C++نصب کنید
second_title: Aspose.Words برای C++
articleTitle: فونت های TrueType را روی Linuxنصب کنید
linktitle: فونت های TrueType را روی Linuxنصب کنید
description: "Aspose.Words برای C++ اجازه می دهد تا یک سند ایجاد شده با استفاده از Microsoft Word در یک دستگاه Linux با بهترین دقت را ارائه دهد. برای انجام این کار، فایل های فونت را از یک دستگاه Windows کپی کنید یا یک بسته فونت `TrueType` را روی دستگاه Linux خود نصب کنید."
type: docs
weight: 20
url: /fa/cpp/install-truetype-fonts-on-linux/
---

اغلب، شما از Aspose.Words برای تبدیل DOC یا DOCX اسناد به PDF فرمت استفاده خواهید کرد. اگر شما نیاز به انجام این کار در یک دستگاه Linux دارید، این موضوع به شما کمک می کند تا یاد بگیرید که چگونه اطمینان حاصل کنید که Aspose.Words اسناد شما را با بهترین دقت ارائه می دهد.

اغلب اسناد DOC و DOCX که باید تبدیل شوند با استفاده از Microsoft Word در یک سیستم عامل Windows یا Mac OS ایجاد می شوند. بنابراین، بیشتر فونت های مورد استفاده در اسناد DOC و DOCX "فونت هایWindows" یا "فونت های اداری" هستند که فونت های نصب شده با Microsoft Windows یا Microsoft Office هستند. این فونت ها شامل Arial، Calibri، Cambria، Century Gothic، Courier New، Garamond، Tahoma، Verdana، Wingdings و بسیاری دیگر است.

مشکل این است که فونت های `TrueType` ذکر شده در بالا به طور پیش فرض در توزیع های Linux نصب نشده اند. اگر یک سند معمولی DOCX را که با فونت کمبریا فرمت شده است بگیرید و سعی کنید آن را به فرمت PDF در Linux تبدیل کنید، Aspose.Words از فونت دیگری استفاده خواهد کرد زیرا کمبریا در دسترس نیست. در نتیجه، سند PDF در مقایسه با سند اصلی DOCX متفاوت خواهد بود. برای اطمینان از اینکه اسناد تبدیل شده توسط Aspose.Words تا حد ممکن به اصل نزدیک هستند، باید "Windows فونت" را روی سیستم Linux خود نصب کنید.

دو راه اصلی برای دریافت فونت های TrueType در یک سیستم Linux وجود دارد:

- کپی .TTF و .فایل های TTC از یک ماشین Windows به ماشین Linux شما
- یک بسته فونت `TrueType` مانند *msttcorefonts*نصب کنید

## کپی کردن فونت ها از دستگاه Windows

یک راه آسان و سریع برای دریافت فونت های TrueType در یک سیستم Linux کپی کردن است .TTF و .TTC فایل ها از دایرکتوری C:\Windows\Fonts در یک ماشین Windows به دایرکتوری در ماشین Linux شما. شما نیازی به نصب یا ثبت این فونت ها در Linux به هیچ وجه ندارید ؛ شما فقط باید مکان فونت ها را با استفاده از کلاس [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) در Aspose.Words مشخص کنید.

{{% alert color="primary" %}}

بررسی کنید که آیا مجوز فونت مورد نیاز است و قبل از نصب فونت های MS بر روی هر سیستم عامل Linux، EULA را با دقت بخوانید.

{{% /alert %}}

## یک بسته فونت `TrueType` نصب کنید

تعدادی بسته Linux وجود دارد که شامل فونت های Microsoft TrueType است که می توانید آن را دانلود و روی دستگاه Linux خود نصب کنید. مراحل دقیق ممکن است در توزیع های مختلف Linux متفاوت باشد.

- در Ubuntu، از Synaptic Package Manager برای پیدا کردن و نصب بسته *ttf-mscorefonts-installer* استفاده کنید.
- در openSUSE، از Yast2 → مدیریت نرم افزار برای پیدا کردن و نصب بسته *fetchmsttfonts* استفاده کنید.
- از فونت های آزادی تحت مجوز OFL به عنوان جایگزین فونت های استاندارد Windows استفاده کنید: Arial، Times New Roman و Courier New.
- برای بسته های فونت مناسب برای سایر توزیع های Linux، اسناد موجود در اینترنت را جستجو کنید.

پس از نصب بسته، Aspose.Words این فونت ها را در پوشه های سیستم شما پیدا می کند و هنگام کار با اسناد از آنها استفاده می کند.

## بایگانی برچسب برای:

- [فونت های آزادی](https://github.com/liberationfonts) به عنوان یک جایگزین برای فونت های استاندارد Windows
