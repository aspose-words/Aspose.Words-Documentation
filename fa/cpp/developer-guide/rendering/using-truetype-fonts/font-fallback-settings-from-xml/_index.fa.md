---
title: فونت FallBack تنظیمات از XML در C++
second_title: Aspose.Words برای C++
articleTitle: تنظیمات فونت FallBack از XML
linktitle: تنظیمات فونت FallBack از XML
description: "مکانیزم فونت پشتیبان زمانی استفاده می شود که فونت حل شود، اما شامل یک کاراکتر خاص نیست. در این حالت، Aspose.Words سعی می کند از یکی از فونت های پشتیبان برای شخصیت استفاده کند."
type: docs
weight: 14
url: /fa/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

دو مکانیسم مختلف در Aspose.Words استفاده می شود - جایگزینی فونت و فونت پشتیبان. جایگزینی فونت زمانی استفاده می شود که فونت مشخص شده در سند در میان منابع فونت یافت نشود، همانطور که در بخش های فوق توضیح داده شده است. مکانیزم فونت پشتیبان زمانی استفاده می شود که فونت حل شود، اما شامل یک کاراکتر خاص نیست. در این حالت، Aspose.Words سعی می کند از یکی از فونت های پشتیبان برای شخصیت استفاده کند.

یک روش [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) وجود دارد که به طور خودکار تنظیمات پشتیبان را با اسکن فونت های موجود ایجاد می کند. از آنجا که این روش ممکن است یک تنظیم پشتیبان غیر بهینه ایجاد کند، می توانید رفتار پشتیبان فونت را با استفاده از خواص کلاس [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) کنترل کنید. این کلاس تنظیمات مکانیزم فونت را مشخص می کند. شما می توانید یک نمونه از کلاس **FontFallbackSettings** را به شرح زیر دریافت کنید:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

به طور مشابه با *Table substitution rule*، این مکانیزم از جداول XML برای پیکربندی استفاده می کند. این جداول XML را می توان با روش های زیر بارگذاری و ذخیره کرد:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

نسخه Aspose.Words شامل دو جدول است: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

جدول *MsOfficeFallbackSetting* یک استراتژی جایگزین برای طیف وسیعی از کاراکترها را تعریف می کند که شبیه به استراتژی مورد استفاده Microsoft Word است. بنابراین، استراتژی نیاز به نصب فونت های اداری Microsoft دارد. *MsOfficeFallbackSetting* را می توان با استفاده از روش زیر فعال کرد:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

جدول *NotoFallbackSetting* به ویژه برای استفاده با فونت های Google Noto ایجاد شده است (در بخش بعدی درباره تنظیمات فونت Google Noto بیشتر ببینید) و می تواند به شرح زیر فعال شود:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

مثال کد زیر نشان می دهد که چگونه تنظیمات فونت را از یک فایل XML بارگذاری کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

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


