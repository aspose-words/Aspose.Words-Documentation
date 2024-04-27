---
title: نصب True فونت های نوع در Linux در Java
second_title: Aspose.Words برای Java
articleTitle: نصب True فونت های نوع در Linux
linktitle: نصب True فونت های نوع در Linux
description: "Aspose.Words برای Java امکان ارائه یک سند ایجاد شده با استفاده از Microsoft Word در یک Linux ماشین با بهترین دقت"
type: docs
weight: 20
url: /fa/java/install-truetype-fonts-on-linux/
---

اغلب استفاده می کنید Aspose.Words تبدیل اسناد DOC یا DOCX به فرمت PDF. اگر شما باید این کار را در یک Linux ماشین، این موضوع به شما کمک می کند تا یاد بگیرید چگونه Aspose.Words ارائه اسناد خود را با بهترین دقت.

اغلب، اسناد DOC و DOCX که نیاز به تبدیل شدن دارند با استفاده از آن ایجاد می شوند. Microsoft Word, در یک Windows سیستم عامل Mac OS بنابراین، بیشتر فونت های مورد استفاده در اسناد DOC و DOCX عبارتند از:Windows فونت ها یا "کیف پول های اداری" که فونت های نصب شده با آنها هستند Microsoft Windows یا Microsoft دفتر این فونت ها شامل Arial، Calibri، Cambria، Century Gothic، Courier New، Garamond، Tahoma، Verdana، Wingdings و بسیاری دیگر هستند.

مشکل این است که `TrueType` فونت های ذکر شده در بالا به طور پیش فرض نصب نمی شوند Linux توزیع ها اگر شما یک سند معمولی DOCX را که با فونت Cambria فرمت شده است را انتخاب کنید و سعی کنید آن را به فرمت PDF بر روی فرمت PDF بر روی فرمت PDF در قالب. Linux, Aspose.Words از یک فونت متفاوت استفاده کنید زیرا کامبریا در دسترس نیست. در نتیجه، سند PDF در مقایسه با سند اصلی DOCX متفاوت خواهد بود. برای اطمینان از اینکه اسناد توسط Aspose.Words به نظر می رسد نزدیک به نسخه اصلی، شما باید نصب کنید "Windows فونت ها بر روی شما Linux سیستم

دو راه اصلی برای گرفتن فونت های TrueType در یک Linux سیستم:

- Copy.TTF و فایل های TTC از یک Windows ماشین بر روی شما Linux ماشین ماشین
- نصب یک `TrueType` بسته فونت، مانند *msttcorefonts*

## کپی کردن فونت ها از یک Windows ماشین ماشین

یک راه آسان و سریع برای به دست آوردن فونت های TrueType در یک راه آسان و سریع Linux سیستم کپی کردن است. TTF و فایل های TTC از `C:\Windows\Fonts` دایرکتوری در Windows ماشین به برخی از دایرکتوری ها در شما Linux ماشین شما نیازی به نصب یا ثبت این فونت ها در Linux به هر ترتیب، شما فقط باید مکان فونت ها را با استفاده از فونت ها مشخص کنید. [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) کلاس در Aspose.Words...

{{% alert color="primary" %}}

بررسی کنید که آیا مجوز فونت مورد نیاز است و قبل از نصب فونت های MS بر روی هر گونه فونت EULA را به دقت بخوانید. Linux سیستم عامل

{{% /alert %}}

## نصب یک `TrueType` بسته فونت ها

تعدادی از Linux بسته ها، حاوی Microsoft فونت های TrueType، که می توانید آن را دانلود و نصب کنید Linux ماشین مراحل دقیق ممکن است در موارد مختلف متفاوت باشد. Linux توزیع ها

- On Ubuntu, از S سیناپس Package Manager برای پیدا کردن و نصب بسته *ttf-mscorefonts-installer* استفاده کنید.
- در OpenSUSE، از مدیریت نرم افزار برای پیدا کردن و نصب استفاده کنید *fetchmsttfonts* بسته
- استفاده از فونت های آزادی بخش تحت OFL، به عنوان یک جایگزین برای استاندارد Windows فونت ها: Arial، Times New Roman و Courier New
- – برای بسته های فونت مناسب با دیگر Linux توزیع، جستجوی مستندات موجود در اینترنت

پس از نصب بسته، Aspose.Words این فونت ها را در پوشه های سیستم خود پیدا کنید و هنگام کار با اسناد از آنها استفاده کنید.

## همچنین ببینید

- [آزاد سازی فونت ها](https://github.com/liberationfonts) به عنوان جایگزین استاندارد Windows فونت ها
