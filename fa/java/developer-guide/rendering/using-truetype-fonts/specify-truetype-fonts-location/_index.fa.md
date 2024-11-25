---
title: تعیین مکان TrueType فونت در Java
second_title: Aspose.Words برای Java
articleTitle: مکان فونت ها را مشخص کنید TrueType
linktitle: مکان فونت ها را مشخص کنید TrueType
description: "منابع مختلف فونت TrueType را مشخص کنید: پوشه سیستم، منابع کاربر، بارگذاری فونت ها از یک جریان، یک سیستم فایل یا حافظه با استفاده از Java."
type: docs
weight: 30
url: /fa/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

این موضوع رفتار پیش فرض Aspose.Words را هنگام جستجوی فونت های TrueType، از جمله تفاوت های خاص سیستم عامل، توصیف می کند و نشان می دهد که چگونه منابع فونت کاربر را مشخص کنید.

کلاس [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) برای مشخص کردن منابع مختلف فونت استفاده می شود. چندین پیاده سازی از کلاس **FontSourceBase** وجود دارد:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

جزئیات پیاده سازی برای برخی از کلاس ها در زیر توضیح داده شده است.

## بارگذاری فونت از سیستم {#loading-fonts-from-system}

یک کلاس خاص [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) وجود دارد که همیشه به طور پیش فرض استفاده می شود. این نشان دهنده تمام فونت های TrueType نصب شده بر روی سیستم است. بنابراین، امکان ایجاد یک لیست منبع با **SystemFontSource** و هر منبع مورد نیاز دیگر وجود دارد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

یک نمونه از کلاس **SystemFontSource** به طور پیش فرض در [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) تعریف شده است. در سیستم عامل های مختلف، فونت ها ممکن است در مکان های مختلف قرار بگیرند. با این حال، استفاده از یک نمونه **FontSettings** برای هر سند یک راه حل بهینه نیست. در اکثر موارد، استفاده از [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) باید کافی باشد.

نمونه های هر سند تنها در صورتی مورد نیاز است که نیاز به استفاده از منابع فونت مختلف برای اسناد مختلف باشد، که یک مورد نادر است. استفاده از چندین نمونه **FontSettings** عملکرد را کاهش می دهد زیرا آنها حافظه پنهان را به اشتراک نمی گذارند.

### جایی که Aspose.Words به دنبال TrueType فونت در Windowsاست

در بیشتر موارد، Windows کاربران با مشکلات قابل توجهی با فونت های از دست رفته یا طرح های نادرست مواجه نمی شوند. به طور معمول، Aspose.Words از طریق یک سند می رود، و وقتی با یک لینک فونت روبرو می شود، با موفقیت داده های فونت را از پوشه سیستم دریافت می کند.

در Windows، Aspose.Words ابتدا تمام فونت های موجود را از پوشه _%windir%\Fonts می گیرد. این تنظیمات بیشتر اوقات برای شما کار می کند. شما فقط در صورت نیاز پوشه های فونت خود را مشخص می کنید. Aspose.Words همچنین به دنبال فونت های اضافی ثبت شده در کلید رجیستری HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts است. علاوه بر این، Windows 10 امکان نصب فونت برای کاربر فعلی را فراهم می کند. فونت ها در پوشه %userprofile%\AppData\Local\Microsoft\Windows\Fonts قرار می گیرند و همچنین در رجیستری HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts مشخص می شوند، جایی که Aspose.Words به دنبال این فونت ها خواهد بود.

اگر یک سند حاوی فونت های جاسازی شده باشد، Aspose.Words می تواند داده های فونت مربوطه را از سند بخواند و از آن برای ایجاد طرح سند استفاده کند. اسناد همچنین ممکن است حاوی لینک هایی به فونت هایی باشند که در پوشه های سیستم نیستند، در این صورت سناریوهای زیر به کار می آیند:

- کاربران می توانند منابع فونت جدید را از طریق کلاس **FontSettings** تنظیم کنند
- Aspose.Words می تواند سعی کند فونت از دست رفته را با یک فونت مشابه جایگزین کند

### فونت های سیستم های غیر Windows

Aspose.Words به دنبال فونت ها در پوشه های فونت سیستم خواهد بود. لیست این پوشه ها را می توان با روش [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) مشاهده کرد. اگر هیچ فونت پشتیبانی شده ای پیدا نشود ،Aspose.Words از فونت پیش فرض fanwood استفاده خواهد کرد.ttf.

از آنجا که معیارهای فونت Windows و غیرWindows OS متفاوت است، Aspose.Words هر کاری ممکن است برای پیدا کردن یک فونت مشابه و ساخت یک طرح مشابه با اصلی انجام می دهد. با این حال، این همیشه امکان پذیر نیست. در این موارد، کلاس **FontSettings** باید برای اضافه کردن فونت های سفارشی یا قوانین جایگزینی استفاده شود.

#### جایی که Aspose.Words به دنبال TrueType فونت در Linuxاست

توزیع های مختلف Linux ممکن است فونت ها را در پوشه های مختلف ذخیره کنند. Aspose.Words به دنبال فونت در چندین مکان است. به طور پیش فرض، Aspose.Words به دنبال فونت ها در تمام مکان های زیر است: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. این رفتار پیش فرض برای اکثر توزیع های Linux کار خواهد کرد، اما تضمین نمی شود که همیشه کار کند، در این صورت ممکن است لازم باشد مکان فونت های نوع واقعی را به طور صریح مشخص کنید. برای انجام این کار، باید بدانید که فونت های TrueType در توزیع Linux شما کجا نصب شده اند.

#### جایی که Aspose.Words به دنبال TrueType فونت در Mac OS Xاست

Aspose.Words به دنبال فونت ها در پوشه `/Library/Fonts` است که مکان استاندارد برای TrueType فونت ها در Mac OS X است. در حالی که این تنظیمات بیشتر اوقات برای شما کار می کند، ممکن است لازم باشد پوشه های فونت خود را در مورد زمانی که نیاز دارید مشخص کنید.

#### TrueType فونت روی Android

در Android، جریان کار فونت ها در کلاس تایپ بسته بندی شده است.
پنج نوع فونت وجود دارد، هر فونت نشان دهنده گروهی از خانواده های فونت مشابه است:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

برای مثال، طبق Android [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) فایل پیکربندی، " تایمز "متعلق به خانواده" سریف " است بنابراین NotoSerif-منظم.ttf زمانی استفاده خواهد شد که "زمان" درخواست شود:

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

برای جستجوی فونت های مشابه، استراتژی های توصیف شده در بالا استفاده می شود.

علاوه بر آنها، Aspose.Words لیست جایگزین های خود را برای پلتفرم Android دارد.

فرض کنید سند حاوی فونت PMingLiU-ExtB است، اول از همه، Aspose.Words به دنبال فونت مورد نیاز در منابع سیستم است.

لیست پیش فرض پوشه های فونت Android:

- / سیستم / فونت
- / سیستم / فونت
- / داده ها / فونت ها

Aspose.Words از طریق منابع تعریف شده توسط کاربر که با روش تنظیم شده است، نگاه می کند:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

در صورتی که یک جایگزین صریح مشخص شده باشد، Aspose.Words فونت گمشده را با پیشنهاد کاربر جایگزین می کند:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

اگر هیچ یک از قوانین کار نمی کرد، Aspose.Words جدول جایگزینی داخلی را بررسی کنید. اگر جدول حاوی اطلاعات در مورد مناسب پس از آن فونت جایگزین می شود. در مورد ما Aspose.Words `Typeface.SERIF` را انتخاب می کنیم. اما اگر جدول چیزی در مورد فونت درخواست شده نمی داند، Aspose.Words یک فونت بر اساس قوانین خاص MS Word یا نزدیک ترین فاصله در فضای پانوس را انتخاب می کند.

#### TrueType فونت روی .NET Core و Xamarin

برای .NET Core و Xamarin همان قانون برای Aspose.Words برای Java نسخه اعمال می شود. به طور پیش فرض، تمام فونت های سیستم پلتفرم که برنامه روی آن اجرا می شود در دسترس هستند.
لیست پوشه هایی که جستجو در آن انجام خواهد شد را می توان با فراخوانی روش پیدا کرد:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## بارگذاری فونت ها از پوشه {#loading-fonts-from-folder}

اگر سند در حال پردازش حاوی لینک هایی به فونت هایی باشد که در سیستم وجود ندارند، یا شما نمی خواهید آنها را به پوشه سیستم اضافه کنید، یا مجوزها را ندارید، بهترین راه حل این است که یک پوشه با فونت های خود را با استفاده از روش `SetFontsSources` اضافه کنید. این اجازه می دهد تا منبع سیستم را با یک منبع کاربر جایگزین کنید. Aspose.Words دیگر به دنبال فونت در رجیستری یا Windows\پوشه فونت نخواهد بود و در عوض فقط فونت ها را در پوشه مشخص شده اسکن می کند. روش `GetFontSources` مقادیر مربوطه را باز می گرداند.

### یک یا چند پوشه فونت را مشخص کنید

روش های [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) و SetFontsFolders میانبر هایی برای روش **SetFontSources** با یک یا چند نمونه [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) هستند. این روش ها برای نشان دادن جایی که Aspose.Words باید به دنبال فونت ها باشد استفاده می شود. اگر یک پوشه وجود ندارد یا قابل دسترسی نیست، Aspose.Words فقط این پوشه را نادیده می گیرد. اگر تمام پوشه ها، از جمله منابع برای جایگزینی فونت، نادیده گرفته شوند، Aspose.Words از فونت Fanwood به عنوان پیش فرض استفاده می کند.

مثال زیر نشان می دهد که چگونه پوشه یا منبع را تنظیم کنید، که Aspose.Words بعدا برای جستجوی TrueType فونت ها در هنگام رندر یا جاسازی فونت ها استفاده می شود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

یک پارامتر اضافی بولی کنترل می کند که آیا فونت ها به طور تکراری از طریق تمام پوشه ها اسکن می شوند، بنابراین تمام پوشه های کودک یک پوشه مشخص شده را اسکن می کند. مثال زیر نشان می دهد که چگونه Aspose.Words را برای جستجوی فونت های TrueType در هنگام رندر یا جاسازی فونت ها در چندین پوشه تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

به اولویت ها توجه کنید. اگر فونت هایی با نام خانوادگی و سبک یکسان در منابع مختلف فونت وجود داشته باشد، Aspose.Words فونت را از منبع با اولویت بالاتر انتخاب می کند. توضیحات فیلد "اولویت" را در زیر مشاهده کنید.

{{% /alert %}}

اگر اصلا نمی خواهید از فونت های سیستم استفاده کنید، Aspose.Words به شما اجازه می دهد آنها را نادیده بگیرید و فقط از فونت های خود استفاده کنید:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### املاک اولویت دار

ویژگی [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) زمانی استفاده می شود که فونت هایی با نام خانوادگی و سبک یکسان در منابع مختلف فونت وجود داشته باشد. در این حالت Aspose.Words فونت را از منبع با مقدار اولویت بالاتر انتخاب می کند. به عنوان مثال، یک نسخه قدیمی از فونت در پوشه سیستم وجود دارد و مشتری نسخه جدیدی از همان فونت را در یک پوشه سفارشی اضافه کرده است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## بارگذاری فونت ها از Stream {#loading-fonts-from-stream}

Aspose.Words کلاس [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) را فراهم می کند که اجازه بارگذاری فونت ها را از جریان می دهد. برای استفاده از منبع فونت جریان، کاربر باید یک کلاس مشتق شده از **StreamFontSource** ایجاد کند و پیاده سازی روش [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) را ارائه دهد. روش **OpenFontDataStream** را می توان چندین بار فراخواند. برای اولین بار، وقتی Aspose.Words منابع فونت ارائه شده را اسکن می کند تا لیستی از فونت های موجود را دریافت کند، فراخوانده می شود. بعدا ممکن است اگر فونت در سند برای تجزیه داده های فونت و جاسازی داده های فونت به برخی از فرمت های خروجی استفاده شود، فراخوانده شود. **StreamFontSource** ممکن است مفید باشد زیرا اجازه می دهد داده های فونت را فقط در صورت نیاز بارگذاری کند و آن را در حافظه برای طول عمر `FontSettings` ذخیره نکند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource**

## ذخیره و بارگذاری یک کش جستجوی فونت

هنگام جستجوی یک فونت برای اولین بار، Aspose.Words بر روی منابع فونت مشخص شده توسط کاربر تکرار می شود و بر اساس داده های این منابع، یک کش جستجوی فونت را تشکیل می دهد. بنابراین، کش اطلاعات مربوط به فونت های موجود را جمع آوری می کند: خانواده فونت، سبک، نام فونت کامل و دیگران. در تماس های بعدی، Aspose.Words اطلاعات مربوط به فونت مورد نظر را با نام آن در حافظه پنهان جستجوی فونت جستجو می کند، پس از آن فایل های مشخص شده را برای استفاده از فونت تجزیه می کند.

روش تجزیه تمام فایل های فونت موجود برای شروع کش بسیار وقت گیر است. Aspose.Words به شما اجازه می دهد تا کش را با استفاده از روش **FontSettings.SaveSearchCache** برای حل مسئله عملکرد ذخیره و بارگذاری کنید. یعنی کاربر می تواند یک کش ذخیره شده قبلی را از یک فایل بارگذاری کند و مرحله تجزیه تمام فایل های فونت موجود را حذف کند.

{{% alert color="primary" %}}

از همان روش **SaveSearchCache** برای به روز رسانی کش استفاده کنید.

{{% /alert %}}

{{% alert color="primary" %}}

کش برای سناریوهای دیگر نیز مناسب است وقتی فونت ها از طریق شبکه بارگذاری می شوند. یا برای سناریوهایی که هیچ راهی برای ذخیره یک نمونه `FontSettings` با یک کش بارگذاری شده وجود ندارد.

{{% /alert %}}


## لیست فونت های موجود را دریافت کنید {#get-a-list-of-available-fonts}

اگر می خواهید لیستی از فونت های موجود را دریافت کنید، که به عنوان مثال می تواند برای ارائه یک سند PDF استفاده شود، می توانید از روش [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) استفاده کنید، همانطور که در مثال کد زیر نشان داده شده است. کلاس [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) اطلاعات مربوط به فونت فیزیکی موجود در موتور فونت Aspose.Words را مشخص می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
