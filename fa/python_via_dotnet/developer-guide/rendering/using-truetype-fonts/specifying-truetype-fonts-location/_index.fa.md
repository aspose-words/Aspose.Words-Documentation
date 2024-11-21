---
title: مکان فونت TrueType را مشخص کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: مکان فونت TrueType را مشخص کنید
linktitle: مکان فونت TrueType را مشخص کنید
description: "منابع مختلف فونت TrueType را مشخص کنید: پوشه سیستم، منابع کاربر، بارگیری فونت ها از یک جریان، سیستم فایل یا حافظه با استفاده از Python."
type: docs
weight: 30
url: /fa/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

این مبحث رفتار پیش‌فرض Aspose.Words را هنگام جستجوی فونت‌های TrueType، از جمله تفاوت‌های خاص سیستم عامل، توصیف می‌کند و نحوه تعیین منابع فونت کاربر را نشان می‌دهد.

کلاس [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) برای تعیین منابع مختلف فونت استفاده می شود. چندین پیاده سازی از کلاس [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) وجود دارد:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

جزئیات پیاده سازی برای برخی از کلاس ها در زیر توضیح داده شده است.

## بارگیری فونت ها از سیستم

یک کلاس [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) ویژه وجود دارد که همیشه به طور پیش فرض استفاده می شود. این نشان دهنده تمام فونت های TrueType نصب شده بر روی سیستم است. بنابراین، می توان یک لیست منبع با [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) و هر منبع مورد نیاز دیگری ایجاد کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

یک نمونه از کلاس [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) به طور پیش فرض در [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) تعریف شده است. در سیستم عامل های مختلف، فونت ها ممکن است در مکان های مختلفی قرار گیرند. با این حال، استفاده از یک نمونه [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) برای هر سند راه حل بهینه ای نیست. در اکثر موارد استفاده از [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) باید کافی باشد.

نمونه‌های هر سند فقط در صورتی مورد نیاز است که نیاز به استفاده از منابع فونت متفاوت برای اسناد مختلف باشد، که این مورد نادر است. استفاده از چندین نمونه [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) عملکرد را کاهش می دهد زیرا حافظه پنهان را به اشتراک نمی گذارد.

### جایی که Aspose.Words به دنبال فونت های TrueType در Windows می گردد

در بیشتر موارد، کاربران Windows با مشکلات قابل توجهی با فونت های از دست رفته یا چیدمان های نادرست مواجه نمی شوند. به طور معمول، Aspose.Words از طریق یک سند عبور می کند و هنگامی که با پیوند فونت روبرو می شود، با موفقیت داده های فونت را از پوشه سیستم واکشی می کند.

در Windows، Aspose.Words ابتدا تمام فونت های موجود را از پوشه _%windir%\Fonts می گیرد. این تنظیم بیشتر اوقات برای شما کار می کند. شما فقط در صورت نیاز پوشه های فونت خود را مشخص می کنید. Aspose.Words برای .NET همچنین به دنبال فونت‌های اضافی ثبت‌شده در کلید رجیستری *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts می‌گردد. علاوه بر این، Windows 10 نصب فونت ها را برای کاربر فعلی امکان پذیر می کند. فونت‌ها در پوشه *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* قرار می‌گیرند و همچنین در رجیستری *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* مشخص می‌شوند، جایی که Aspose.Words به دنبال این فونت‌ها می‌گردد.

اگر سندی حاوی فونت‌های تعبیه‌شده باشد، Aspose.Words می‌تواند داده‌های فونت مربوطه را از سند بخواند و از آن برای ایجاد طرح‌بندی سند استفاده کند. اسناد همچنین ممکن است حاوی پیوندهایی به فونت هایی باشند که در پوشه های سیستم نیستند، در این صورت سناریوهای زیر عمل می کنند:

- کاربران می توانند منابع فونت جدید را از طریق کلاس [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) تنظیم کنند
- Aspose.Words می تواند سعی کند فونت از دست رفته را با فونت مشابه جایگزین کند


### فونت ها در سیستم های غیر Windows

Aspose.Words فونت‌ها را در پوشه‌های فونت سیستم جستجو می‌کند. لیستی از این پوشه ها ممکن است با روش [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) دیده شود. اگر هیچ فونت پشتیبانی شده ای یافت نشد، Aspose.Words از فونت پیش فرض داخلی Fanwood.ttf استفاده می کند.

از آنجایی که معیارهای فونت Windows و غیر Windows OS متفاوت است، Aspose.Words هر کاری که ممکن است برای یافتن فونت مشابه و ایجاد طرحی مشابه با اصلی انجام می دهد. بهرحال همیشه این امکان پذیر نیست. در این موارد، کلاس [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) باید برای افزودن فونت های سفارشی یا قوانین جایگزین استفاده شود.

#### جایی که Aspose.Words به دنبال فونت های TrueType در Linux می گردد

توزیع های مختلف Linux ممکن است فونت ها را در پوشه های مختلف ذخیره کنند. Aspose.Words به دنبال فونت ها در چندین مکان می گردد. به‌طور پیش‌فرض، Aspose.Words فونت‌ها را در همه مکان‌های زیر جستجو می‌کند: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. این رفتار پیش‌فرض برای اکثر توزیع‌های Linux کار می‌کند، اما تضمین نمی‌شود که همیشه کار کند، در این صورت ممکن است لازم باشد مکان فونت‌های نوع true را به صراحت مشخص کنید. برای انجام این کار، باید بدانید که فونت های TrueType در کجای توزیع Linux شما نصب شده اند.

#### جایی که Aspose.Words به دنبال فونت های TrueType در Mac OS X می گردد

Aspose.Words به دنبال فونت‌ها در پوشه */Library/Fonts* می‌گردد، که محل استاندارد فونت‌های TrueType در Mac OS X است. در حالی که این تنظیم بیشتر اوقات برای شما کار می‌کند، ممکن است لازم باشد پوشه‌های فونت خود را در پوشه مشخص کنید. در صورت نیاز

## بارگیری فونت ها از پوشه

اگر سندی که در حال پردازش است حاوی پیوندهایی به فونت هایی است که در سیستم نیستند، یا نمی خواهید آنها را به پوشه سیستم اضافه کنید یا مجوز ندارید، بهترین راه حل این است که یک پوشه با فونت های خود اضافه کنید. روش [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) این اجازه می دهد تا منبع سیستم را با منبع کاربر جایگزین کنید. Aspose.Words دیگر به دنبال فونت‌ها در رجیستری یا پوشه Windows\Font نیست و در عوض فقط فونت‌های داخل پوشه (های) مشخص‌شده را اسکن می‌کند. متد [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) مقادیر مربوطه را برمی گرداند.

### تعیین یک یا چند پوشه فونت

متدهای [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) و [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) میانبرهایی برای روش [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) با یک یا چند نمونه [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) هستند. این روش ها برای نشان دادن جایی که Aspose.Words باید به دنبال فونت باشد استفاده می شود. اگر پوشه ای وجود نداشته باشد یا در دسترس نباشد، Aspose.Words فقط این پوشه را نادیده می گیرد. اگر همه پوشه ها، از جمله منابع برای جایگزینی فونت، نادیده گرفته شوند، Aspose.Words از فونت Fanwood به عنوان پیش فرض استفاده می کند.

مثال زیر نحوه تنظیم پوشه یا منبع را نشان می دهد که Aspose.Words متعاقباً از آن برای جستجوی فونت های TrueType در حین رندر یا جاسازی فونت ها استفاده می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

یک پارامتر بولی اضافی کنترل می‌کند که آیا فونت‌ها به صورت بازگشتی در همه پوشه‌ها اسکن شوند یا خیر، بنابراین تمام پوشه‌های فرزند یک پوشه مشخص را اسکن می‌کند. مثال زیر نشان می دهد که چگونه می توان Aspose.Words را به گونه ای تنظیم کرد که در چندین پوشه برای فونت های TrueType هنگام رندر یا جاسازی فونت ها جستجو کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

به اولویت ها توجه کنید اگر فونت هایی با نام خانوادگی و سبک مشابه در منابع فونت های مختلف وجود داشته باشد، Aspose.Words فونت را از منبع با اولویت بالاتر انتخاب می کند. توضیحات قسمت "اولویت" را در زیر ببینید.

اگر اصلاً نمی خواهید از فونت های سیستمی استفاده کنید، Aspose.Words به شما اجازه می دهد آنها را نادیده بگیرید و فقط از فونت های خود استفاده کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### دارایی اولویت دار

ویژگی **اولویت** زمانی استفاده می شود که فونت هایی با نام خانوادگی و سبک مشابه در منابع فونت های مختلف وجود داشته باشد. در این حالت Aspose.Words فونت را از منبعی با مقدار اولویت بالاتر انتخاب می کند. به عنوان مثال، یک نسخه قدیمی از فونت در پوشه سیستم وجود دارد و مشتری نسخه جدیدی از همان فونت را در یک پوشه سفارشی اضافه کرده است.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## دریافت لیستی از فونت های موجود

اگر می‌خواهید فهرستی از فونت‌های موجود را دریافت کنید که مثلاً می‌توان از آنها برای رندر کردن یک سند PDF استفاده کرد، می‌توانید از روش [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) استفاده کنید، همانطور که در مثال کد زیر نشان داده شده است. کلاس [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) اطلاعات مربوط به فونت فیزیکی موجود برای موتور فونت Aspose.Words را مشخص می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
