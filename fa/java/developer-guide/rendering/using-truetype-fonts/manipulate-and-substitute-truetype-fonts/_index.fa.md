---
title: دستکاری و جایگزینی فونت های TrueType
second_title: Aspose.Words برای Java
articleTitle: دستکاری و جایگزینی فونت های TrueType
linktitle: دستکاری و جایگزینی فونت های TrueType
description: "Aspose.Words برای Java می تواند فونت های صحیح TrueType را در سند حاصل جاسازی کند تا اطمینان حاصل شود که به طور دقیق نمایش داده می شود یا برای جایگزینی مناسب فونت جستجو می کند یا از مکانیزم فونت پشتیبان استفاده می کند."
type: docs
weight: 10
url: /fa/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words برای کارهای مختلف، از جمله ارائه اسناد به فرمت های صفحه ثابت، به عنوان مثال، PDF یا XPS، به فونت های TrueType نیاز دارد. هنگامی که Aspose.Words یک سند را ارائه می دهد، باید جاسازی و جاسازی زیر مجموعه ای از فونت های TrueType را در سند حاصل انجام دهد، که یک عمل عادی در طول تولید سند است، از جمله فرمت های محبوب PDF یا XPS. این تضمین می کند که سند برای هر بیننده یکسان به نظر می رسد. علاوه بر این، مشخصات XPS مستلزم این است که فونت ها همیشه در سند جاسازی شوند.

برای اطمینان از اینکه Aspose.Words کاراکترها را به طور دقیق اندازه گیری می کند و با موفقیت فونت های مربوطه را جاسازی می کند، باید شرایط زیر را برآورده کند:

1. Aspose.Words باید بتواند فایل های فونت TrueType را در سیستم پیدا و دسترسی داشته باشد.
1. باید TrueType فونت کافی برای Aspose.Words موجود باشد، ترجیحاً با نام خانوادگی فونت‌هایی که در سند استفاده می‌شود.

توجه داشته باشید که فونت موجود در سند نشان دهنده یک موجودیت است، مانند نام خانوادگی، سبک، اندازه، رنگ، که با موجودیت `TrueType` فونت (فونت فیزیکی) متفاوت است. Aspose.Words فونت را در سند به یک فونت فیزیکی در مرحله ای از پردازش حل می کند. این کار وظایف خاصی را امکان پذیر می کند، معمولا وظیفه محاسبه اندازه متن در طول ساخت طرح و جاسازی/زیر تنظیم به فرمت های صفحه ثابت است. تعدادی از وظایف کمتر محبوب دیگر، مانند حل فونت و جایگزینی در هنگام بارگذاری HTML یا جاسازی/زیر تنظیم به برخی از فرمت های جریان، نیز فعال هستند.

## مسائل مربوط به دستکاری فونت و عملکرد

تمام مکانیسم های دستکاری فونت موجود در کلاس [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) وجود دارد. این کلاس مسئول گرفتن فونت ها در منابع فونت تعریف شده و همچنین برای فرآیند جایگزینی فونت است، همانطور که در زیر توضیح داده شده است.

فونت ها در چند مرحله تجزیه می شوند:

1. به دست آوردن اطلاعات برای فونت، حل از تمام فونت های موجود.
1. تجزیه فونت های حل شده برای دریافت گلیف ها و معیارهای موجود (افقی و عمودی).
1. تجزیه فونت های حل شده برای جاسازی و زیر تنظیم.

هنگامی که Aspose.Words برای اولین بار با یک فونت در سند روبرو می شود، سعی می کند اطلاعات اساسی فونت مانند نام کامل فونت، نام خانوادگی، نسخه، سبک را از فایل های فونت واقع در هر منبع فونت بدست آورد. پس از بازیابی تمام فونت ها، Aspose.Words از این جزئیات برای پیدا کردن داده های فونت مورد نیاز یا جایگزینی مناسب برای فونت درخواست شده استفاده می کند.

از آنجا که روش توصیف شده در بالا وقت گیر است، ممکن است بر عملکرد برنامه در اولین راه اندازی آن تأثیر منفی بگذارد. با این حال، هر نمونه از **FontSettings** حافظه پنهان خود را دارد که می تواند زمان پردازش اسناد بعدی را کاهش دهد. به عنوان مثال، می توانید نمونه ای از کلاس **FontSettings** را بین اسناد مختلف به اشتراک بگذارید، که به شما امکان می دهد بارگیری اسناد را تسریع کنید. مثال زیر این را نشان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

در صورتی که **FontSettings** به طور صریح تعریف نشده باشد، Aspose.Words از نمونه پیش فرض **FontSettings** استفاده می کند. این نمونه نیز به طور خودکار بین اسناد به اشتراک گذاشته می شود و می تواند به شرح زیر استخراج شود:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

اگر مطمئن هستید که تمام اسناد پردازش نیاز به تنظیمات فونت یکسان دارند، توصیه می شود که نمونه پیش فرض **FontSettings** را تنظیم و استفاده کنید. فرض کنید که شما نیاز به استفاده از همان منابع فونت برای تمام اسناد خود را. در این مورد، شما فقط می توانید نمونه پیش فرض را به شرح زیر تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

سفارشی **FontSettings** اولویت بالاتری نسبت به نمونه پیش فرض دارد.

{{% /alert %}}

## دسترسی به فونت و جایگزینی آن

یک متن در یک سند را می توان با فونت های مختلف مانند Arial، Times New Roman، Verdana و دیگران فرمت کرد. هنگامی که Aspose.Words یک سند را ارائه می دهد، سعی می کند فونت هایی را که در سند مشخص شده اند انتخاب کند.

با این حال، شرایطی وجود دارد که فونت دقیق را نمی توان یافت و Aspose.Words باید آن را به جای یک فونت مشابه جایگزین کند. Aspose.Words فونت را با توجه به فرآیند زیر انتخاب می کند:

1. Aspose.Words سعی می کند یک فونت را در میان منابع فونت موجود با نام دقیق فونت پیدا کند.
1. Aspose.Words سعی می کند فونت مورد نیاز را در میان فونت های جاسازی شده در سند اصلی پیدا کند. برخی از فرمت های سند مانند DOCX می توانند شامل فونت های جاسازی شده باشند.
1. اگر Aspose.Words نتواند فونت مورد نیاز را با نام دقیق مطابقت پیدا کند و ویژگی [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) برای این فونت تعریف شده باشد، پس Aspose.Words فونت تعریف شده با **AltName** را از کلاس [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) پیدا می کند که اطلاعات فونت را مشخص می کند.
1. اگر Aspose.Words نتواند فونت تعریف شده را پیدا کند، و **AltName** نیز تعریف نشده باشد، قوانین جایگزینی فونت به صورت یک به یک اعمال می شود، همانطور که در زیر توضیح داده شده است (هنگامی که جایگزینی مناسب پیدا می شود، فرآیند جایگزینی فونت متوقف می شود و مرحله بعدی اجرا نمی شود):
   1. Aspose.Words سعی خواهد کرد که تنظیمات فونت OS را اعمال کند، اگر آنها در دسترس باشند، با استفاده از ابزار `FontConfig`. این ویژگی غیرWindows باید با FontConfig سازگار OS استفاده شود. تقریبا هر OS مبتنی بر یونیکس در حال حاضر دارای یک کتابخانه `FontConfig` است که برای ارائه پیکربندی فونت، سفارشی سازی و دسترسی به برنامه های کاربردی در سراسر سیستم طراحی شده است. در غیر این صورت، این کتابخانه می تواند به راحتی توسط کاربر نصب شود.<br>
      Aspose.Words می داند که چگونه داده ها را پرس و جو کند و نتایج FontConfig را برای اهداف خود تفسیر کند. به طور پیش فرض، ابزار `FontConfig` غیرفعال است. شما می توانید آن را به صورت زیر فعال کنید:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. مرحله بعدی یک مکانیسم ساده اما فوق العاده قدرتمند به نام [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/) است. به طور پیش فرض، این ویژگی فعال است و برای هر OS در دسترس است. Aspose.Words از XML جدول استفاده می کند که قوانین اساسی جایگزینی را برای OS مختلف تعریف می کند. طبق قانون جایگزینی جدول، لیست نام فونت های جایگزین استفاده خواهد شد.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - یک فونت که باید جایگزین شود، SubstituteFonts - لیست انواع جایگزین، با یک کاما جدا شده است. اولین فونت موجود برای جایگزینی استفاده می شود.<br>
      ویژگی اصلی این قانون توانایی بارگذاری جداول جایگزینی خود است، همانطور که در مثال زیر نشان داده شده است:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      شما می توانید جدول موجود را از شیشه به عنوان پایه بگیرید یا آن را به صورت برنامه ریزی شده به روش زیر ذخیره کنید:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      علیرغم انعطاف پذیری این مکانیزم، مواردی وجود دارد که بهتر است آن را غیرفعال کنید، همانطور که در زیر نشان داده شده است:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. اگر قانون جایگزینی جدول نتواند فونت را پیدا کند، قانون جایگزینی **FontInfo** اعمال خواهد شد. این مکانیزم به طور پیش فرض فعال است. Aspose.Words مناسب ترین فونت را با توجه به اطلاعات فونت موجود در یک سند خاص پیدا می کند. این اطلاعات را می توان از کلاس **FontInfo** به عنوان زیر نشان داده شده است:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      کاربران نمی توانند در جریان کار این ویژگی دخالت کنند مگر اینکه تصمیم بگیرند در صورت نتایج نامطلوب آن را غیرفعال کنند:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      اگر **FontInfo** برای فونت گمشده در دسترس نباشد، فرآیند متوقف می شود.
   1. **DefaultFont** قانون جایگزینی در صورتی اعمال می شود که جایگزین `FontInfo` نیز شکست خورده باشد. این قانون به طور پیش فرض نیز فعال است. طبق این قانون، Aspose.Words سعی خواهد کرد از فونت پیش فرض مشخص شده در ویژگی [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) استفاده کند. اگر کاربر فونت پیش فرض خود را انتخاب نکرده باشد، "Times New Roman" به عنوان فونت پیش فرض استفاده می شود. این قانون را می توان غیرفعال کرد همانطور که در زیر نشان داده شده است:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      برای بررسی فونت پیش فرض فعلی، از:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      برای راه اندازی گزینه جایگزین خود، درخواست کنید:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. اگر Aspose.Words قادر به انجام تعویض فونت نباشد، سعی می کند اولین فونت موجود را از منابع فونت موجود دریافت کند.
1. در نهایت، اگر Aspose.Words نتواند فونت هایی را در میان منابع فونت موجود پیدا کند، سند را با استفاده از فونت رایگان Fanwood که در مجموعه Aspose.Words جاسازی شده است، ارائه می دهد.

{{% alert color="primary" %}}

اگر **FontInfo** در دسترس باشد ،*FontInfo substitution rule* همیشه فونت را حل می کند و قانون فونت پیش فرض را رد می کند. اگر می خواهید از قانون فونت پیش فرض استفاده کنید، باید *FontInfo substitution rule* را غیرفعال کنید. توجه داشته باشید که *FontConfig substitution rule* در بیشتر موارد فونت را حل می کند و بنابراین تمام قوانین دیگر را رد می کند.

{{% /alert %}}

## چگونه تشخیص دهیم که فونت جایگزین شده است

گاهی اوقات، ممکن است مشخص نباشد که چرا طرح سند تغییر کرده است، یا چرا برخی از فونت ها به عنوان انتظار نمی رود. در چنین مواردی، پیام های هشدار جایگزینی فونت که توسط رابط [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) اجرا می شوند، نجات می یابند. آنها نوع هشدار [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) و فرمت متن توصیف استاندارد، "فونت '<OriginalFont>' پیدا نشده است. به جای آن از فونت "<SubstitutionFont> " استفاده کنید. دلیل: <Reason>"، با دلایل زیر:

- "نام جایگزین از سند" - برای جایگزینی با [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "جایگزینی fontconfig" - برای جایگزینی با قانون پیکربندی فونت
- "تعویض جدول – - برای جایگزینی با قانون جدول
- "جایگزینی اطلاعات فونت" - برای جایگزینی با قانون اطلاعات فونت
- "تعویض فونت پیش فرض – - برای جایگزینی با قانون فونت پیش فرض
- "اولین فونت موجود – - برای جایگزینی با اولین فونت موجود

## تنظیمات فونت FallBack از XML

دو مکانیسم مختلف در Aspose.Words استفاده می شود - جایگزینی فونت و فونت پشتیبان. جایگزینی فونت زمانی استفاده می شود که فونت مشخص شده در سند در میان منابع فونت یافت نشود، همانطور که در بخش های فوق توضیح داده شده است. مکانیزم فونت پشتیبان زمانی استفاده می شود که فونت حل شود، اما شامل یک کاراکتر خاص نیست. در این حالت، Aspose.Words سعی می کند از یکی از فونت های پشتیبان برای شخصیت استفاده کند.

یک روش [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) وجود دارد که به طور خودکار تنظیمات پشتیبان را با اسکن فونت های موجود ایجاد می کند. از آنجا که این روش ممکن است یک تنظیم پشتیبان غیر بهینه ایجاد کند، می توانید رفتار پشتیبان فونت را با استفاده از خواص کلاس [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) کنترل کنید. این کلاس تنظیمات مکانیزم فونت را مشخص می کند. شما می توانید یک نمونه از کلاس **FontFallbackSettings** را به شرح زیر دریافت کنید:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

به طور مشابه با *Table substitution rule*، این مکانیزم از جداول XML برای پیکربندی استفاده می کند. این جداول XML را می توان با روش های زیر بارگذاری و ذخیره کرد:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

نسخه Aspose.Words شامل دو جدول است: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

جدول *MsOfficeFallbackSetting* یک استراتژی جایگزین برای طیف وسیعی از کاراکترها را تعریف می کند که شبیه به استراتژی مورد استفاده Microsoft Word است. بنابراین، استراتژی نیاز به نصب فونت های اداری Microsoft دارد. *MsOfficeFallbackSetting* را می توان با استفاده از روش زیر فعال کرد:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

جدول *NotoFallbackSetting* به ویژه برای استفاده با فونت های Google Noto ایجاد شده است (در بخش بعدی درباره تنظیمات فونت Google Noto بیشتر ببینید) و می تواند به شرح زیر فعال شود:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

مثال کد زیر نشان می دهد که چگونه تنظیمات فونت را از یک فایل XML بارگذاری کنید:

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

## فونت از پیش تعریف شده FallBack تنظیمات برای فونت های Google Noto

Aspose.Words تنظیمات فونت از پیش تعریف شده برای فونت های Google Noto را فراهم می کند. این فونت های رایگان تحت مجوز SIL Open Font License هستند که می توانند از Google Noto fonts دانلود شوند. کلاس **FontFallbackSettings** یک روش [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) را فراهم می کند. این تنظیمات از پیش تعریف شده را بارگذاری می کند که از فونت های Google Noto استفاده می کنند همانطور که در مثال کد زیر نشان داده شده است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

فقط فونت های Noto بدون سبک با وزن منظم در تنظیمات از پیش تعریف شده استفاده می شود.

{{% /alert %}}

## جایی که Aspose.Words به دنبال فونت ها است

Aspose.Words تلاش می کند تا فونت های TrueType را به طور خودکار در سیستم فایل پیدا کند. معمولا برای پیدا کردن فونت های `TrueType` می توانید به رفتار پیش فرض Aspose.Words تکیه کنید، اما گاهی اوقات باید پوشه های خود را که حاوی فونت های TrueType هستند مشخص کنید. این [مکان فونت های TrueType را مشخص کنید](/words/java/specify-truetype-fonts-location/) موضوع توضیح می دهد که چگونه و کجا Aspose.Words به دنبال فونت ها است و همچنین چگونه مکان های فونت خود را مشخص کنید.

## تفاوت در پردازش فرمت های فونت در Aspose.Words و Microsoft Word

در پردازش فرمت های فونت در Aspose.Words و Microsoft Word تفاوت هایی وجود دارد که در جدول زیر نشان داده شده است:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| فونت های TrueType و فونت های OpenType با خطوط TrueType | پشتیبانی می شود. | پشتیبانی می شود. |
| OpenType فونت با PostScript outlines | برای اکثر سناریوها پشتیبانی می شود. جاسازی به فرمت های صفحه ثابت مانند PDF و XPS پشتیبانی نمی شود. متن با تصاویر بیت مپ جایگزین می شود. | برای اکثر سناریوها پشتیبانی می شود، از جمله جاسازی به فرمت های صفحه ثابت. |
| OpenType تغییرات فونت | فقط نمونه های نامگذاری شده پشتیبانی می شوند. تغییرات مداوم پشتیبانی نمی شود. | برای تنها نمونه پیش فرض پشتیبانی می شود. نمونه های نامگذاری شده و تغییرات مداوم پشتیبانی نمی شوند. |
| فونت های تایپ 1 | در نسخه های Windows قبل از سال 2013 و در نسخه های MacOS پشتیبانی می شود. پشتیبانی از نسخه های Windows از سال 2013 شروع می شود. | پشتیبانی نمی شود. |

## بایگانی برچسب برای:

- [Google Noto فونت ها](https://fonts.google.com/noto) برای دانلود فونت های رایگان


