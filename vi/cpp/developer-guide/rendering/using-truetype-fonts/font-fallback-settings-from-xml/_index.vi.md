---
title: Phông Chữ FallBack Cài đặt từ XML trong C++
second_title: Aspose.Words cho C++
articleTitle: Phông Chữ FallBack Cài đặt từ XML
linktitle: Phông Chữ FallBack Cài đặt từ XML
description: "Cơ chế dự phòng Phông Chữ được sử dụng khi phông chữ được giải quyết, nhưng nó không chứa một ký tự cụ thể. Trong trường hợp này, Aspose.Words cố gắng sử dụng một trong các phông chữ dự phòng cho ký tự."
type: docs
weight: 14
url: /vi/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Có hai cơ chế khác nhau được sử dụng trong Aspose.Words - Thay Thế Phông chữ và dự phòng Phông chữ. Thay thế phông chữ được sử dụng khi không thể tìm thấy phông chữ được chỉ định trong tài liệu trong số các nguồn phông chữ như được mô tả trong các phần trên. Cơ chế dự phòng Phông Chữ được sử dụng khi phông chữ được giải quyết, nhưng nó không chứa một ký tự cụ thể. Trong trường hợp này, Aspose.Words cố gắng sử dụng một trong các phông chữ dự phòng cho ký tự.

Có một phương thức [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) tự động xây dựng cài đặt dự phòng bằng cách quét các phông chữ có sẵn. Vì phương thức này có thể tạo ra cài đặt dự phòng không tối ưu, bạn có thể kiểm soát hành vi dự phòng phông chữ bằng cách sử dụng các thuộc tính của lớp [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Lớp này chỉ định cài đặt của cơ chế dự phòng phông chữ. Bạn có thể nhận được một thể hiện của lớp **FontFallbackSettings** như sau:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Tương tự như *Table substitution rule*, cơ chế này sử dụng các bảng XML để cấu hình. Các bảng XML này có thể được tải và lưu bằng các phương thức sau:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Bản phát hành Aspose.Words bao gồm hai bảng: *MsOfficeFallbackSetting.xml* và *NotoFallbackSetting.xml*.

Bảng *MsOfficeFallbackSetting* xác định chiến lược thay thế cho một loạt các ký tự, tương tự như chiến lược được sử dụng bởi Microsoft Word. Do đó, chiến lược yêu cầu cài đặt phông Chữ Microsoft Office. *MsOfficeFallbackSetting* có thể được kích hoạt bằng phương pháp sau:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Bảng *NotoFallbackSetting* được tạo đặc biệt để sử dụng với phông chữ Google Noto (xem thêm về cài đặt phông chữ Google Noto trong phần tiếp theo) và có thể được bật như sau:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Ví dụ mã sau đây trình bày cách tải cài đặt dự phòng phông chữ từ tệp XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Trong ví dụ mã trên, tệp XML sau được sử dụng:

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


