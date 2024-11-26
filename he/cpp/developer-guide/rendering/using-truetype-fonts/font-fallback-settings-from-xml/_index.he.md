---
title: גופן FallBack הגדרות מ XML ב C++
second_title: Aspose.Words עבור C++
articleTitle: גופן FallBack הגדרות מ XML
linktitle: גופן FallBack הגדרות מ XML
description: "מנגנון החזרה של הגופן משמש כאשר הגופן נפתר, אך הוא אינו מכיל תו ספציפי. במקרה זה, Aspose.Words מנסה להשתמש באחד מגופני החזרה עבור התו."
type: docs
weight: 14
url: /he/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

ישנם שני מנגנונים שונים המשמשים ב Aspose.Words - החלפת גופן ו נפילה בגופן. החלפת גופן משמשת כאשר לא ניתן היה למצוא את הגופן שצוין במסמך בין מקורות הגופן כפי שתואר בסעיפים לעיל. מנגנון החזרה של הגופן משמש כאשר הגופן נפתר, אך הוא אינו מכיל תו ספציפי. במקרה זה, Aspose.Words מנסה להשתמש באחד מגופני החזרה עבור התו.

יש שיטה [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) שבונה אוטומטית את הגדרות החזרה על ידי סריקת גופנים זמינים. מכיוון ששיטה זו עשויה לייצר הגדרת החזרה לא אופטימלית, ניתן לשלוט בהתנהגות החזרה של הגופן באמצעות המאפיינים של הכיתה [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). מחלקה זו מציינת הגדרות של מנגנון החזרה של הגופן. אתה יכול לקבל מופע של הכיתה **FontFallbackSettings** כדלקמן:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

בדומה ל - *Table substitution rule*, מנגנון זה משתמש בטבלאות XML עבור תצורה. ניתן לטעון ולשמור טבלאות אלה XML בשיטות הבאות:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

המהדורה Aspose.Words כוללת שתי טבלאות: *MsOfficeFallbackSetting.xml* ו *NotoFallbackSetting.xml*.

ה *MsOfficeFallbackSetting* טבלה מגדירה אסטרטגיית החלפה לטווח תווים, הדומה לאסטרטגיה בה השתמש Microsoft Word. לפיכך, האסטרטגיה מחייבת התקנה של Microsoft גופנים משרדיים. *MsOfficeFallbackSetting* ניתן להפעיל בשיטה הבאה:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

הטבלה *NotoFallbackSetting* נוצרת במיוחד לשימוש עם Google Noto גופנים (ראה עוד על Google Noto הגדרות גופן בסעיף הבא) וניתן להפעיל אותה באופן הבא:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

דוגמת הקוד הבאה מדגימה כיצד לטעון את הגדרות החזרה של הגופן מקובץ XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

בדוגמה של הקוד לעיל, הקובץ XML הבא משמש:

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


