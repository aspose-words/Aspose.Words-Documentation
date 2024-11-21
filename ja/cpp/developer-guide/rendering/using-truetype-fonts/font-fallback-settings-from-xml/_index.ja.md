---
title: C++のXMLからのフォントFallBack設定
second_title: C++の場合Aspose.Words
articleTitle: XMLからのフォントFallBack設定
linktitle: XMLからのフォントFallBack設定
description: "フォントフォールバックメカニズムは、フォントが解決されたときに使用されますが、特定の文字が含まれていません。 この場合、Aspose.Wordsはその文字にフォールバックフォントのいずれかを使用しようとします。"
type: docs
weight: 14
url: /ja/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Aspose.Wordsには、フォント置換とフォントフォールバックという二つの異なるメカニズムが使用されています。 フォント置換は、上記のセクションで説明したように、文書で指定されたフォントがフォントソース間で見つからなかった場合に使用されます。 フォントフォールバックメカニズムは、フォントが解決されたときに使用されますが、特定の文字が含まれていません。 この場合、Aspose.Wordsはその文字にフォールバックフォントのいずれかを使用しようとします。

利用可能なフォントをスキャンしてフォールバック設定を自動的に構築する[BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/)メソッドがあります。 このメソッドは最適ではないフォールバック設定を生成する可能性があるため、[FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings)クラスのプロパティを使用してフォントフォールバックの動作を制 このクラスは、フォントフォールバックメカニズムの設定を指定します。 次のように**FontFallbackSettings**クラスのインスタンスを取得できます:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

*Table substitution rule*と同様に、このメカニズムは構成にXMLテーブルを使用します。 これらのXMLテーブルは、次の方法でロードおよび保存できます:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Wordsリリースには、*MsOfficeFallbackSetting.xml*と*NotoFallbackSetting.xml*の二つのテーブルが含まれています。

*MsOfficeFallbackSetting*テーブルは、Microsoft Wordで使用される戦略と同様の文字範囲の置換戦略を定義します。 したがって、戦略はMicrosoft Officeフォントのインストールを必要とします。 *MsOfficeFallbackSetting*は、次の方法を使用してアクティブにすることができます:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting*テーブルは、Google Notoフォントで使用するために特別に作成されており（次のセクションのGoogle Notoフォント設定の詳細を参照）、次のように有効にできます:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

次のコード例は、XMLファイルからフォントフォールバック設定を読み込む方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

上記のコード例では、次のXMLファイルが使用されています:

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


