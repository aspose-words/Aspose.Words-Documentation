---
title: แบบอักษรFallBackตั้งแต่XMLในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แบบอักษรFallBackตั้งแต่XML
linktitle: แบบอักษรFallBackตั้งแต่XML
description: "กลไกการสำรองแบบอักษรจะใช้เมื่อแบบอักษรได้รับการแก้ไขแต่ไม่มีอักขระเฉพาะ ในกรณีนี้Aspose.Wordsพยายามใช้แบบอักษรทางเลือกหนึ่งสำหรับอักขระ."
type: docs
weight: 14
url: /th/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

มีสองกลไกที่แตกต่างกันที่ใช้ในAspose.Words-การแทนที่แบบอักษรและทางเลือกแบบอักษร การแทนที่แบบอักษรจะใช้เมื่อแบบอักษรที่ระบุในเอกสารไม่สามารถพบได้ในแหล่งที่มาของ กลไกการสำรองแบบอักษรจะใช้เมื่อแบบอักษรได้รับการแก้ไขแต่ไม่มีอักขระเฉพาะ ในกรณีนี้Aspose.Wordsพยายามใช้แบบอักษรทางเลือกหนึ่งสำหรับอักขระ.

มีวิธีการ[BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/)ที่สร้างการตั้งค่าทางเลือกโดยอัตโนมัติโดยการสแกนแบบอักษรที่มีอยู่ คุณสามารถควบคุมพฤติกรรมแบบอักษรทางเลือกโดยใช้คุณสมบัติของคลาสของ[FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) คลาสนี้ระบุการตั้งค่าของกลไกการย้อนกลับแบบอักษร คุณจะได้รับอินสแตนซ์ของ**FontFallbackSettings**ชั้นดังนี้:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

ในทำนองเดียวกันกับ*Table substitution rule*กลไกนี้ใช้ตารางXMLสำหรับการกำหนดค่า ตารางเหล่านี้XMLสามารถโหลดและบันทึกด้วยวิธีการต่อไปนี้:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

รุ่นAspose.Wordsประกอบด้วยสองตาราง:*MsOfficeFallbackSetting.xml*และ*NotoFallbackSetting.xml*.

ตาราง*MsOfficeFallbackSetting*กำหนดกลยุทธ์การแทนที่สำหรับช่วงของอักขระซึ่งคล้ายกับกลยุทธ์ที่ใช้โดยMicrosoft Word ดังนั้นกลยุทธ์ที่ต้องติดตั้งแบบอักษรสำนักงานMicrosoft *MsOfficeFallbackSetting*สามารถเปิดใช้งานได้โดยใช้วิธีการต่อไปนี้:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

ตาราง*NotoFallbackSetting*ถูกสร้างขึ้นโดยเฉพาะสำหรับใช้กับแบบอักษรGoogle Noto(ดูข้อมูลเพิ่มเติมเกี่ยวกับGoogle Notoการตั้งค่าแบบอักษรในส่วนถัดไป)และสามารถเปิดใช้งานได้ดังนี้:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้สาธิตวิธีการโหลดการตั้งค่าแบบอักษรสำรองจากแฟ้มXML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

ในตัวอย่างรหัสข้างต้นใช้แฟ้มXMLต่อไปนี้:

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


