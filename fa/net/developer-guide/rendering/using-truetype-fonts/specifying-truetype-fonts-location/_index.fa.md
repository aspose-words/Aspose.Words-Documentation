---
title: مکان فونت TrueType را در C# مشخص کنید
second_title: Aspose.Words برای .NET
articleTitle: مکان فونت TrueType را مشخص کنید
linktitle: مکان فونت TrueType را مشخص کنید
description: "منابع مختلف فونت TrueType را مشخص کنید: پوشه سیستم، منابع کاربر، بارگیری فونت ها از یک جریان، سیستم فایل یا حافظه با استفاده از C#."
type: docs
weight: 30
url: /fa/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

این مبحث رفتار پیش‌فرض Aspose.Words را هنگام جستجوی فونت‌های TrueType، از جمله تفاوت‌های خاص سیستم عامل، توصیف می‌کند و نحوه تعیین منابع فونت کاربر را نشان می‌دهد.

کلاس [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) برای تعیین منابع مختلف فونت استفاده می شود. چندین پیاده سازی از کلاس **FontSourceBase** وجود دارد:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

جزئیات پیاده سازی برای برخی از کلاس ها در زیر توضیح داده شده است.

## فونت ها را از سیستم {#loading-fonts-from-system} بارگیری کنید

یک کلاس [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) ویژه وجود دارد که همیشه به طور پیش فرض استفاده می شود. این نشان دهنده تمام فونت های TrueType نصب شده بر روی سیستم است. بنابراین، می توان یک لیست منبع با **SystemFontSource** و هر منبع مورد نیاز دیگری ایجاد کرد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

یک نمونه از کلاس **SystemFontSource** به طور پیش فرض در [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) تعریف شده است. در سیستم عامل های مختلف، فونت ها ممکن است در مکان های مختلفی قرار گیرند. با این حال، استفاده از یک نمونه **FontSettings** برای هر سند راه حل بهینه ای نیست. در اکثر موارد، استفاده از [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) باید کافی باشد.

نمونه‌های هر سند فقط در صورتی مورد نیاز است که نیاز به استفاده از منابع فونت متفاوت برای اسناد مختلف باشد، که این مورد نادر است. استفاده از چندین نمونه **FontSettings** عملکرد را کاهش می دهد زیرا حافظه پنهان را به اشتراک نمی گذارد.

### جایی که Aspose.Words به دنبال فونت های TrueType در Windows می گردد

در بیشتر موارد، کاربران Windows با مشکلات قابل توجهی با فونت های از دست رفته یا چیدمان های نادرست مواجه نمی شوند. به طور معمول، Aspose.Words از طریق یک سند عبور می کند و هنگامی که با پیوند فونت روبرو می شود، با موفقیت داده های فونت را از پوشه سیستم واکشی می کند.

در Windows، Aspose.Words ابتدا تمام فونت های موجود را از پوشه _%windir%\Fonts می گیرد. این تنظیم در بیشتر مواقع برای شما کار خواهد کرد. شما فقط در صورت نیاز پوشه های فونت خود را مشخص می کنید. Aspose.Words برای .NET همچنین به دنبال فونت‌های اضافی ثبت‌شده در کلید رجیستری HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts می‌گردد. علاوه بر این، Windows 10 نصب فونت ها را برای کاربر فعلی امکان پذیر می کند. فونت‌ها در پوشه %userprofile%\AppData\Local\Microsoft\Windows\Fonts قرار می‌گیرند و همچنین در رجیستری HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts مشخص می‌شوند، جایی که Aspose.Words به دنبال این فونت‌ها می‌گردد.

اگر سندی حاوی فونت‌های تعبیه‌شده باشد، Aspose.Words می‌تواند داده‌های فونت مربوطه را از سند بخواند و از آن برای ایجاد طرح‌بندی سند استفاده کند. اسناد همچنین ممکن است حاوی پیوندهایی به فونت هایی باشند که در پوشه های سیستم نیستند، در این صورت سناریوهای زیر عمل می کنند:

- کاربران می توانند منابع فونت جدید را از طریق کلاس **FontSettings** تنظیم کنند
- Aspose.Words می تواند سعی کند فونت از دست رفته را با فونت مشابه جایگزین کند

{{% alert color="primary" %}}

رندر Aspose.Words در سرور معمولاً با یک برنامه ASP.NET که برای اجرا در سطح متوسط اعتماد پیکربندی شده است کار نمی کند، زیرا دسترسی به رجیستری را ممنوع می کند و دسترسی به سیستم فایل را محدود می کند.

{{% /alert %}}

### فونت ها در سیستم های غیر Windows

Aspose.Words فونت‌ها را در پوشه‌های فونت سیستم جستجو می‌کند. لیستی از این پوشه ها ممکن است با روش [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) دیده شود. اگر هیچ فونت پشتیبانی شده ای یافت نشد، Aspose.Words از فونت پیش فرض داخلی Fanwood.ttf استفاده می کند.

از آنجایی که معیارهای فونت Windows و غیر Windows OS متفاوت است، Aspose.Words هر کاری که ممکن است برای یافتن فونت مشابه و ایجاد طرحی مشابه با اصلی انجام می دهد. بهرحال همیشه این امکان پذیر نیست. در این موارد، کلاس **FontSettings** باید برای افزودن فونت های سفارشی یا قوانین جایگزین استفاده شود.

#### جایی که Aspose.Words به دنبال فونت های TrueType در Linux می گردد

توزیع های مختلف Linux ممکن است فونت ها را در پوشه های مختلف ذخیره کنند. Aspose.Words به دنبال فونت ها در چندین مکان می گردد. به طور پیش‌فرض، Aspose.Words فونت‌ها را در همه مکان‌های زیر جستجو می‌کند: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsاین رفتار پیش‌فرض برای اکثر توزیع‌های Linux کار می‌کند.، اما تضمین نمی شود که همیشه کار کند، در این صورت ممکن است لازم باشد مکان فونت های نوع true را به صراحت مشخص کنید. برای انجام این کار، باید بدانید که فونت های TrueType در کجای توزیع Linux شما نصب شده اند.

#### جایی که Aspose.Words به دنبال فونت های TrueType در Mac OS X می گردد

Aspose.Words به دنبال فونت‌ها در پوشه /Library/Fonts می‌گردد، که محل استاندارد فونت‌های TrueType در Mac OS X است. در حالی که این تنظیم بیشتر اوقات برای شما کار می‌کند، ممکن است لازم باشد پوشه‌های فونت‌های خود را در مواردی که شما نیاز دارید

## بارگذاری فونت ها از پوشه {#loading-fonts-from-folder}

اگر سندی که در حال پردازش است حاوی پیوندهایی به فونت هایی است که در سیستم نیستند، یا نمی خواهید آنها را به پوشه سیستم اضافه کنید یا مجوز ندارید، بهترین راه حل این است که یک پوشه با فونت های خود اضافه کنید. روش [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) این اجازه می دهد تا منبع سیستم را با منبع کاربر جایگزین کنید. Aspose.Words دیگر به دنبال فونت‌ها در رجیستری یا پوشه Windows\Font نیست و در عوض فقط فونت‌های داخل پوشه (های) مشخص‌شده را اسکن می‌کند. متد [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) مقادیر مربوطه را برمی گرداند.

### یک یا چند پوشه فونت را مشخص کنید

متدهای [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) و [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) میانبرهایی برای روش **SetFontSources** با یک یا چند نمونه [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) هستند. این روش ها برای نشان دادن جایی که Aspose.Words باید به دنبال فونت باشد استفاده می شود. اگر پوشه ای وجود نداشته باشد یا در دسترس نباشد، Aspose.Words فقط این پوشه را نادیده می گیرد. اگر همه پوشه ها، از جمله منابع برای جایگزینی فونت، نادیده گرفته شوند، Aspose.Words از فونت Fanwood به عنوان پیش فرض استفاده می کند.

مثال زیر نحوه تنظیم پوشه یا منبع را نشان می دهد که Aspose.Words متعاقباً از آن برای جستجوی فونت های TrueType در حین رندر یا جاسازی فونت ها استفاده می کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

یک پارامتر بولی اضافی کنترل می‌کند که آیا فونت‌ها به صورت بازگشتی در همه پوشه‌ها اسکن شوند یا خیر، بنابراین تمام پوشه‌های فرزند یک پوشه مشخص را اسکن می‌کند. مثال زیر نشان می‌دهد که چگونه می‌توان Aspose.Words را در چندین پوشه برای فونت‌های TrueType در هنگام رندر یا جاسازی فونت‌ها جستجو کرد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

به اولویت ها توجه کنید اگر فونت هایی با نام خانوادگی و سبک مشابه در منابع فونت های مختلف وجود داشته باشد، Aspose.Words فونت را از منبع با اولویت بالاتر انتخاب می کند. توضیحات قسمت "اولویت" را در زیر ببینید.

اگر اصلاً نمی خواهید از فونت های سیستمی استفاده کنید، Aspose.Words به شما اجازه می دهد آنها را نادیده بگیرید و فقط از فونت های خود استفاده کنید:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### دارایی اولویت دار

ویژگی [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) زمانی استفاده می شود که فونت هایی با نام خانوادگی و سبک مشابه در منابع فونت های مختلف وجود داشته باشد. در این حالت Aspose.Words فونت را از منبعی با مقدار اولویت بالاتر انتخاب می کند. به عنوان مثال، یک نسخه قدیمی از فونت در پوشه سیستم وجود دارد و مشتری نسخه جدیدی از همان فونت را در یک پوشه سفارشی اضافه کرده است.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## بارگذاری فونت ها از Stream {#loading-fonts-from-stream}

Aspose.Words کلاس [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) را ارائه می دهد که امکان بارگیری فونت ها از جریان را فراهم می کند. برای استفاده از منبع فونت جریان، کاربر باید یک کلاس مشتق شده از **StreamFontSource** ایجاد کند و یک پیاده سازی از روش [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) ارائه دهد. متد **OpenFontDataStream** را می توان چندین بار فراخوانی کرد. برای اولین بار، زمانی که Aspose.Words منابع فونت ارائه شده را اسکن می کند تا لیستی از فونت های موجود را دریافت کند، فراخوانی می شود. بعداً اگر از فونت در سند برای تجزیه داده‌های فونت و جاسازی داده‌های فونت در برخی از فرمت‌های خروجی استفاده شود، ممکن است فراخوانی شود. **StreamFontSource** ممکن است مفید باشد زیرا اجازه می دهد تا داده های فونت را فقط در صورت نیاز بارگیری کنید، و نه ذخیره آن در حافظه برای طول عمر [تنظیمات فونت](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** جایگزینی برای [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) است زیرا همیشه امکان بارگیری یک جریان در حافظه و ارسال آن به **MemoryFontSource** وجود دارد. تفاوت این است که **MemoryFontSource** همیشه در حافظه ذخیره می شود، و **StreamFontSource** در صورت تقاضا بارگیری می شود و بلافاصله حذف می شود. اما ممکن است همانطور که در بالا توضیح داده شد چندین بار بارگذاری شود. در برخی موارد **MemoryFontSource** ترجیح داده می شود و در برخی دیگر **StreamFontSource**.

## ذخیره و بارگذاری حافظه پنهان جستجوی فونت

هنگام جستجوی فونت برای اولین بار، Aspose.Words روی منابع فونت مشخص شده توسط کاربر تکرار می شود و یک حافظه پنهان جستجوی فونت را بر اساس داده های این منابع تشکیل می دهد. بنابراین، حافظه پنهان اطلاعات مربوط به فونت های موجود را جمع آوری می کند: خانواده فونت، سبک، نام کامل فونت و موارد دیگر. در تماس‌های بعدی، Aspose.Words اطلاعات مربوط به فونت مورد نظر را با نام آن در حافظه پنهان جستجوی فونت جستجو می‌کند و پس از آن فایل‌های مشخص‌شده را برای استفاده از فونت تجزیه می‌کند.

روش تجزیه تمام فایل های فونت موجود برای مقداردهی اولیه کش بسیار زمان بر است. Aspose.Words به شما اجازه می دهد تا حافظه پنهان را با استفاده از روش [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) ذخیره و بارگذاری کنید تا مشکل عملکرد را حل کنید. به این معنا که کاربر می‌تواند یک کش ذخیره‌شده قبلی را از یک فایل بارگیری کند و از مرحله تجزیه تمام فایل‌های فونت موجود بگذرد.

{{% alert color="primary" %}}

از همان روش **SaveSearchCache** برای به روز رسانی کش استفاده کنید.

{{% /alert %}}

مثال کد زیر نحوه تهیه منابع فونت و ایجاد کش جستجوی فونت را از قبل نشان می دهد:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

مثال کد زیر نحوه تنظیم منابع فونت و بارگیری کش جستجو را قبل از پردازش اسناد نشان می دهد:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

حافظه پنهان جستجوی فونت به دلیل تعدادی محدودیت برای ادغام Aspose.Words در AWS Lambda عالی است. به عنوان مثال، در اندازه کانتینر اصلی و در نتیجه بر روی تعداد فونت ها.

حافظه پنهان همچنین برای سناریوهای دیگر زمانی که فونت ها از طریق شبکه بارگذاری می شوند مناسب است. یا برای سناریوهایی که هیچ راهی برای ذخیره یک نمونه `FontSettings` با کش بارگذاری شده وجود ندارد.

{{% /alert %}}

## فهرستی از فونت های موجود {#get-a-list-of-available-fonts} را دریافت کنید

اگر می‌خواهید فهرستی از فونت‌های موجود را دریافت کنید که مثلاً می‌توان از آنها برای رندر کردن یک سند PDF استفاده کرد، می‌توانید از روش [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) استفاده کنید، همانطور که در مثال کد زیر نشان داده شده است. کلاس [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) اطلاعات مربوط به فونت فیزیکی موجود برای موتور فونت Aspose.Words را مشخص می کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
