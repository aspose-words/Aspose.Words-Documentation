---
title: Manipulate و Substitute TrueType Fonts
second_title: Aspose.Words برای Java
articleTitle: Manipulate و Substitute TrueType Fonts
linktitle: Manipulate و Substitute TrueType Fonts
description: "Aspose.Words برای Java می تواند فونت های TrueType صحیح را در سند نتیجه قرار دهد تا اطمینان حاصل شود که آن را به طور دقیق نمایش می دهد یا برای جایگزینی فونت مناسب جستجو می کند یا از مکانیزم کشویی فونت استفاده می کند."
type: docs
weight: 10
url: /fa/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words نیاز واقعی فونت های نوع برای انواع وظایف، از جمله ارائه اسناد به فرمت های ثابت صفحه، به عنوان مثال، PDF یا یا XPS... وقتی Aspose.Words یک سند را ارائه می دهد، باید جاسازی و زیر مجموعه ای از فونت های TrueType را در سند نتیجه، که یک عمل طبیعی در طول یک نسل سند، از جمله PDF محبوب یا PDF یا XPS فرمت ها این تضمین می کند که این سند به هر بیننده ای یکسان خواهد بود. علاوه بر این، XPS مشخصات نیاز به فونت همیشه در سند جاسازی شده است.

برای اطمینان Aspose.Words به طور دقیق شخصیت ها را اندازه گیری کنید و فونت های مربوطه را با موفقیت جاسازی کنید، شرایط زیر باید برآورده شود:

1. Aspose.Words باید قادر به پیدا کردن و دسترسی به فایل های فونت TrueType در سیستم باشد.
1. باید فونت های TrueType کافی وجود داشته باشد. Aspose.Words, ترجیحا با همان نام خانوادگی فونت به عنوان کسانی که در سند استفاده می شود.

توجه داشته باشید که فونت در سند نشان دهنده یک نهاد است، مانند نام خانوادگی، سبک، اندازه، رنگ، که با رنگ متفاوت است. `TrueType` فونت (سبک فیزیکی) Aspose.Words فونت را در سند به یک فونت فیزیکی در برخی از مراحل پردازش حل می کند. این کار وظایف خاصی را فراهم می کند، که اغلب وظیفه محاسبه اندازه متن در طول ساخت و ساز طرح و جاسازی / تنظیم برای فرمت های صفحه ثابت است. تعدادی از دیگر کارهای کمتر محبوب، مانند حل فونت و جایگزینی در هنگام بارگیری HTML یا جاسازی / تنظیم به برخی از فرمت های جریان نیز فعال هستند.

## دانلود فیلم Font Manipulation and Performance Issues

تمام مکانیسم های دستکاری فونت موجود در [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) کلاس این کلاس مسئول جذب فونت ها در منابع فونت تعریف شده و همچنین برای فرآیند سفارشی فونت، همانطور که در زیر شرح داده شده است.

فونت ها در چندین مرحله تقسیم می شوند:

1. دریافت اطلاعات برای فونت، حل از تمام فونت های موجود.
1. پارس کردن فونت های حل شده برای در دسترس بودن glyphs و معیارها (horizontal و عمودی)
1. پارس کردن فونت های حل شده برای جاسازی و زیرمجموعه.

وقتی Aspose.Words با یک فونت در سند برای اولین بار مواجه می شود، آن تلاش می کند تا اطلاعات فونت اصلی مانند نام کامل فونت، نام خانوادگی، نسخه، سبک، از فایل های فونت واقع در هر منبع فونت را به دست آورد. بعد از اینکه تمام فونت ها بازیابی می شوند، Aspose.Words از این جزئیات برای پیدا کردن داده های فونت مورد نیاز یا جایگزینی مناسب برای فونت درخواست شده استفاده کنید.

از آنجایی که روش شرح داده شده در بالا زمان بر است، ممکن است تاثیر منفی بر عملکرد برنامه در اولین پرتاب آن داشته باشد. هر مثالی **FontSettings** حافظه خود را دارد که می تواند زمان پردازش اسناد بعدی را کاهش دهد. به عنوان مثال، شما می توانید یک نمونه از **FontSettings** کلاس بین اسناد مختلف که به شما اجازه می دهد تا سرعت بارگذاری اسناد را افزایش دهید. مثال زیر این را نشان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

در صورتی که **FontSettings** به صراحت تعریف نمی شود، Aspose.Words استفاده از پیش فرض **FontSettings** مثال. این نمونه همچنین به طور خودکار در میان اسناد به اشتراک گذاشته می شود و می تواند به صورت زیر استخراج شود:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

اگر مطمئن هستید که تمام اسناد پردازش نیاز به تنظیمات فونت مشابه دارند، توصیه می شود که تنظیم کنید و از پیش فرض استفاده کنید. **FontSettings** مثال. فرض کنید باید از همان منابع فونت برای تمام اسناد خود استفاده کنید. در این مورد، شما فقط می توانید نمونه پیش فرض را به صورت زیر اصلاح کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

سفارشی **FontSettings** اولویت بالاتری نسبت به نمونه پیش فرض داشته باشید.

{{% /alert %}}

## دسترسی به فونت و Substitut

یک متن در یک سند می تواند با فونت های مختلف مانند Arial، Times New Roman، Verdana و دیگران فرمت شود. وقتی Aspose.Words یک سند را ارائه می دهد، تلاش می کند تا فونت هایی که در سند مشخص شده اند را انتخاب کند.

با این حال، شرایطی وجود دارد که فونت دقیق را نمی توان یافت و Aspose.Words باید آن را به جای یک فونت مشابه جایگزین کنید. Aspose.Words فونت را بر اساس فرآیند زیر انتخاب کنید:

1. Aspose.Words سعی کنید یک فونت را در میان منابع فونت موجود با نام فونت دقیق پیدا کنید.
1. Aspose.Words سعی کنید فونت مورد نیاز را در میان فونت های جاسازی شده در سند اصلی پیدا کنید. برخی از فرمت های سند مانند DOCX می توانند شامل فونت های جاسازی شده باشند.
1. اگر Aspose.Words قادر به پیدا کردن فونت مورد نیاز با بازی نام دقیق و [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) ویژگی های تعریف شده برای این فونت، سپس Aspose.Words پیدا کردن فونت تعریف شده با **AltName** از سوی [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) کلاس، که اطلاعات فونت را مشخص می کند.
1. اگر Aspose.Words نمی تواند فونت تعریف شده را پیدا کند و **AltName** همچنین تعریف نمی شود، سپس قوانین جایگزینی فونت یک به یک اعمال می شود، همانطور که در زیر توضیح داده می شود (هنگامی که جایگزین مناسب پیدا می شود، فرآیند جایگزینی فونت متوقف می شود و گام بعدی اجرا نمی شود):
   1. Aspose.Words تلاش برای اعمال تنظیمات فونت OS، اگر آنها در دسترس هستند، با استفاده از `FontConfig` ابزار این غیرWindows ویژگی باید با یک سیستم عامل سازگار با FontConfig استفاده شود. تقریبا هر سیستم عامل مبتنی بر یونیکس در حال حاضر دارای یک سیستم عامل است. `FontConfig` کتابخانه ای که برای ارائه پیکربندی فونت در سراسر سیستم، سفارشی سازی و دسترسی به برنامه ها طراحی شده است. در غیر این صورت، این کتابخانه می تواند به راحتی توسط کاربر نصب شود.<br/>
      Aspose.Words می داند چگونه داده ها را جستجو کرده و نتایج FontConfig را برای اهداف خود تفسیر کند. به طور پیش فرض، `FontConfig` فایده ای ندارد. شما می توانید آن را به عنوان زیر فعال کنید:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   گام بعدی یک مکانیزم ساده اما فوق العاده قدرتمند به نام [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)... به طور پیش فرض، این ویژگی فعال و در دسترس برای هر سیستم عامل است. Aspose.Words از جداول XML استفاده کنید که قوانین جایگزینی پایه را برای سیستم عامل های مختلف تعریف می کنند. طبق قانون جایگزینی جدول، لیست نام های فونت جایگزین استفاده می شود.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - یک فونت جایگزین، SubstituteFonts - لیست انواع جایگزینی، جدا شده توسط کاما. اولین فونت موجود برای جایگزینی استفاده می شود.<br/>
      ویژگی اصلی این قانون توانایی بارگیری جداول جایگزینی خود است، همانطور که در مثال زیر نشان داده شده است:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      شما می توانید به عنوان پایه ای از جدول موجود از شیشه یا صرفه جویی آن را به صورت برنامه ریزی شده در راه زیر:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      علی رغم انعطاف پذیری این مکانیسم، مواردی وجود دارد که بهتر است آن را غیرفعال کنید، همانطور که در زیر نشان داده شده است:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** قانون جایگزینی اعمال خواهد شد اگر قانون جایگزینی جدول نتواند فونت را پیدا کند. این مکانیسم به طور پیش فرض فعال می شود. Aspose.Words مناسب ترین فونت را با توجه به اطلاعات فونت موجود در یک سند خاص پیدا کنید. این اطلاعات را می توان از **FontInfo** کلاس همانطور که در زیر نشان داده شده است:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      کاربران نمی توانند در جریان کار این ویژگی دخالت کنند مگر اینکه تصمیم به غیرفعال کردن آن در صورت نتایج نامطلوب داشته باشند:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      اگر **FontInfo** برای فونت گمشده در دسترس نیست، سپس روند متوقف می شود.
   1. **DefaultFont** قانون جایگزینی در صورتی که `FontInfo` جایگزینی نیز شکست خورده است. این قانون نیز به طور پیش فرض فعال می شود. طبق این قانون، Aspose.Words تلاش برای استفاده از فونت پیش فرض مشخص شده در [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) مالکیت اگر کاربر فونت پیش فرض خود را انتخاب نکرده باشد، آنگاه "Times New Roman" به عنوان فونت پیش فرض استفاده می شود. این قانون را می توان به عنوان زیر نشان داد:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      برای بررسی فونت پیش فرض فعلی، استفاده:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      برای تنظیم گزینه جایگزین خود، درخواست کنید:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. اگر Aspose.Words قادر به انجام جایگزینی فونت نیست، آن تلاش می کند تا اولین فونت موجود را از منابع فونت موجود دریافت کند.
1. اگر Aspose.Words نمی تواند هیچ فونتی را در میان منابع فونت موجود پیدا کند، این سند را با استفاده از فونت Fanwood رایگان که در داخل جاسازی شده است، ارائه می دهد. Aspose.Words مونتاژ

{{% alert color="primary" %}}

اگر **FontInfo** در دسترس است، قانون جایگزینی *Fontinfo همیشه فونت را حل می کند و قانون فونت پیش فرض را باطل می کند. اگر می خواهید از قاعده فونت پیش فرض استفاده کنید، باید قانون جایگزینی *Fontinfo را غیرفعال کنید. توجه داشته باشید که قانون جایگزینی *FontConfig * در اکثر موارد فونت را حل می کند و در نتیجه تمام قوانین دیگر را نادیده می گیرد.

{{% /alert %}}

## چگونه تشخیص دهیم این فونت جایگزین شد

گاهی اوقات ممکن است مشخص نباشد که چرا طرح سند تغییر کرده است یا چرا برخی از فونت ها به نظر نمی رسد. در چنین مواردی، پیام های هشدار جایگزین فونت که توسط [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) رابط برای نجات می آید. آنها دارند. [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) نوع هشدار و فرمت متن توصیف استاندارد، "Font"<originalfont>" پیدا نشده است. استفاده از "<substitutionfont>به جای آن فونت دلیل: <reason>به دلایل زیر:</reason></substitutionfont></originalfont>

- "نام جایگزین از سند" - برای جایگزینی با [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- جایگزین سفارشی – برای جایگزینی با قاعده پیکربندی فونت
- "جایگزینی جدول" – برای جایگزینی توسط قانون جدول
- "جایگزین اطلاعات سفارشی" – برای جایگزینی توسط قانون اطلاعات فونت
- "جایگزین فونت خطا" – برای جایگزینی به طور پیش فرض
- "اولین فونت موجود" – برای جایگزینی با فونت اول موجود

## دانلود بازی Font FallBack Settings از XML

دو مکانیسم مختلف وجود دارد که در Aspose.Words جایگزینی فونت و سقوط فونت جایگزینی فونت زمانی استفاده می شود که فونت مشخص شده در سند نمی تواند در میان منابع فونت یافت شود زیرا در بخش های بالا شرح داده شده است. مکانیسم سقوط فونت زمانی استفاده می شود که فونت حل شود، اما دارای یک شخصیت خاص نیست. در این مورد، Aspose.Words سعی کنید از یکی از فونت های کشویی برای شخصیت استفاده کنید.

وجود دارد [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) روش هایی که به طور خودکار تنظیمات کشویی را با اسکن فونت های موجود ایجاد می کنند. از آنجا که این روش ممکن است یک تنظیمات نزولی غیر مطلوب ایجاد کند، شما می توانید با استفاده از ویژگی های خواص کاهش فونت را کنترل کنید. [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) کلاس این کلاس تنظیمات مکانیسم کشویی فونت را مشخص می کند. شما می توانید یک نمونه از **FontFallbackSettings** کلاس به شرح زیر:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

به طور مشابه - قاعده جایگزینی جدول *، این مکانیسم از جداول XML برای پیکربندی استفاده می کند. این جداول XML را می توان با روش های زیر بارگیری و ذخیره کرد:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

The The The The The The Aspose.Words آزادی شامل دو جدول است: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*...

The The The The The The *MsOfficeFallbackSetting* جدول یک استراتژی جایگزین را برای طیف وسیعی از شخصیت ها تعریف می کند که شبیه به استراتژی مورد استفاده توسط آن است. Microsoft Word... بنابراین، استراتژی نیاز به نصب دارد Microsoft فونت های اداری *MsOfficeFallbackSetting* می تواند با استفاده از روش زیر فعال شود:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

The The The The The The *NotoFallbackSetting* جدول به ویژه برای استفاده با Google Noto فونت ها (نگاه کنید به بیشتر در مورد Google Noto تنظیمات فونت در بخش بعدی و می تواند به صورت زیر فعال شود:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

مثال کد زیر نشان می دهد که چگونه تنظیمات کشویی فونت را از یک فایل XML بارگیری کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

در مثال کد بالا، فایل XML زیر استفاده می شود:

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

## تنظیمات پیش تعریف شده Font FallBack Google Noto فونت ها

Aspose.Words تنظیمات پیش تعریف شده فونت Downback برای Google Noto فونت ها این ها فونت های رایگان تحت مجوز SIL Open Font هستند که می توانند از آن دانلود شوند. Google Noto فونت ها The The The The The The **FontFallbackSettings** کلاس یک [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) روش این تنظیمات predefinedback را بارگذاری می کند که از آن استفاده می کند. Google Noto فونت هایی که در مثال کد زیر نشان داده شده اند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

فقط فونت های سبک سان نوتو با وزن منظم در تنظیمات پیش تعریف شده استفاده می شوند.

{{% /alert %}}

## جایی که Aspose.Words برای Fonts

Aspose.Words تلاش برای پیدا کردن فونت های TrueType در سیستم فایل به طور خودکار. معمولا می توانید به رفتار پیش فرض متکی باشید Aspose.Words برای پیدا کردن `TrueType` فونت ها، اما گاهی اوقات شما باید پوشه های خود را حاوی فونت های TrueType مشخص کنید. The The The The The The [دانلود موسیقی متن بازی The Punch دانلود بازی Punch Location](/words/fa/java/specify-truetype-fonts-location/) موضوع توضیح می دهد که چگونه و کجا Aspose.Words به دنبال فونت ها و همچنین چگونگی تعیین مکان های فونت خود باشید.

## تفاوت در پردازش فرمت های فونت در Aspose.Words و Microsoft Word

برخی تفاوت ها در پردازش فرمت های فونت در Aspose.Words و Microsoft Word همانطور که در جدول زیر نشان داده شده است:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| فونت های TrueType و OpenType با طرح های TrueType | پشتیبانی | پشتیبانی |
| فونت های OpenType با PostScript | پشتیبانی برای اکثر سناریوها ثبت نام به فرمت های ثابت صفحه مانند PDF و XPS پشتیبانی نمی شود. متن با تصاویر bitmap جایگزین شده است. | پشتیبانی برای اکثر سناریوها، از جمله جاسازی به فرمت های ثابت صفحه. |
| OpenType Font Variations | فقط موارد نامگذاری شده پشتیبانی می شوند. تغییرات مداوم پشتیبانی نمی شود. | حمایت از تنها نمونه پیش فرض موارد نام گذاری شده و تغییرات مداوم پشتیبانی نمی شوند. |
| فونت های Type1 | پشتیبانی در Windows نسخه های قبل از 2013 و در نسخه های MacOS پشتیبانی کاهش می یابد Windows نسخه های شروع شده از سال 2013 | نه حمایت. |

## همچنین ببینید

- [Google Noto فونت ها](https://fonts.google.com/noto) دانلود رایگان فونت های رایگان


