---
title: ویژگی های True مکان فونت های نوع در Java
second_title: Aspose.Words برای Java
articleTitle: ویژگی های True نوع فونت ها Location
linktitle: ویژگی های True نوع فونت ها Location
description: "ویژگی های مختلف حقیقت واقعی منابع فونت نوع: پوشه سیستم، منابع کاربر، بارگیری فونت ها از یک جریان، یک سیستم فایل یا حافظه با استفاده از Java..."
type: docs
weight: 30
url: /fa/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

این موضوع رفتار پیش فرض را توصیف می کند Aspose.Words هنگامی که به دنبال فونت های TrueType، از جمله تفاوت های سیستم عامل، و نشان می دهد که چگونه برای مشخص کردن منابع فونت کاربر.

The The The The The The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) کلاس برای مشخص کردن منابع مختلف فونت استفاده می شود. چندین پیاده سازی وجود دارد **FontSourceBase** کلاس:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

جزئیات اجرایی برای برخی از کلاس ها در زیر توضیح داده شده است.

## Load Fonts از سیستم {#loading-fonts-from-system}

یک خاص وجود دارد [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) کلاسی که همیشه به صورت پیش فرض استفاده می شود. این نشان دهنده تمام فونت های TrueType نصب شده در سیستم است. بنابراین، ممکن است یک لیست منبع با **SystemFontSource** و سایر منابع مورد نیاز:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

یک نمونه از **SystemFontSource** کلاس به طور پیش فرض تعریف می شود [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)... در سیستم عامل های مختلف، فونت ها ممکن است در مکان های مختلف قرار بگیرند. با این حال، استفاده از **FontSettings** برای مثال هر سند یک راه حل مطلوب نیست. در اکثر موارد، استفاده از [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) باید کافی باشد.

موارد تجربی تنها در صورتی مورد نیاز است که از منابع مختلف فونت برای اسناد مختلف استفاده شود که یک مورد نادر است. استفاده از چندین **FontSettings** موارد عملکرد را کاهش می دهند زیرا آنها حافظه را به اشتراک نمی گذارند.

### جایی که Aspose.Words به نظر می رسد True FontTypes Windows

در بیشتر موارد، Windows کاربران با مشکلات قابل توجهی با فونت های از دست رفته یا طرح های نادرست مواجه نمی شوند. معمولا، Aspose.Words از طریق یک سند، و هنگامی که با لینک فونت مواجه می شود، با موفقیت داده های فونت را از پوشه سیستم استخراج می کند.

On On <span notrans="<span notrans=" Windows"=""></span>"> Aspose.Words ابتدا تمام فونت های موجود را از ...%windir%\Fonts پوشه این محیط بیشتر برای شما کار خواهد کرد. شما فقط پوشه های فونت خود را مشخص می کنید اگر نیاز دارید. Aspose.Words همچنین به دنبال فونت های اضافی ثبت شده در HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts کلید ثبت علاوه بر این، Windows 10 امکان نصب فونت برای کاربر فعلی را فراهم می کند. فونت ها در داخل %userprofile%\AppData\Local\Microsoft\Windows\Fonts پوشه و همچنین مشخص شده در HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts بایگانی، جایی که Aspose.Words به دنبال این فونت ها خواهد بود.

اگر یک سند حاوی فونت های جاسازی شده باشد، Aspose.Words می تواند داده های فونت مربوطه را از سند بخواند و از آن برای ایجاد طرح سند استفاده کند. اسناد همچنین ممکن است حاوی لینک هایی به فونت هایی باشند که در پوشه های سیستم نیستند، در این صورت سناریوهای زیر به کار می آیند:

- کاربران می توانند منابع فونت جدید را از طریق **FontSettings** کلاس
- Aspose.Words سعی کنید فونت گمشده را با یک فونت مشابه جایگزین کنید

### فونت های غیرWindows سیستم های سیستم

Aspose.Words به دنبال فونت در پوشه های فونت سیستم خواهید بود. لیستی از این پوشه ها ممکن است توسط [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) روش اگر هیچ فونت پشتیبانی پیدا نشود، Aspose.Words استفاده از فونت پیش فرض ساخته شده Fanwood.tf.

از آنجا که معیارهای فونت Windows و غیرWindows سیستم عامل متفاوت است، Aspose.Words همه چیز ممکن است برای پیدا کردن یک فونت مشابه و ساخت یک طرح مشابه با اصل. اما این همیشه امکان پذیر نیست. در این موارد، **FontSettings** کلاس باید برای اضافه کردن فونت های سفارشی یا قوانین جایگزینی استفاده شود.

#### جایی که Aspose.Words به نظر می رسد True FontTypes Linux

تفاوت های مختلف Linux توزیع ها ممکن است فونت ها را در پوشه های مختلف ذخیره کنند. Aspose.Words به دنبال فونت در چندین مکان باشید. به طور پیش فرض، Aspose.Words به دنبال فونت در تمام مکان های زیر باشید: * /usr/share/fonts * /usr/local/share/fonts * /usr/X11R/lib/X11/ این رفتار پیش فرض برای اکثر افراد کار خواهد کرد Linux توزیع ها، اما تضمین نمی شود که تمام وقت کار کند، در این صورت ممکن است لازم باشد مکان محل کار را مشخص کنید. true فونت های نوع به صراحت برای انجام این کار، باید بدانید که فونت های TrueType بر روی شما نصب شده اند. Linux توزیع

#### جایی که Aspose.Words به نظر می رسد فونت های واقعی در Mac OS X

Aspose.Words به دنبال فونت در پوشه / کتابخانه / Fonts، که محل استاندارد برای فونت های TrueType در Mac OS X است. در حالی که این تنظیمات برای شما بیشتر از زمان کار خواهد کرد، ممکن است لازم باشد پوشه های فونت خود را در مورد زمانی که شما نیاز به.

#### TrueType Fonts Android

On On Android, جریان کار فونت در کلاس Typeface قرار دارد.
پنج نوع تایپ وجود دارد، هر نوع صورت نشان دهنده گروهی از خانواده های فونت مشابه است:

- – DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

به عنوان مثال، طبق Android’s [فونت ها](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) فایل پیکربندی، "زمان" متعلق به خانواده "serif" است، بنابراین NotoSerif-Regular.tf زمانی که "زمان" درخواست می شود استفاده می شود:

**فونت ها.xml**

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

برای جستجوی فونت های مشابه، استراتژی های شرح داده شده در گذشته استفاده می شود

علاوه بر آنها، Aspose.Words فهرست جایگزین های خود را برای Android پلتفرم

فرض کنیم که این سند شامل فونت PMing LiU-ExtB، اول از همه، Aspose.Words به دنبال فونت مورد نیاز در منابع سیستم است.

فهرست پیش فرض Android پوشه های فونت:

- / System/fonts
- / System/font
- /data/fonts

The The The The The The Aspose.Words از طریق منابع تعریف شده توسط کاربر که با روش تنظیم شده اند، نگاه کنید:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

در صورتی که یک جایگزین صریح مشخص شده باشد، Aspose.Words جایگزین فونت گم شده با پیشنهاد کاربر:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

اگر هیچ کدام از قوانین کار نمی کردند، Aspose.Words جدول جایگزین داخلی را بررسی کنید. اگر جدول حاوی اطلاعاتی در مورد یک تناسب خوب باشد، فونت جایگزین می شود. در مورد ما Aspose.Words انتخاب خواهد کرد `Typeface.SERIF`... اما اگر جدول چیزی در مورد فونت درخواست شده نمی داند، پس Aspose.Words یک فونت را بر اساس قوانین خاص MS Word یا نزدیک ترین فاصله در فضای Panose انتخاب کنید.

#### TrueType Fonts .NET Core و Xamarin

برای .NET Core و Xamarin همان قانون برای Aspose.Words برای Java نسخه به طور پیش فرض، تمام فونت های سیستم پلت فرم که در آن برنامه اجرا می شود در دسترس هستند.
لیست پوشه هایی که در آن جستجو انجام می شود را می توان با فراخوان روش پیدا کرد:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Load Fonts از Folder {#loading-fonts-from-folder}

اگر سند پردازش شده شامل پیوندهایی به فونت هایی است که در سیستم نیستند، یا نمی خواهید آنها را به پوشه سیستم اضافه کنید، یا فاقد مجوز هستید، بهترین راه حل این است که یک پوشه با فونت های خود اضافه کنید. `SetFontsSources` روش این اجازه می دهد تا جایگزین منبع سیستم با یک منبع کاربر. Aspose.Words دیگر به دنبال فونت در رجیستری یا Windows\Font پوشه و در عوض فقط برای فونت ها در پوشه مشخص شده اسکن می کنند. The The The The The The `GetFontSources` روش به ارزش های مربوطه باز می گردد.

### ویژگی های One یا Multi Font Folders

The The The The The The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) و روش های SetFontsFolders میانبر هستند. **SetFontSources** روش با یک یا چند [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) موارد این روش ها برای نشان دادن جایی که Aspose.Words باید به دنبال فونت ها باشید. اگر یک پوشه وجود نداشته باشد یا در دسترس نباشد، Aspose.Words این پوشه را نادیده بگیرید. اگر تمام پوشه ها، از جمله منابع جایگزین فونت، نادیده گرفته شوند، Aspose.Words از فونت Fanwood به عنوان یک پیش فرض استفاده کنید.

مثال زیر نشان می دهد که چگونه پوشه یا منبع را تنظیم کنیم. Aspose.Words پس از آن برای جستجوی فونت های TrueType در هنگام رندر یا جاسازی فونت ها استفاده می شود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

یک پارامتر اضافی Boolean کنترل می کند که آیا فونت ها به صورت بازگشتی از طریق تمام پوشه ها اسکن می شوند، بنابراین تمام پوشه های کودک را از یک پوشه مشخص اسکن می کنند. مثال زیر نشان می دهد که چگونه تنظیم کنیم Aspose.Words برای نگاه کردن به پوشه های متعدد برای فونت های TrueType در هنگام ارائه یا جاسازی فونت ها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% alert color="primary" %}}

اولویت ها را یادداشت کنید. اگر فونت هایی با نام خانوادگی و سبک در منابع مختلف فونت وجود داشته باشد، سپس Aspose.Words فونت را از منبع با اولویت بالاتر انتخاب کنید. شرح زمینه "Priority" زیر را ببینید.

{{% /alert %}}

اگر نمی خواهید از فونت های سیستم استفاده کنید، Aspose.Words اجازه دهید آنها را نادیده بگیرید و فقط از فونت های خود استفاده کنید:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### اولویت مالکیت

The The The The The The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) اموال زمانی استفاده می شود که فونت هایی با نام خانوادگی و سبک در منابع مختلف فونت وجود دارد. در این مورد Aspose.Words فونت را از منبع با ارزش اولویت بالاتر انتخاب کنید. به عنوان مثال، یک نسخه قدیمی از فونت در پوشه سیستم وجود دارد و مشتری یک نسخه جدید از همان فونت را در یک پوشه سفارشی اضافه کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Load Fonts از Stream {#loading-fonts-from-stream}

Aspose.Words فراهم می کند [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) کلاس، که اجازه می دهد تا بارگیری فونت از جریان. برای استفاده از منبع فونت جریان، کاربر نیاز به ایجاد یک کلاس مشتق شده از **StreamFontSource** و اجرای آن [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) روش The The The The The The **OpenFontDataStream** این روش می تواند چندین بار نامیده شود. برای اولین بار، آن را به نام زمانی که Aspose.Words منابع فونت ارائه شده را اسکن کنید تا لیستی از فونت های موجود را دریافت کنید. بعدا ممکن است آن را به نام اگر فونت در سند برای تجزیه داده های فونت و برای جاسازی داده های فونت به برخی از فرمت های خروجی استفاده می شود. **StreamFontSource** ممکن است مفید باشد زیرا اجازه می دهد تا داده های فونت را تنها زمانی که لازم است بارگیری کنید و آن را در حافظه ذخیره نکنید. `FontSettings` طول عمر

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** یک جایگزین برای [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) از آنجایی که همیشه امکان بارگذاری یک جریان به حافظه وجود دارد و آن را به حافظه منتقل می کند. **MemoryFontSource**... تفاوت این است که **MemoryFontSource** تمام وقت در حافظه ذخیره می شود و **StreamFontSource** در صورت تقاضا و دفع حق اما ممکن است چندین بار بارگذاری شود، همانطور که در بالا توضیح داده شده است. در برخی موارد **MemoryFontSource** بهتر است و در دیگران **StreamFontSource**...

## Save and Load a Font Search

وقتی برای اولین بار به دنبال یک فونت می گردید، Aspose.Words آن را بر روی منابع فونت مشخص شده توسط کاربر و ایجاد یک کش جستجوی فونت بر اساس داده ها از این منابع. بنابراین، حافظه اطلاعات مربوط به فونت های موجود را جمع آوری می کند: خانواده فونت، سبک، نام فونت کامل و دیگران. در تماس های بعدی، Aspose.Words جستجو برای اطلاعات در مورد فونت مورد نظر با نام آن در حافظه جستجوی فونت، پس از آن فایل های مشخص را برای استفاده از فونت تجزیه می کند.

روش تجزیه تمام فایل های فونت موجود برای اولیه کردن حافظه کش کاملاً زمان می برد. Aspose.Words به شما اجازه می دهد تا کش را با استفاده از **FontSettings.SaveSearchCache** روش حل مسئله عملکرد به این ترتیب، کاربر می تواند یک حافظه ذخیره شده قبلی را از یک فایل بارگذاری کند و گام تجزیه تمام فایل های فونت موجود را بردارد.

{{% alert color="primary" %}}

استفاده از همان **SaveSearchCache** روش به روز رسانی حافظه

{{% /alert %}}

{{% alert color="primary" %}}

حافظه نیز برای سناریوهای دیگر مناسب است، زمانی که فونت ها بر روی شبکه بارگذاری می شوند. یا برای سناریوهایی که راهی برای ذخیره کردن وجود ندارد `FontSettings` به عنوان مثال با یک کش بارگذاری شده.

{{% /alert %}}


## لیستی از فونت های موجود را دریافت کنید {#get-a-list-of-available-fonts}

اگر می خواهید لیست فونت های موجود را دریافت کنید، که به عنوان مثال می تواند برای ارائه یک سند PDF استفاده شود، می توانید از آن استفاده کنید. [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) روش، همانطور که در مثال کد زیر نشان داده شده است. The The The The The The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) کلاس اطلاعات مربوط به فونت فیزیکی موجود را مشخص می کند Aspose.Words موتور فونت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
