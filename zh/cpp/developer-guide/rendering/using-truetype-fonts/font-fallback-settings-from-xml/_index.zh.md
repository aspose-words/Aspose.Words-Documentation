---
title: C++中XML的字体FallBack设置
second_title: Aspose.Words对于C++
articleTitle: 字体FallBack从XML设置
linktitle: 字体FallBack从XML设置
description: "字体回退机制在字体解析时使用，但不包含特定字符。 在这种情况下，Aspose.Words尝试使用字符的后备字体之一。"
type: docs
weight: 14
url: /zh/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words中使用了两种不同的机制-字体替换和字体回退。 字体替换在文档中指定的字体在字体源中找不到时使用，如上面部分所述。 字体回退机制在字体解析时使用，但不包含特定字符。 在这种情况下，Aspose.Words尝试使用字符的后备字体之一。

有一个[BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/)方法，通过扫描可用字体自动构建回退设置。 由于此方法可能会产生非最佳回退设置，因此您可以使用[FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings)类的属性来控制字体回退行为。 此类指定字体回退机制的设置。 您可以获取**FontFallbackSettings**类的实例，如下所示:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

与*Table substitution rule*类似，此机制使用XML表进行配置。 可以使用以下方法加载和保存这些XML表:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words版本包括两个表：*MsOfficeFallbackSetting.xml*和*NotoFallbackSetting.xml*。

*MsOfficeFallbackSetting*表定义了一系列字符的替换策略，类似于Microsoft Word使用的策略。 因此，该策略需要安装Microsoft Office字体。 *MsOfficeFallbackSetting*可以使用以下方法激活:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting*表是专门为与Google Noto字体一起使用而创建的（请参阅下一节中有关Google Noto字体设置的更多信息），可以按如下方式启用:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

下面的代码示例演示如何从XML文件加载字体回退设置:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

在上面的代码示例中，使用了以下XML文件:

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


