---
title: Pengaturan font FallBack dari XML di C++
second_title: Aspose.Words untuk C++
articleTitle: Pengaturan Fonta FallBack dari XML
linktitle: Pengaturan Fonta FallBack dari XML
description: "Mekanisme fallback Font digunakan saat font diselesaikan, tetapi tidak berisi karakter tertentu. Dalam hal ini, Aspose.Words mencoba menggunakan salah satu font fallback untuk karakter tersebut."
type: docs
weight: 14
url: /id/cpp/font-fallback-settings-from-xml/
---

Ada dua mekanisme berbeda yang digunakan dalam Aspose.Words - Substitusi font dan fallback Font. Penggantian font digunakan ketika font yang ditentukan dalam dokumen tidak dapat ditemukan di antara sumber font seperti yang dijelaskan di bagian di atas. Mekanisme fallback Font digunakan saat font diselesaikan, tetapi tidak berisi karakter tertentu. Dalam hal ini, Aspose.Words mencoba menggunakan salah satu font fallback untuk karakter tersebut.

Ada metode [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) yang secara otomatis membuat pengaturan mundur dengan memindai font yang tersedia. Karena metode ini dapat menghasilkan pengaturan fallback yang tidak optimal, Anda dapat mengontrol perilaku fallback font dengan menggunakan properti kelas [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Kelas ini menentukan pengaturan mekanisme fallback font. Anda bisa mendapatkan instance dari kelas **FontFallbackSettings** sebagai berikut:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Sama halnya dengan *Table substitution rule*, mekanisme ini menggunakan tabel XML untuk konfigurasi. Tabel XML ini dapat dimuat dan disimpan dengan metode berikut:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Rilis Aspose.Words mencakup dua tabel: *MsOfficeFallbackSetting.xml* dan *NotoFallbackSetting.xml*.

Tabel *MsOfficeFallbackSetting* mendefinisikan strategi penggantian untuk rentang karakter, yang mirip dengan strategi yang digunakan oleh Microsoft Word. Dengan demikian, strategi tersebut membutuhkan instalasi font Microsoft Office. *MsOfficeFallbackSetting* dapat diaktifkan menggunakan metode berikut:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabel *NotoFallbackSetting* dibuat khusus untuk digunakan dengan font Google Noto (lihat selengkapnya tentang pengaturan font Google Noto di bagian selanjutnya) dan dapat diaktifkan sebagai berikut:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Contoh kode berikut menunjukkan cara memuat pengaturan fallback font dari file XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Dalam contoh kode di atas, file XML berikut digunakan:

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


