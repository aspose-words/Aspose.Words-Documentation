---
title: چاپ سند در C#
second_title: Aspose.Words برای .NET
articleTitle: چاپ یک سند به صورت برنامه ای یا با استفاده از دیالوگ ها
linktitle: چاپ یک سند به صورت برنامه ای یا با استفاده از دیالوگ ها
description: "با استفاده از XpsPrint API مدیریت نشده یا از طریق یک چاپگر انتخابی با تنظیمات و دیالوگ های پیش نمایش چاپ در C#، یک سند را روی یک Server چاپ کنید."
type: docs
weight: 55
url: /fa/net/print-a-document-programmatically-or-using-dialogs/
---

این مقاله نحوه چاپ یک سند پردازش کلمه را از یک برنامه خدمات ASP.NET یا Windows با استفاده از Aspose.Words و `XpsPrint` API شرح می دهد. همچنین روش‌های چاپ یک سند را با تنظیمات، پیش‌نمایش چاپ، و گفتگوهای پیشرفت چاپ نشان می‌دهد و نحوه کاهش زمان اولین تماس برای چاپ یک سند را توضیح می‌دهد.

## چاپ یک سند بر روی یک Server از طریق `XpsPrint` API

این بخش برای کاربرانی در نظر گرفته شده است که می خواهند یک سند XPS را از طریق یک برنامه .NET با استفاده از Aspose.Words به XpsPrint API مدیریت نشده ارسال کنند.

### محدودیت های چاپ سند در برنامه های ASP.NET یا Windows Service

هنگام توسعه یک برنامه .NET که مقداری خروجی چاپی تولید می کند، معمولاً می توانید از کلاس های ارائه شده در فضای نام *System.Drawing.Printing* یا کلاس های Windows Presentation Foundation (WPF) استفاده کنید. با این حال، اگر برنامه یک برنامه خدمات ASP.NET یا Windows باشد، گزینه‌های چاپ محدود است، زیرا Microsoft استفاده از این رویکرد را منع می‌کند. کلاس های چاپ .NET Framework توسط برنامه خدمات پشتیبانی نمی شوند. این شامل صفحات ASP است که عموماً در زمینه سرویس سرور اجرا می شوند.

کلاس‌های داخل فضای نام *System.Drawing.Printing* برای استفاده در یک سرویس Windows یا یک برنامه یا سرویس ASP.NET پشتیبانی نمی‌شوند و تلاش برای استفاده از آنها ممکن است باعث کاهش عملکرد سرویس، استثناهای زمان اجرا و سایر مشکلات شود. استفاده از WPF برای ساخت سرویس های Windows نیز پشتیبانی نمی شود. از آنجایی که WPF یک فناوری ارائه است، سرویس Windows به مجوزهای مناسب برای انجام عملیات بصری شامل تعامل کاربر نیاز دارد. اگر سرویس Windows چنین مجوزهایی را نداشته باشد، ممکن است نتایج غیرمنتظره ای رخ دهد.

شیء Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) خانواده ای از روش های [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) را برای چاپ اسناد فراهم می کند. این روش ها از کلاس های چاپ .NET تعریف شده در فضای نام *System.Drawing.Printing* استفاده می کنند. بسیاری از مشتریان Aspose.Words هستند که با موفقیت از آنها برای چاپ در برنامه های سمت سرور خود استفاده می کنند. با این وجود، این مقاله روش جایگزینی را برای چاپ نشان می دهد که با توصیه های Microsoft مطابقت دارد.

### روش های چاپ یک سند در یک Server

راه مناسب برای چاپ اسناد مطابق با Microsoft استفاده از XpsPrint API مدیریت نشده است. این API در Windows 7، Windows Server 2008 R2 و در Windows Vista در دسترس است به شرطی که به‌روزرسانی پلتفرم برای Windows Vista نصب شده باشد.

از آنجایی که Aspose.Words می تواند به راحتی هر سندی را به XPS تبدیل کند، فقط باید کدی را بنویسید که یک سند XPS را به `XpsPrint` API ارسال می کند. تنها مشکل این است که `XpsPrint` API مدیریت نشده است و به دانشی در مورد فناوری Platform Invoke نیاز دارد.

برای چاپ یک سند، Aspose.Words یک کلاس **XpsPrintHelper** حاوی یک روش چاپ ساده ارائه می‌کند، که در آن فقط باید پارامترهای زیر را مشخص کنید (جزئیات بیشتر را در مقاله [چاپ سند از طریق XPS API](/words/net/missing-features-in-openxml/) ببینید):

- سندی که می خواهید چاپ کنید.
- نام چاپگر
- نام شغل (اختیاری).
- مقدار Boolean، مشخص می کند که آیا برنامه باید منتظر بماند تا کار چاپ کامل شود. بنابراین، سیستم یا بررسی می کند که آیا سند با موفقیت چاپ شده است یا بلافاصله پس از ارسال کار چاپ برمی گردد. در آخرین مورد، تشخیص موفقیت آمیز بودن کار چاپ غیرممکن است.

پس از مواجه شدن با هر گونه مشکلی در ارسال یا چاپ سند، روش یک استثنا ایجاد می کند.

مثال کد زیر نحوه چاپ سند با استفاده از کلاس **XpsPrintHelper** را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

هنگامی که پروژه را اجرا می کنید، یک سند نمونه را روی چاپگر مشخص شده چاپ می کند و یک پنجره کنسول برای نمایش نتایج چاپ باز می شود. هنگامی که کار چاپ کامل شد یا با خطا مواجه شد، سیستم پیام موفقیت آمیز یا متن استثنا پرتاب شده را نمایش می دهد.

همچنین می توانید برخی از تنظیمات چاپ را با استفاده از کلاس [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) تنظیم کنید. به عنوان مثال، در Microsoft Word، سینی های چاپگر برای هر بخش تعریف شده است و مخصوص چاپگر است. بنابراین، می‌توانید این مقادیر را برای هر بخش از طریق ویژگی‌های [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) و [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) تغییر دهید.

{{% alert color="primary" %}}

در برخی موارد، ممکن است لازم باشد از این نمونه بدون Aspose.Words استفاده کنید. به عنوان مثال، زمانی که از قبل یک سند XPS دارید و فقط می خواهید آن را از یک برنامه خدمات ASP.NET یا Windows چاپ کنید. سپس، فقط می توانید روش `Print` را حذف کنید.

{{% /alert %}}

دو بار اضافی از روش **XpsPrintHelper**.**Print** وجود دارد. بار اول یک شی [Document](https://reference.aspose.com/words/net/aspose.words/document/) می گیرد و آن را در یک `MemoryStream` با فرمت XPS ذخیره می کند. اضافه بار دوم یک شی `Stream` را می پذیرد. جریان باید حاوی سندی با فرمت XPS باشد.

می توانید نمونه های بارگذاری بیش از حد روش را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip) دانلود کنید.

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

## چاپ یک سند با تنظیمات و دیالوگ های پیش نمایش چاپ

هنگام کار با اسناد، اغلب لازم است آنها را در یک چاپگر انتخابی چاپ کنید. استفاده از یک گفتگوی پیش نمایش چاپ برای بررسی بصری نحوه نمایش سند چاپ شده و انتخاب گزینه های چاپ مربوطه مفید است.

Aspose.Words هیچ دیالوگ یا فرم داخلی ندارد اما کلاس [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) را بر اساس کلاس .NET **PrintDocument** پیاده سازی می کند. نمونه ای از این کلاس را می توان برای پیش نمایش و چاپ سند به فرم **PrintPreviewDialog** ارسال کرد. همچنین کلاس [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) خروجی را برای ارسال به چاپگر تعریف می کند.

مثال زیر نحوه استفاده از این کلاس‌ها را برای چاپ یک سند از Aspose.Words از طریق پنجره‌های پیش‌نمایش چاپ و تنظیمات نشان می‌دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

ویژگی **AllowSomePages** به شما این امکان را می دهد که در صورتی که مقدار این ویژگی True باشد، محدوده ای از صفحات را برای چاپ انتخاب کنید. به طور پیش‌فرض، تمام صفحات موجود در محدوده برای چاپ انتخاب می‌شوند.

{{% /alert %}}

برای بهینه سازی ظاهر تنظیمات گفتگوی پیش نمایش چاپ، ویژگی های کلاس **PrintPreviewDialog** را مشخص کنید.

## چاپ چندین صفحه در یک صفحه

انعطاف پذیری بیشتر هنگام چاپ اسناد همیشه مفید است. با استفاده از .NET و Aspose.Words می توانید به راحتی عملیات چاپ را برای پیاده سازی منطق سفارشی خود با تعریف نحوه نمایش سند در صفحه چاپ شده تنظیم کنید.

مانند بخش قبل، Aspose.Words کلاس **MultipagePrintDocument** را پیاده سازی می کند که بر اساس کلاس .NET **PrintDocument** است. این بدان معنی است که زیرساخت چاپ .NET موجود می تواند به گونه ای مورد استفاده قرار گیرد که دیالوگ های چاپ و پیش نمایش چاپ، تجسم سند را قبل از چاپ امکان پذیر می کند. کلاس **MultipagePrintDocument** امکان چاپ چندین صفحه را در یک صفحه کاغذ فراهم می کند.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

نتیجه این مثال کد در زیر نشان داده شده است:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## پنهان کردن دیالوگ پیشرفت چاپ هنگام چاپ یک سند

هنگام چاپ یک سند از طریق روش [Print](https://reference.aspose.com/words/net/aspose.words/document/print/)، کادر گفتگوی پیشرفت چاپ ظاهر نمی شود. با این حال، این گفتگو در حین چاپ با روش [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) دیگر ظاهر می شود. در این حالت، برای جلوگیری از ظاهر شدن کادر گفتگوی چاپ، باید تنظیمات چاپگر معتبر و یک کنترلر چاپ استاندارد را در این روش مشخص کنید، همانطور که در مثال زیر نشان داده شده است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

## نحوه کاهش زمان اولین تماس برای چاپ یک سند

Aspose.Words برخی از فیلدهای **PrinterSettings** را می خواند و ذخیره می کند تا زمان چاپ را کاهش دهد. با فراخوانی متد [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) می توانید به این مهم دست یابید. اگر قبلاً اجرا نشده باشد، این روش قبل از شروع چاپ فراخوانی می شود. توجه داشته باشید که کل زمان چاپ با و بدون فراخوانی این روش تقریباً یکسان است. هدف از استفاده از این روش کاهش زمان اولین فراخوانی متد [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) است. مثال کد زیر نحوه استفاده از این روش را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## همچنین ببینید

- [به روز رسانی پلتفرم برای Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
