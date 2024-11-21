---
title: نصب و راه اندازی
second_title: Aspose.Words برای .NET
articleTitle: نصب و راه اندازی
linktitle: نصب و راه اندازی
description: "Aspose.Words را برای .NET با استفاده از ابزارهای Visual Studio مانند Manage NuGet Packages یا Package Manager Console و نصب کننده MSI نصب کنید. از مجوز Full Trust در C# استفاده کنید."
type: docs
weight: 10
url: /fa/net/installation/
timestamp: 2024-01-27-14-07-04
---

قبل از شروع مطمئن شوید که دستگاه شما با [سیستم مورد نیاز](/words/fa/net/system-requirements/) مطابقت دارد.

این مقاله نحوه نصب Aspose.Words برای .NET را بر روی رایانه شما توضیح می دهد.

## با استفاده از Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}، Aspose.Words را برای .NET نصب یا به‌روزرسانی کنید

NuGet ساده ترین راه برای دانلود و نصب [Aspose.Words برای .NET](https://www.nuget.org/packages/Aspose.Words/) API است. برای انجام این کار؛ این موارد را دنبال کنید:

1. *Microsoft Visual Studio* و *Manage NuGet Packages* را از منو باز کنید تا مدیریت بسته باز شود
2. برای یافتن Aspose API مورد نظر، "aspose" یا "aspose.words" را جستجو کنید.<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. Aspose API مورد نظر را انتخاب کنید و روی "Install" کلیک کنید

API انتخاب شده دانلود و در پروژه شما ارجاع داده خواهد شد.

همچنین می توانید Aspose.Words for .NET را با استفاده از *Manage NuGet Packages* به نسخه مورد نظر به روز کنید.

## Aspose.Words را با استفاده از Package Manager Console نصب یا به روز کنید

همچنین می توانید Aspose.Words را برای .NET API با استفاده از *Package Manager Console* نصب یا به روز کنید. برای انجام این کار؛ این موارد را دنبال کنید:

1. *Microsoft Visual Studio* و *Package Manager Console* را از منو باز کنید تا کنسول مدیریت بسته باز شود<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. دستور `Install-Package Aspose.Words` را تایپ کنید و Enter را فشار دهید تا آخرین نسخه کامل در برنامه شما نصب شود<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}علاوه بر این، می توانید پسوند `-prerelease` را به دستور اضافه کنید تا مشخص کنید که آخرین نسخه، از جمله رفع فوری، نیز باید نصب شود.{{% /alert %}}
3. پس از دانلود، پیام های تایید را مشاهده خواهید کرد<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-stalled" style="width:600px"/><br>
   {{% alert color="primary" %}} اگر با [EULA را در نظر بگیرید](https://about.aspose.com/legal/eula/) آشنا نیستید، توصیه می شود مجوز ذکر شده در URL.{{% /alert %}} را بخوانید
4. اکنون ممکن است متوجه شوید که Aspose.Words با موفقیت اضافه شده و در برنامه شما برای شما ارجاع داده شده است<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

در *Package Manager Console*، می‌توانید از دستور `Update-Package Aspose.Words` برای بررسی به‌روزرسانی‌های بسته Aspose.Words و نصب آن‌ها در صورت وجود استفاده کنید. همچنین می توانید پسوند `-prerelease` را برای به روز رسانی آخرین نسخه اضافه کنید.

## Aspose.Words را برای .NET با استفاده از Installer نصب کنید

Aspose.Words for .NET را می توان با دانلود مستقیم نصب کننده MSI از [بخش دانلودها](https://releases.aspose.com/words/) نصب کرد.

{{% alert color="primary" %}}

برای دانلود نصب کننده باید وارد سیستم شوید. اگر هنوز ثبت نام نکرده اید، می توانید به صورت رایگان ثبت نام کنید.

{{% /alert %}}

برای نصب Aspose.Words برای .NET، مراحل زیر را دنبال کنید:

1. `Aspose.Words_`{LatestVersion}.msi را از [بخش دانلودها](https://releases.aspose.com/words/) دانلود کنید
2. روی فایل دانلود شده دوبار کلیک کنید، در نتیجه جادوگر راه اندازی را شروع کنید، دستورالعمل های جادوگر راه اندازی را دنبال کنید<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. هنگامی که جادوگر راه اندازی نصب را کامل کرد، فایل های مورد نیاز در پوشه در مسیر پوشه ارائه شده در دسترس خواهند بود.<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. راه حل/پروژه خود را در Visual Studio باز کنید
5. روی پروژه خود در *Solution Explorer* کلیک راست کرده و مرجع را به مجموعه های نصب شده اضافه کنید
6. Aspose.Words برای مجموعه‌های نصب‌شده .NET در برنامه‌های افزودنی در بخش Assemblies ظاهر می‌شود - فقط کافی است مؤلفه DLL مورد نیاز را انتخاب کنید.<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. در نهایت روی OK کلیک کنید

## ملاحظات هنگام اجرا در یک محیط Server مشترک

همه اجزای Aspose .NET توصیه می شود با مجموعه مجوز *Full Trust* اجرا شوند. این به این دلیل است که کامپوننت Aspose .NET گاهی نیاز به دسترسی به تنظیمات رجیستری و فایل‌هایی دارد که در مکان‌هایی غیر از دایرکتوری مجازی، مانند خواندن فونت‌ها، قرار دارند. علاوه بر این، مؤلفه‌های `Aspose.NET` بر اساس کلاس‌های سیستم .NET اصلی هستند، که برخی از آنها برای اجرا در برخی موارد به مجوز *Full Trust* نیز نیاز دارند.

ارائه‌دهندگان خدمات اینترنتی میزبان چندین برنامه از شرکت‌های مختلف، بیشتر سطح امنیتی *اعتماد متوسط* را اعمال می‌کنند. در مورد .NET 2.0، چنین سطح امنیتی ممکن است محدودیت‌های زیر را اعمال کند که ممکن است بر توانایی Aspose.Words برای عملکرد مناسب تأثیر بگذارد:

- **RegistryPermission** در دسترس نیست. این به این معنی است که شما نمی توانید به رجیستری دسترسی داشته باشید که برای شمارش فونت های نصب شده هنگام رندر کردن اسناد لازم است.
- **FileIOPermission** محدود شده است. این بدان معنی است که شما فقط می توانید به فایل های موجود در سلسله مراتب دایرکتوری مجازی برنامه خود دسترسی داشته باشید. این به طور بالقوه به این معنی است که فونت ها در حین صادرات قابل خواندن نیستند.

به دلایل ذکر شده در بالا، توصیه می شود Aspose.Words را با مجوزهای Full Trust اجرا کنید. ممکن است متوجه شوید که برخی از ویژگی‌های کتابخانه هنگام انجام وظایف مختلف با اعتماد متوسط کار می‌کنند، و برخی دیگر، برای مثال، رندر نمی‌شوند. این می تواند مربوط به تماس های پردازش تصویر GDI+ باشد.
