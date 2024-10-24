---
title: 폰트 FallBack 에서 설정 XML 그 안에 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 폰트 FallBack 에서 설정 XML
linktitle: 폰트 FallBack 에서 설정 XML
description: "글꼴 대체 메커니즘은 글꼴이 확인될 때 사용되지만 특정 문자를 포함하지 않습니다. 이 경우, Aspose.Words 문자에 대 한 대체 글꼴 중 하나를 사용 하려고 합니다."
type: docs
weight: 14
url: /ko/cpp/font-fallback-settings-from-xml/
---

두 가지 다른 메커니즘이 사용되고 있습니다. Aspose.Words -글꼴 대체 및 글꼴 대체. 글꼴 대체는 문서에 지정된 글꼴이 위의 섹션에서 설명한 것처럼 글꼴 소스에서 찾을 수 없을 때 사용됩니다. 글꼴 대체 메커니즘은 글꼴이 확인될 때 사용되지만 특정 문자를 포함하지 않습니다. 이 경우, Aspose.Words 문자에 대 한 대체 글꼴 중 하나를 사용 하려고 합니다.

이 있습니다 [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) 사용 가능한 글꼴을 스캔하여 대체 설정을 자동으로 빌드하는 메서드입니다. 이 메서드는 최적이 아닌 대체 설정을 생성할 수 있으므로 이 메서드의 속성을 사용하여 글꼴 대체 동작을 제어할 수 있습니다 [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) 수업 이 클래스는 글꼴 대체 메커니즘의 설정을 지정합니다. 당신은 인스턴스를 얻을 수 있습니다 **FontFallbackSettings** 다음과 같이 클래스:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

마찬가지로 *Table substitution rule*,이 메커니즘은 XML 구성을 위한 테이블. 이것들 XML 다음 방법으로 테이블을 로드하고 저장할 수 있습니다:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

그 Aspose.Words 릴리스는 두 개의 테이블을 포함: *MsOfficeFallbackSetting.xml* 그리고 *NotoFallbackSetting.xml*.

그 *MsOfficeFallbackSetting* 표는 문자의 범위에 대한 대체 전략을 정의합니다. Microsoft Word. 따라서 이 전략은 Microsoft 사무실 글꼴. *MsOfficeFallbackSetting* 다음 방법을 사용하여 활성화 할 수 있습니다:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

그 *NotoFallbackSetting* 테이블은 특히 사용을 위해 만들어집니다 Google Noto 글꼴(자세한 정보 참조 Google Noto 다음 섹션의 글꼴 설정)과 다음과 같이 활성화 할 수 있습니다:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

다음 코드 예제에서는 글꼴 대체 설정을 로드하는 방법을 보여 줍니다 XML 파일:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

위의 코드 예제에서는 다음과 같습니다 XML 파일 사용:

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


