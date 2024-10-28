---
title: إعدادات الخط FallBack من XML في C++
second_title: Aspose.Words ل C++
articleTitle: إعدادات الخط FallBack من XML
linktitle: إعدادات الخط FallBack من XML
description: "يتم استخدام آلية احتياطي الخط عند حل الخط، ولكنها لا تحتوي على حرف معين. في هذه الحالة، Aspose.Words يحاول استخدام أحد الخطوط الاحتياطية للحرف."
type: docs
weight: 14
url: /ar/cpp/font-fallback-settings-from-xml/
---

هناك آليتان مختلفتان تستخدمان في Aspose.Words - استبدال الخط واحتياطي الخط. يتم استخدام استبدال الخط عندما يتعذر العثور على الخط المحدد في المستند بين مصادر الخط كما هو موضح في الأقسام أعلاه. يتم استخدام آلية احتياطي الخط عند حل الخط، ولكنها لا تحتوي على حرف معين. في هذه الحالة، Aspose.Words يحاول استخدام أحد الخطوط الاحتياطية للحرف.

هناك طريقة [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) تقوم تلقائيا بإنشاء الإعدادات الاحتياطية عن طريق مسح الخطوط المتاحة ضوئيا. نظرا لأن هذه الطريقة قد تنتج إعدادا احتياطيا غير مثالي، يمكنك التحكم في السلوك الاحتياطي للخط باستخدام خصائص فئة [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). تحدد هذه الفئة إعدادات آلية تراجع الخط. يمكنك الحصول على مثيل من فئة **FontFallbackSettings** على النحو التالي:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

على غرار *Table substitution rule*، تستخدم هذه الآلية XML جداول للتكوين. يمكن تحميل هذه الجداول XML وحفظها بالطرق التالية:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

يتضمن الإصدار Aspose.Words جدولين: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

يحدد الجدول *MsOfficeFallbackSetting* استراتيجية استبدال لمجموعة من الأحرف، والتي تشبه الإستراتيجية المستخدمة بواسطة Microsoft Word. وبالتالي، تتطلب الاستراتيجية تثبيت Microsoft خطوط المكتب. *MsOfficeFallbackSetting* يمكن تفعيلها باستخدام الطريقة التالية:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

يتم إنشاء الجدول *NotoFallbackSetting* خصيصا للاستخدام مع Google Noto الخطوط (انظر المزيد حول Google Noto إعدادات الخط في القسم التالي) ويمكن تمكينه على النحو التالي:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالية كيفية تحميل إعدادات الخط الاحتياطي من ملف XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

في مثال الكود أعلاه، يتم استخدام الملف XML التالي:

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


