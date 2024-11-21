---
title: Font FallBack Ayarları XML 'den C++'ye
second_title: Aspose.Words için C++
articleTitle: Font FallBack XML'den Ayarlar
linktitle: Font FallBack XML'den Ayarlar
description: "Yazı tipi çözümlendiğinde yazı tipi geri dönüş mekanizması kullanılır, ancak belirli bir karakter içermez. Bu durumda, Aspose.Words karakter için geri dönüş yazı tiplerinden birini kullanmaya çalışır."
type: docs
weight: 14
url: /tr/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words 'da kullanılan iki farklı mekanizma vardır - Yazı tipi değiştirme ve Yazı Tipi geri dönüşü. Yazı tipi değiştirme, belgede belirtilen yazı tipi, yukarıdaki bölümlerde açıklandığı gibi yazı tipi kaynakları arasında bulunamadığında kullanılır. Yazı tipi çözümlendiğinde yazı tipi geri dönüş mekanizması kullanılır, ancak belirli bir karakter içermez. Bu durumda, Aspose.Words karakter için geri dönüş yazı tiplerinden birini kullanmaya çalışır.

Kullanılabilir yazı tiplerini tarayarak geri dönüş ayarlarını otomatik olarak oluşturan bir [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) yöntemi vardır. Bu yöntem optimal olmayan bir geri dönüş ayarı oluşturabileceğinden, [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) sınıfının özelliklerini kullanarak yazı tipi geri dönüş davranışını kontrol edebilirsiniz. Bu sınıf, font geri dönüş mekanizmasının ayarlarını belirtir. **FontFallbackSettings** sınıfının bir örneğini aşağıdaki gibi alabilirsiniz:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

*Table substitution rule* 'a benzer şekilde, bu mekanizma yapılandırma için XML tabloları kullanır. Bu XML tablolar aşağıdaki yöntemlerle yüklenebilir ve kaydedilebilir:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words sürümü iki tablo içerir: *MsOfficeFallbackSetting.xml* ve *NotoFallbackSetting.xml*.

*MsOfficeFallbackSetting* tablosu, Microsoft Word tarafından kullanılan stratejiye benzer bir karakter aralığı için bir değiştirme stratejisi tanımlar. Bu nedenle, strateji Microsoft Office yazı tiplerinin yüklenmesini gerektirir. *MsOfficeFallbackSetting* aşağıdaki yöntem kullanılarak etkinleştirilebilir:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting* tablosu özellikle Google Noto yazı tipleriyle kullanılmak üzere oluşturulmuştur (sonraki bölümdeki Google Noto yazı tipi ayarları hakkında daha fazla bilgi için bkz.) ve aşağıdaki gibi etkinleştirilebilir:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Aşağıdaki kod örneği, bir XML dosyasından font geri dönüş ayarlarının nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Yukarıdaki kod örneğinde, aşağıdaki XML dosyası kullanılır:

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


