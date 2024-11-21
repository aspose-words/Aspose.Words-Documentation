---
title: אמת אמיתית סוגפונטים
second_title: Aspose.Words עבור Python via .NET
articleTitle: Manipulate and Substitute TrueType Fonts
linktitle: Manipulate and Substitute TrueType Fonts
description: "Aspose.Words עבור Python via .NET יכול להטביע את הגופנים הנכונים של TrueType לתוך המסמך וכתוצאה מכך כדי להבטיח שהוא מציג במדויק. אם גופן או דמות מסוימת אינו זמין, Aspose.Words חיפושים להחלפת גופן מתאימה או משתמשים במנגנון Fallback של פונט."
type: docs
weight: 10
url: /he/python-net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words אמת דורשת גופן מסוג למגוון משימות, כולל הגשת מסמכים לפורמטי דפי קבוע, לדוגמה, PDF או PDF או XPS. מתי Aspose.Words הופך מסמך, הוא צריך לבצע הטמיעה ושילוב של מגופנים TrueType לתוך המסמך וכתוצאה מכך, שהוא תרגול רגיל במהלך דור מסמך, כולל PDF פופולרי או PDF פופולרי. XPS פורמטים. זה מבטיח כי המסמך יופיע זהה לכל צופה. יתר על כן, XPS מפרט דורש גופנים תמיד להיות מוטבע במסמך.

כדי להבטיח Aspose.Words באופן מדויק מודדים את הדמויות ומטביעים בהצלחה גופנים רלוונטיים, את התנאים הבאים יש למלא:

1.1 1. Aspose.Words צריך להיות מסוגל למצוא וגישה לקבצים של TrueType על המערכת.
1.1 1. חייב להיות מספיק גופנים TrueType זמינים Aspose.Words, רצוי עם אותם שמות משפחה גופניים כמו אלה המשמשים במסמך.

שים לב כי הגופן במסמך מייצג ישות, כגון שם משפחה, סגנון, גודל, צבע, זה שונה מן `TrueType` גוף גופני (פיזי) ישות. Aspose.Words פותר את הגופן במסמך לגופן פיזי בשלב מסוים של עיבוד. זה מאפשר משימות מסוימות, בדרך כלל המשימה של חישוב גודל הטקסט במהלך בניית הפריסה והטמעת / הצבת פורמטים קבועים דף. מספר משימות פחות פופולריות אחרות, כגון גופן פותר ומחליף בעת טעינת HTML או הטמעת / קידוד לפורמטי זרימה מסוימים, מופעלים גם כן.

## בעיות אימון וביצועים

כל מנגנוני מניפולציות גופניות זמינים הכלולים [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) מעמד. מעמד זה אחראי על הבאת גופנים בתוך מקורות גופניים מוגדרים, כמו גם עבור תהליך החלפת פונט, כפי שתואר להלן.

פונטים מתכנסים בכמה שלבים:

1.1 1. קבלת מידע עבור גופנים, פתרון מכל גופן זמין.
1.1 1. לשחרר את הגופנים הפתורים כדי להגיע glyphs & metrics (horizontal ו אנכי).
1.1 1. ערעור על הגופנים הפתורים להטמיע ולסבך.

מתי Aspose.Words נתקל בפונט במסמך בפעם הראשונה, הוא מנסה להשיג מידע גופני בסיסי, כגון שם הגופן המלא, שם משפחה, גירסה, סגנון, מקבצי הגופן הממוקמים בכל מקור גופני. אחרי כל הגופנים, Aspose.Words משתמשים בפרטים אלה כדי למצוא את נתוני הגופן הנדרשים או תחליף מתאים לפונט המבוקש.

מאחר שההליך המתואר לעיל הוא זמן-consuming, זה עלול להשפיע לרעה על ביצועי היישום ההשקה הראשונה שלו. בכל מקרה [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) יש שפם משלו, אשר יכול להפחית את זמן העיבוד של המסמכים הבאים. לדוגמה, אתה יכול לשתף מקרה של [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) שיעור בין מסמכים שונים, אשר מאפשר לך להאיץ את הטעינה של המסמכים. הדוגמה הבאה מציגה את זה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

במקרה כאשר [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) לא מוגדר במפורש, Aspose.Words שימוש כברירת מחדל [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) למשל. מקרה זה גם משותף באופן אוטומטי בין המסמכים, והוא יכול להיות מופק כדלקמן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

אם אתה בטוח כי כל מסמכי עיבוד דורשים את אותן הגדרות גופניות, אז מומלץ להגדיר ולהשתמש ברירת המחדל. [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) למשל. נניח שאתה צריך להשתמש באותם מקורות גופניים עבור כל המסמכים שלך. במקרה זה, אתה יכול רק לתקן את מקרה ברירת המחדל כדלקמן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

המנהג [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) יש עדיפות גבוהה יותר מאשר מקרה ברירת המחדל.

{{% /alert %}}

## זמינות והחלפה

טקסט במסמך ניתן לעצב עם גופנים שונים, כגון Arial, Times New Roman, Verdana ואחרים. מתי Aspose.Words הופך מסמך, הוא מנסה לבחור את הפונטים המפורטים במסמך.

עם זאת, ישנם מצבים שבהם ניתן למצוא את הגופן המדויק. Aspose.Words צריך להחליף את זה לפונט דומה במקום. Aspose.Words בחר את הגופן לפי התהליך הבא:
1.1 1. Aspose.Words מנסה למצוא גופן בין מקורות הגופן הזמינים עם שם גופני מדויק.
1.1 1. Aspose.Words מנסה למצוא את הגופן הנדרש בין הגופנים המוטבעים במסמך המקורי. כמה פורמטי מסמך כגון DOCX יכולים להכיל גופנים משובצים.
1.1 1. אם Aspose.Words אין אפשרות לאתר את הגופן הנדרש עם משחק השם המדויק, ואת המיקום המדויק. [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) רכוש מוגדר עבור גופן זה, אז Aspose.Words תמצא את הגופן המוגדר עם [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) מתוך The [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) שיעור, אשר מפרט את המידע הגופן.
1.1 1. אם Aspose.Words אין אפשרות לאתר את הגופן המוגדר, [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) הוא גם לא מוגדר, אז הכללים של החלפת גופני מוחל אחד על ידי אחד, כפי שתואר להלן (כאשר ההחלפה המתאימה נמצא, תהליך החלפת פונטה מפסיק ואת הצעד הבא לא מבוצע):
   1 ראשית, Aspose.Words מנסה לעבד את שם הגופן כדי לקבל את ההחלפה, במיוחד זה מנסה להסיר suffixes עם "-" ו"," מפרידים.<br/>
      אם חוק ההחלפה הזה מתרחש, לא נמצא "שם מקורי". שימוש ב- <SubstitutionFont> במקום זאת. הסיבה לכך היא שהשם הפונטני משנה".<br/>
   1. Aspose.Words ניסיונות ליישם הגדרות גופן OS, אם הם זמינים, על ידי שימוש **FontConfig** תועלת. זה לא-Windows יש להשתמש בתכונה עם מערכת ההפעלה של FontConfig. כמעט כל מערכת ההפעלה המבוססת על יוניקס כבר יש `FontConfig` הספרייה המיועדת לספק תצורת גופניות מערכתית, התאמה אישית וגישה ליישומים. אחרת, ניתן להתקין את הספריה בקלות על ידי המשתמש.
      Aspose.Words יודע איך לשאילת מידע ולפרש את תוצאות פונטקונפיג למטרות משלו. כברירת מחדל, `FontConfig` השירות הוא מוגבל. אתה יכול לאפשר את זה כדלקמן:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   השלב הבא משתמש במנגנון פשוט אך עוצמתי הנקרא **Table** שלטון החלפתי כברירת מחדל, תכונה זו פעילה וזמין עבור מערכת ההפעלה נתונה. Aspose.Words תחליף את הגופן עם כלל זה אם הוא לא מוחלש עם `FontConfig` שלטון החלפתי<br/>
      Aspose.Words שימוש בטבלאות XML, אשר מגדירות את כללי ההחלפה הבסיסיים עבור מערכת ההפעלה שונה. על פי חוק החלפת השולחן, הרשימה של שמות גופניים חלופיים תשמש.<br/>
      **XML**<br/>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      התכונה העיקרית של כלל זה היא היכולת לטעון טבלאות החלפת משלך, כפי שהוא מוצג בדוגמה הבאה:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      למרות הגמישות של מנגנון זה, ישנם מקרים שבהם עדיף להשבית אותו, כפי שמוצג להלן:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) שלטון החלפת יישם אם כלל החלפת השולחן אינו יכול למצוא את הגופן. מנגנון זה ניתן כברירת מחדל. Aspose.Words מוצא את הגופן המתאים ביותר על פי מידע גופני הכלול במסמך מסוים. מידע זה ניתן להשיג מן [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) השיעור כפי שמוצג להלן:<br/>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      משתמשים אינם יכולים להפריע לזרימת העבודה של תכונה זו, אלא אם הם מחליטים להשבית אותה במקרה של תוצאות לא מספקות:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      אם [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) לא זמין עבור הגופן החסר, אז התהליך מפסיק.<br/>
   1.1 1. [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) חוק ההחלפה יושם במקרה כאשר `FontInfo` גם ההחלפה נכשלה. חוק זה ניתן גם על ידי ברירת מחדל. על פי חוק זה, Aspose.Words ננסה להשתמש בגפן ברירת המחדל שצוין ב [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) רכוש. אם המשתמש לא בחר בגופן ברירת המחדל שלו, אז "Times New Roman" ישמש כפונט ברירת המחדל. חוק זה יכול להיות מוגבל כפי שמוצג להלן:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      כדי לבדוק את גופן ברירת המחדל הנוכחי, השתמש:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      כדי להגדיר את האפשרות להחליף משלך, ליישם:<br/>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1.1 1. אם Aspose.Words אינו מסוגל לבצע את החלפת הגופן, הוא מנסה לקבל את הגופן הזמין הראשון ממקורות גופניים זמינים.
1.1 1. לבסוף, אם Aspose.Words לא יכול למצוא גופנים בין מקורות הגופן הזמינים, הוא הופך את המסמך באמצעות הגופן החופשי של Fanwood כי הוא מוטבע לתוך הפונט. Aspose.Words חבילה<br/>

אם [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) הוא זמין, חוק ההחלפה *FontInfo* תמיד יפתור את הגופן ויתגבר על כלל הגופן ברירת המחדל. אם אתה רוצה להשתמש בחוק ברירת מחדל, אתה צריך להשבית את חוק ההחלפה *Fontinfo *. שים לב כי כלל ההחלפה *FontConfig* יפתור את הגופן ברוב המקרים, ובכך ישתלט על כל החוקים האחרים.

## המונחים: sound

ישנם שני מנגנונים שונים המשמשים Aspose.Words החלפת פונטן ופונט נופל החלפת עיניים משמשת כאשר הגופן שצוין במסמך לא ניתן למצוא בין מקורות הגופן כפי שתואר בסעיפים לעיל. מנגנון הנפילה של פונטה משמש כאשר הגופן נפתר, אך הוא אינו מכיל אופי מסוים. במקרה זה, Aspose.Words מנסה להשתמש באחד מגופנים הנפילה עבור הדמות.

יש [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) שיטה אשר בונה באופן אוטומטי את הגדרות הנפילה על ידי סריקת גופנים זמינים. מכיוון ששיטה זו עשויה לייצר נפילה לא-אופטימלית, אתה יכול לשלוט בהתנהגות הנדנדה על ידי שימוש במאפיינים של [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) מעמד. מחלקה זו מפרטת הגדרות של מנגנון הנפילה גופן. אתה יכול לקבל מקרה של [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) השיעור כדלקמן:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

בדומה ל- *Table substitution Rule*, מנגנון זה משתמש בטבלאות XML לתצורה. ניתן לטעון את טבלאות XML אלה ולהצליח בשיטות הבאות:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

The The The Aspose.Words שחרור כולל שני שולחנות: *MsOfficeFallbackSetting.xml* ו *NotoFallbackSetting.xml*.

The The The *MsOfficeFallbackSetting* טבלה מגדירה אסטרטגיה חלופית למגוון דמויות, הדומה לאסטרטגיה שבה נעשה שימוש Microsoft Word. לכן, האסטרטגיה מחייבת את ההתקנה של Microsoft משרד גופני *MsOfficeFallbackSetting* ניתן להפעיל באמצעות השיטה הבאה:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

The The The *NotoFallbackSetting* השולחן נוצר במיוחד לשימוש Google Noto גופנים (ראו עוד Google Noto הגדרות גופניות בחלק הבא) וניתן להשתמש בהן כדלקמן:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

הדוגמה הבאה של הקוד ממחישה כיצד לטעון הגדרות נפילה מגופן מקובץ XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

בדוגמה הקוד לעיל, קובץ XML הבא משמש:

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

## המונחים: Font FallBack Settings Google Noto פונטים

Aspose.Words מספק הגדרות טרום-דופן המיועדות Google Noto גופנים. אלה הם גופנים חופשיים מורשים תחת רישיון SIL Open Font, שניתן להוריד מהם. Google Noto פונטים The The The [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) הכיתה מספקת [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) שיטה. הוא עומס הגדרות טרום-האטה מוגדרות, המשמשות Google Noto גופנים כפי שמוצג בדוגמה הקוד להלן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

רק גופנים בסגנון סן לאו עם משקל קבוע משמשים בהגדרות המוגדרות מראש.

{{% /alert %}}

## היכן והיכן Aspose.Words עקבו אחרי Fonts

Aspose.Words ניסיונות למצוא גופנים אמיתיים במערכת הקבצים באופן אוטומטי. בדרך כלל, אתה יכול לסמוך על התנהגות ברירת המחדל של Aspose.Words למצוא את `TrueType` גופנים, אבל לפעמים אתה צריך לציין תיקיות משלך המכילות גופן TrueType. The The The [המונחים True מיקום](/words/he/python-net/specifying-truetype-fonts-location/) הנושא מתאר כיצד והיכן Aspose.Words מחפש גופנים, כמו גם כיצד לציין את מיקומים גופן משלך.

## הבדלים בעיבוד פורמטי פונטה ב Aspose.Words ו Microsoft Word

ישנם כמה הבדלים בעיבוד של פורמטים גופניים ב Aspose.Words ו Microsoft Word כפי שמוצג בטבלה למטה:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType fonts and OpenType fonts with TrueType מתווה | תומך. | תומך. |
| OpenType fonts with PostScript מתווה | תומך ברוב התרחישים. Embedding לפורמטי דפי קבוע כגון PDF ו XPS הם לא תומכים. טקסט הוחלף בתמונות bitmap. | נתמך עבור רוב התרחישים, כולל הטמעת פורמטים קבועים. |
| OpenType Font Variations | רק מקרים נבחרים נתמכת. שינויים רצופים לא תמכו | תומך רק במקרה של ברירת מחדל. מקרים וריאציות רציפות אינם נתמכים. |
| סוג1 גופנים | נתמך Windows גרסאות לפני 2013 ובגירסאות MacOS. התמיכה נדחתה Windows גרסאות החל מ-2013 | לא נתמך. |

## ראה גם

- - [Google Noto פונטים](https://fonts.google.com/noto) להורדה free fonts
