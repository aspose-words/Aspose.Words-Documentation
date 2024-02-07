---
title: فونت های TrueType را جایگزین کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: دستکاری و جایگزینی فونت های TrueType
linktitle: دستکاری و جایگزینی فونت های TrueType
description: "Aspose.Words for Python via .NET می‌تواند فونت‌های TrueType صحیح را در سند حاصل جاسازی کند تا از نمایش دقیق آن اطمینان حاصل کند. اگر یک فونت یا یک کاراکتر خاص در دسترس نباشد، Aspose.Words به دنبال جایگزینی مناسب برای فونت می‌گردد یا از مکانیسم Font backback استفاده می‌کند."
type: docs
weight: 10
url: /fa/python-net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words به فونت های TrueType برای انواع کارها، از جمله ارائه اسناد به فرمت های صفحه ثابت، به عنوان مثال، PDF یا XPS، نیاز دارد. زمانی که Aspose.Words یک سند را ارائه می‌کند، باید فونت‌های TrueType و زیر مجموعه را در سند به‌دست‌آمده جاسازی کند، که در طول تولید سند، از جمله فرمت‌های محبوب PDF یا XPS، یک عمل عادی است. این تضمین می کند که سند برای هر بیننده ای یکسان ظاهر می شود. علاوه بر این، مشخصات XPS مستلزم آن است که فونت ها همیشه در سند تعبیه شوند.

برای اطمینان از اینکه Aspose.Words به طور دقیق کاراکترها را اندازه گیری می کند و فونت های مربوطه را با موفقیت جاسازی می کند، شرایط زیر باید رعایت شود:

1. Aspose.Words باید بتواند فایل های فونت TrueType را در سیستم پیدا کرده و به آنها دسترسی داشته باشد.
1. باید فونت‌های TrueType کافی در دسترس Aspose.Words باشد، ترجیحاً با نام‌های خانوادگی فونت‌هایی که در سند استفاده می‌شود.

توجه داشته باشید که فونت موجود در سند نشان دهنده موجودیتی مانند نام خانوادگی، سبک، اندازه، رنگ است که با قلم `TrueType` (فونت فیزیکی) متفاوت است. Aspose.Words فونت موجود در سند را در مرحله ای از پردازش به یک فونت فیزیکی تبدیل می کند. این کار وظایف خاصی را امکان پذیر می کند، معمولاً وظیفه محاسبه اندازه متن در طول ساخت طرح و جاسازی/زیر تنظیم در قالب های صفحه ثابت. تعدادی از کارهای کمتر محبوب دیگر، مانند حل فونت و جایگزینی در حین بارگیری HTML یا جاسازی/زیر تنظیم در برخی از قالب‌های جریان نیز فعال هستند.

## دستکاری فونت و مسائل مربوط به عملکرد

تمام مکانیزم های دستکاری فونت موجود در کلاس [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) قرار دارند. این کلاس مسئول واکشی فونت ها در منابع فونت تعریف شده و همچنین فرآیند جایگزینی فونت است که در زیر توضیح داده شده است.

فونت ها در چند مرحله تجزیه می شوند:

1. به دست آوردن اطلاعات برای فونت، حل و فصل از تمام فونت های موجود.
1. تجزیه فونت های حل شده برای دریافت glyph و معیارهای موجود (افقی و عمودی).
1. تجزیه فونت های حل شده برای جاسازی و زیرمجموعه.

هنگامی که Aspose.Words برای اولین بار با یک فونت در سند روبرو می شود، سعی می کند اطلاعات اولیه فونت مانند نام کامل فونت، نام خانوادگی، نسخه، سبک را از فایل های فونت موجود در هر منبع فونت بدست آورد. پس از بازیابی همه فونت‌ها، Aspose.Words از این جزئیات برای یافتن داده‌های فونت مورد نیاز یا جایگزینی مناسب برای فونت درخواستی استفاده می‌کند.

از آنجایی که روشی که در بالا توضیح داده شد زمان بر است، ممکن است بر عملکرد برنامه در اولین راه اندازی آن تأثیر منفی بگذارد. با این حال، هر نمونه از [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) کش مخصوص به خود را دارد که می تواند زمان پردازش اسناد بعدی را کاهش دهد. به عنوان مثال، می توانید نمونه ای از کلاس [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) را بین اسناد مختلف به اشتراک بگذارید که به شما امکان می دهد سرعت بارگذاری اسناد را افزایش دهید. مثال زیر این را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

در مواردی که [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) به طور صریح تعریف نشده باشد، Aspose.Words از نمونه پیش فرض [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) استفاده می کند. این نمونه همچنین به طور خودکار در بین اسناد به اشتراک گذاشته می شود و می تواند به صورت زیر استخراج شود:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

اگر مطمئن هستید که تمام اسناد پردازشی به تنظیمات فونت یکسانی نیاز دارند، توصیه می‌شود نمونه پیش‌فرض [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) را تنظیم و استفاده کنید. فرض کنید که باید از منابع فونت یکسانی برای همه اسناد خود استفاده کنید. در این مورد، فقط می توانید نمونه پیش فرض را به صورت زیر اصلاح کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) سفارشی اولویت بیشتری نسبت به نمونه پیش‌فرض دارد.

{{% /alert %}}

## در دسترس بودن و جایگزینی فونت

یک متن در یک سند را می توان با فونت های مختلفی مانند Arial، Times New Roman، Verdana و غیره قالب بندی کرد. هنگامی که Aspose.Words یک سند را ارائه می دهد، سعی می کند فونت هایی را که در سند مشخص شده اند انتخاب کند.

با این حال، شرایطی وجود دارد که فونت دقیق را نمی توان یافت و Aspose.Words باید آن را جایگزین فونت مشابهی کند. Aspose.Words فونت را طبق فرآیند زیر انتخاب می کند:
1. Aspose.Words سعی می کند یک فونت در میان منابع فونت موجود با نام دقیق فونت پیدا کند.
1. Aspose.Words سعی می کند فونت مورد نیاز را از بین فونت های تعبیه شده در سند اصلی پیدا کند. برخی از قالب‌های سند مانند DOCX می‌توانند حاوی فونت‌های تعبیه‌شده باشند.
1. اگر Aspose.Words نتواند فونت مورد نیاز را با نام دقیقاً مطابقت پیدا کند و ویژگی [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) برای این فونت تعریف شده است، Aspose.Words فونت تعریف شده با [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) را از کلاس [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) پیدا می کند که اطلاعات فونت را مشخص می کند.
1. اگر Aspose.Words نتواند فونت تعریف شده را بیابد و [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) نیز تعریف نشده باشد، قوانین جایگزینی فونت یک به یک اعمال می شود، همانطور که در زیر توضیح داده شده است (زمانی که جایگزین مناسب پیدا شد، فرآیند جایگزینی فونت متوقف می شود و مرحله بعدی اجرا نمی شود):
   1. ابتدا، Aspose.Words سعی می کند نام فونت را پردازش کند تا جایگزین شود، به ویژه سعی می کند پسوندها را با جداکننده های "-" و "" حذف کند.<br>
      اگر این قانون جایگزینی انجام شود، یک "قلم "&lt;OriginalFont&gt;" یافت نشد. به جای آن از فونت "&lt;SubstitutionFont&gt;" استفاده کنید. دلیل: جایگزینی نام فونت." هشدار ظاهر می شود<br>
   1. سپس Aspose.Words سعی می کند تنظیمات فونت سیستم عامل را در صورت موجود بودن، با استفاده از ابزار **FontConfig** اعمال کند. این ویژگی غیر Windows باید با یک سیستم عامل سازگار با FontConfig استفاده شود. تقریباً هر سیستم‌عامل مبتنی بر یونیکس قبلاً دارای یک کتابخانه `FontConfig` است که برای ارائه پیکربندی فونت در سطح سیستم، سفارشی‌سازی و دسترسی به برنامه‌ها طراحی شده است. در غیر این صورت این کتابخانه به راحتی توسط کاربر قابل نصب است.
      Aspose.Words می داند که چگونه داده ها را پرس و جو کند و نتایج FontConfig را برای اهداف خود تفسیر کند. به طور پیش فرض، ابزار `FontConfig` غیرفعال است. می توانید آن را به صورت زیر فعال کنید:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. مرحله بعدی از یک مکانیسم ساده اما قدرتمند به نام قانون جایگزینی **Table** استفاده می کند. به طور پیش فرض، این ویژگی برای سیستم عامل مورد نظر فعال و در دسترس است. Aspose.Words فونت را با این قانون جایگزین می کند اگر با قانون جایگزینی `FontConfig` جایگزین نشود.<br>
      Aspose.Words از جداول XML استفاده می کند که قوانین جایگزینی اساسی را برای سیستم عامل های مختلف تعریف می کند. طبق قانون جایگزینی جدول، از لیست نام فونت های جایگزین استفاده می شود.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      ویژگی اصلی این قانون توانایی بارگذاری جداول جایگزینی خود است، همانطور که در مثال زیر نشان داده شده است:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      با وجود انعطاف پذیری این مکانیسم، مواردی وجود دارد که بهتر است آن را غیرفعال کنید، همانطور که در زیر نشان داده شده است:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. اگر قانون جایگزینی جدول نتواند فونت را پیدا کند، قانون جایگزینی [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) اعمال خواهد شد. این مکانیزم به طور پیش فرض فعال است. Aspose.Words با توجه به اطلاعات فونت موجود در یک سند خاص، مناسب ترین فونت را پیدا می کند. این اطلاعات را می توان از کلاس [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) مطابق شکل زیر بدست آورد:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      کاربران نمی توانند در جریان کار این ویژگی دخالت کنند، مگر اینکه تصمیم بگیرند در صورت نتایج رضایت بخش، آن را غیرفعال کنند:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      اگر [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) برای فونت گم شده در دسترس نباشد، فرآیند متوقف می شود.<br>
   1. قانون جایگزینی [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) در مواردی اعمال خواهد شد که جایگزینی `FontInfo` نیز ناموفق باشد. این قانون نیز به صورت پیش فرض فعال است. طبق این قانون، Aspose.Words سعی می کند از فونت پیش فرض مشخص شده در ویژگی [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) استفاده کند. اگر کاربر فونت پیش فرض خود را انتخاب نکرده باشد، "Times New Roman" به عنوان فونت پیش فرض استفاده می شود. این قانون را می توان مطابق شکل زیر غیرفعال کرد:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      برای بررسی فونت پیش فرض فعلی، از:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      برای تنظیم گزینه جایگزینی خود، اعمال کنید:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. اگر Aspose.Words قادر به انجام جایگزینی فونت نباشد، سعی می کند اولین فونت موجود را از منابع فونت موجود دریافت کند.
1. در نهایت، اگر Aspose.Words نتواند هیچ قلمی را در میان منابع فونت موجود پیدا کند، سند را با استفاده از فونت رایگان Fanwood که در بسته Aspose.Words تعبیه شده است، ارائه می‌کند.<br>

اگر [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) در دسترس باشد، *قانون جایگزینی FontInfo* همیشه فونت را حل می کند و قانون فونت پیش فرض را لغو می کند. اگر می خواهید از قانون فونت پیش فرض استفاده کنید، باید قانون جایگزینی *FontInfo* را غیرفعال کنید. توجه داشته باشید که قانون جایگزینی *FontConfig* در اکثر موارد فونت را حل می کند و بنابراین همه قوانین دیگر را لغو می کند.

## تنظیمات بازگشت فونت از XML

دو مکانیسم مختلف در Aspose.Words استفاده می شود - جایگزینی فونت و جایگزینی فونت. جایگزینی فونت زمانی استفاده می شود که فونت مشخص شده در سند در بین منابع فونت همانطور که در بخش های بالا توضیح داده شد یافت نمی شود. مکانیسم بازگشت فونت زمانی استفاده می شود که فونت حل شود، اما حاوی کاراکتر خاصی نیست. در این حالت، Aspose.Words سعی می کند از یکی از فونت های بازگشتی برای کاراکتر استفاده کند.

یک روش [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) وجود دارد که به طور خودکار تنظیمات بازگشتی را با اسکن فونت های موجود ایجاد می کند. از آنجایی که این روش ممکن است یک تنظیم بازگشتی غیر بهینه ایجاد کند، می‌توانید رفتار بازگشت فونت را با استفاده از ویژگی‌های کلاس [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) کنترل کنید. این کلاس تنظیمات مکانیزم بازگشت فونت را مشخص می کند. می توانید نمونه ای از کلاس [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) را به صورت زیر دریافت کنید:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

مشابه قانون جایگزینی جدول*، این مکانیسم از جداول XML برای پیکربندی استفاده می کند. این جداول XML را می توان با روش های زیر بارگیری و ذخیره کرد:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

نسخه Aspose.Words شامل دو جدول است: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

جدول *MsOfficeFallbackSetting* یک استراتژی جایگزین برای طیف وسیعی از کاراکترها تعریف می کند که مشابه استراتژی مورد استفاده Microsoft Word است. بنابراین، این استراتژی مستلزم نصب فونت های Microsoft Office است. *MsOfficeFallbackSetting* را می توان با استفاده از روش زیر فعال کرد:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

جدول *NotoFallbackSetting* مخصوصاً برای استفاده با فونت‌های Google Noto ایجاد شده است (در بخش بعدی درباره تنظیمات فونت Google Noto بیشتر ببینید) و می‌توان آن را به صورت زیر فعال کرد:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

مثال کد زیر نحوه بارگیری تنظیمات بازگشتی فونت را از یک فایل XML نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

در مثال کد بالا، از فایل XML زیر استفاده شده است:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## تنظیمات عقب‌نشینی فونت از پیش تعریف‌شده برای فونت‌های Google Noto

Aspose.Words تنظیمات بازگشتی فونت از پیش تعریف شده را برای فونت های Google Noto فراهم می کند. اینها فونت های رایگان تحت مجوز SIL Open Font License هستند که می توانند از فونت های Google Noto دانلود شوند. کلاس [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) یک متد [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) ارائه می دهد. تنظیمات از پیش تعریف شده بازگشتی را بارگیری می کند که از فونت های Google Noto همانطور که در مثال کد زیر نشان داده شده است استفاده می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

در تنظیمات از پیش تعریف شده فقط از فونت های Noto به سبک Sans با وزن منظم استفاده می شود.

{{% /alert %}}

## جایی که Aspose.Words به دنبال فونت می گردد

Aspose.Words سعی می کند فونت های TrueType را به طور خودکار در سیستم فایل پیدا کند. معمولاً می‌توانید برای یافتن فونت‌های `TrueType` به رفتار پیش‌فرض Aspose.Words تکیه کنید، اما گاهی اوقات لازم است پوشه‌های حاوی فونت‌های TrueType را مشخص کنید. مبحث [مکان فونت TrueType را مشخص کنید](/words/fa/python-net/specifying-truetype-fonts-location/) نحوه و مکان جستجوی فونت ها توسط Aspose.Words و همچنین نحوه تعیین مکان فونت خود را شرح می دهد.

## تفاوت در پردازش فرمت های فونت در Aspose.Words و Microsoft Word

تفاوت هایی در پردازش فرمت های فونت در Aspose.Words و Microsoft Word وجود دارد که در جدول زیر نشان داده شده است:

|| Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| فونت های TrueType و فونت های OpenType با خطوط TrueType | پشتیبانی. | پشتیبانی. |
| فونت های OpenType با خطوط پست اسکریپت | برای اکثر سناریوها پشتیبانی می شود. جاسازی در قالب‌های صفحه ثابت مانند PDF و XPS پشتیبانی نمی‌شود. متن با تصاویر بیت مپ جایگزین می شود. | برای اکثر سناریوها، از جمله جاسازی در قالب‌های صفحه ثابت، پشتیبانی می‌شود. |
| تغییرات فونت OpenType | فقط نمونه های نامگذاری شده پشتیبانی می شوند. تغییرات مداوم پشتیبانی نمی شود. | فقط برای نمونه پیش فرض پشتیبانی می شود. نمونه‌های نام‌گذاری شده و تغییرات پیوسته پشتیبانی نمی‌شوند. |
| فونت های نوع 1 | در نسخه های Windows قبل از سال 2013 و در نسخه های MacOS پشتیبانی می شود. پشتیبانی از نسخه های Windows از سال 2013 قطع می شود. | پشتیبانی نشده. |

## همچنین ببینید

- [فونت های Google Noto](https://fonts.google.com/noto) برای دانلود فونت های رایگان
