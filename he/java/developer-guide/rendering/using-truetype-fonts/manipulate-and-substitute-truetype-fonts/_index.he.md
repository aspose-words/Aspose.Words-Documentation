---
title: Manipulate and Substitute TrueType Fonts
second_title: Aspose.Words עבור Java
articleTitle: Manipulate and Substitute TrueType Fonts
linktitle: Manipulate and Substitute TrueType Fonts
description: "Aspose.Words עבור Java יכול להטמיע את הגופנים הנכונים של TrueType לתוך המסמך וכתוצאה מכך כדי להבטיח שהוא מציג במדויק, או לחפש תחליף גופני מתאים, או להשתמש במנגנון Fallback פונט."
type: docs
weight: 10
url: /he/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words אמת דורשת גופן מסוג למגוון משימות, כולל ביצוע מסמכים לפורמטי דפי קבוע, לדוגמה, PDF או PDF או XPS. מתי Aspose.Words הופך מסמך, הוא צריך לבצע הטמיעה ושילוב של מגופנים TrueType לתוך המסמך וכתוצאה מכך, שהוא תרגול רגיל במהלך דור מסמך, כולל PDF פופולרי או PDF פופולרי או PDF פופולרי. XPS פורמטים. זה מבטיח כי המסמך יופיע זהה לכל צופה. יתר על כן, XPS מפרט דורש גופנים תמיד להיות מוטבע במסמך.

כדי להבטיח Aspose.Words באופן מדויק מודדים את הדמויות ומטביעים בהצלחה גופנים רלוונטיים, את התנאים הבאים יש למלא:

1.1 1. Aspose.Words צריך להיות מסוגל למצוא ולהגישה לקבצים של TrueType על המערכת.
1.1 1. חייב להיות מספיק גופנים TrueType זמינים Aspose.Words, רצוי עם אותם שמות משפחה גופניים כמו אלה המשמשים במסמך.

שים לב כי הגופן במסמך מייצג ישות, כגון שם משפחה, סגנון, גודל, צבע, זה שונה מן `TrueType` גוף גופני (פיזי) ישות. Aspose.Words פותר את הגופן במסמך לגופן פיזי בשלב מסוים של עיבוד. זה מאפשר משימות מסוימות, בדרך כלל המשימה של חישוב גודל הטקסט במהלך בנייה הפריסה והטמעת / קידוד פורמטים קבועים דף. מספר משימות פחות פופולריות אחרות, כגון גופן פותר ומחליף בעת טעינת HTML או הטמעת / קידוד לפורמטי זרימה מסוימים, הן גם ניתנות.

## בעיות אימון וביצועים

כל מנגנוני מניפולציות גופניות זמינים הכלולים [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) מעמד. מעמד זה אחראי על הבאת גופנים בתוך מקורות גופניים מוגדרים, כמו גם עבור תהליך החלפת פונט, כפי שתואר להלן.

פונטים מתכנסים בכמה שלבים:

1.1 1. קבלת מידע עבור גופנים, פתרון מכל גופן זמין.
1.1 1. לשחרר את הגופנים הפתורים כדי להגיע glyphs & metrics (horizontal ו אנכי).
1.1 1. ערעור על הגופנים הפתורים להטמיע ולתקע.

מתי Aspose.Words נתקל בפונט במסמך בפעם הראשונה, הוא מנסה להשיג מידע גופני בסיסי, כגון שם הגופן המלא, שם משפחה, גירסה, סגנון, מקבצי הגופן הממוקמים בכל מקור גופני. אחרי כל הגופנים, Aspose.Words משתמשים בפרטים אלה כדי למצוא את נתוני הגופן הנדרשים או תחליף מתאים לפונט המבוקש.

מכיוון שההליך המתואר לעיל הוא זמן-consuming, זה עלול להשפיע לרעה על ביצועי היישום ההשקה הראשונה שלו. בכל מקרה **FontSettings** יש שפם משלו, אשר יכול להפחית את זמן העיבוד של המסמכים הבאים. לדוגמה, אתה יכול לשתף מקרה של **FontSettings** שיעור בין מסמכים שונים, אשר מאפשר לך להאיץ את הטעינה של המסמכים. הדוגמה הבאה מציגה את זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

במקרה כאשר **FontSettings** לא מוגדר במפורש, Aspose.Words שימוש כברירת מחדל **FontSettings** למשל. מקרה זה גם משותף באופן אוטומטי בין המסמכים, והוא יכול להיות מופק כדלקמן:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

אם אתה בטוח כי כל מסמכי עיבוד דורשים את אותן הגדרות גופניות, אז מומלץ להגדיר ולהשתמש ברירת המחדל. **FontSettings** למשל. נניח שאתה צריך להשתמש באותם מקורות גופניים עבור כל המסמכים שלך. במקרה זה, אתה יכול רק לתקן את מקרה ברירת המחדל כדלקמן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

המנהג **FontSettings** יש עדיפות גבוהה יותר מאשר מקרה ברירת המחדל.

{{% /alert %}}

## זמינות והחלפה

טקסט במסמך ניתן לעצב עם גופנים שונים, כגון Arial, Times New Roman, Verdana ואחרים. מתי Aspose.Words הופך מסמך, הוא מנסה לבחור את הגופנים המפורטים במסמך.

עם זאת, ישנם מצבים שבהם ניתן למצוא את הגופן המדויק. Aspose.Words צריך להחליף אותו לפונט דומה במקום זאת. Aspose.Words בחר את הגופן לפי התהליך הבא:

1.1 1. Aspose.Words מנסה למצוא גופן בין מקורות הגופן הזמינים עם שם גופן מדויק.
1.1 1. Aspose.Words מנסה למצוא את הגופן הנדרש בין הגופנים המוטבעים במסמך המקורי. כמה פורמטי מסמך כגון DOCX יכולים להכיל גופנים משובצים.
1.1 1. אם Aspose.Words אין אפשרות לאתר את הגופן הנדרש עם משחק השם המדויק, ואת המיקום המדויק. [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) רכוש מוגדר עבור גופן זה, אז Aspose.Words תמצא את הגופן המוגדר עם **AltName** מתוך The [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) שיעור, אשר מפרט את המידע הגופן.
1.1 1. אם Aspose.Words אין אפשרות לאתר את הגופן המוגדר, **AltName** הוא גם לא מוגדר, אז הכללים של החלפת גופן מוחלים אחד על ידי אחד, כפי שתואר להלן (כאשר ההחלפה המתאימה נמצא, תהליך החלפת פונט מפסיק ואת הצעד הבא הוא לא מבוצע):
   1.1 1. Aspose.Words תנסה ליישם הגדרות גופניות של מערכת ההפעלה, אם הם זמינים, על ידי שימוש `FontConfig` תועלת. זה non-Windows יש להשתמש בתכונה עם מערכת ההפעלה של FontConfig. כמעט כל מערכת ההפעלה המבוססת על יוניקס כבר יש `FontConfig` הספרייה המיועדת לספק תצורת גופניות מערכתית, התאמה אישית וגישה ליישומים. אחרת, ניתן להתקין את הספריה בקלות על ידי המשתמש.<br/>
      Aspose.Words יודע איך לשאילת נתונים ולפרש את תוצאות פונטקונפיג למטרות משלה. כברירת מחדל, `FontConfig` השירות הוא מוגבל. אתה יכול לאפשר את זה כדלקמן:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   השלב הבא הוא מנגנון פשוט, אך עוצמתי להפליא הנקרא [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). כברירת מחדל, תכונה זו פעילה וזמין עבור כל מערכת ההפעלה. Aspose.Words שימוש בטבלאות XML המגדירות כללי החלפת יסוד עבור מערכת ההפעלה שונה. על פי חוק החלפת השולחן, הרשימה של שמות גופניים חלופיים תשמש.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - גופן להיות מוחלף, substituteFonts - רשימת גרסאות החלפת, מופרד על ידי קולמה. הגופן הזמין הראשון משמש להחלפה.<br/>
      התכונה העיקרית של כלל זה היא היכולת לטעון טבלאות החלפת משלך, כפי שהוא מוצג בדוגמה הבאה:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      אתה יכול לקחת כבסיס השולחן הקיים מן הצנצנת או להציל אותו באופן רציונאלי בדרך הבאה:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      למרות הגמישות של מנגנון זה, ישנם מקרים שבהם עדיף להשבית אותו, כפי שמוצג להלן:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. **FontInfo** שלטון החלפת יישם אם כלל החלפת השולחן אינו יכול למצוא את הגופן. מנגנון זה ניתן כברירת מחדל. Aspose.Words מוצא את הגופן המתאים ביותר על פי מידע גופני הכלול במסמך מסוים. מידע זה ניתן להשיג מן **FontInfo** השיעור כפי שמוצג להלן:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      משתמשים אינם יכולים להפריע לזרימת העבודה של תכונה זו אלא אם הם מחליטים להשבית אותה במקרה של תוצאות לא מספקות:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      אם **FontInfo** לא זמין עבור הגופן החסר, אז התהליך מפסיק.
   1.1 1. **DefaultFont** חוק ההחלפה יחול במקרה כאשר `FontInfo` גם ההחלפה נכשלה. חוק זה ניתן גם על ידי ברירת מחדל. על פי חוק זה, Aspose.Words ננסה להשתמש בגפן ברירת המחדל שצוין ב [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) רכוש. אם המשתמש לא בחר בגופן ברירת המחדל שלו, אז "Times New Roman" ישמש כפונט ברירת המחדל. חוק זה יכול להיות מוגבל כפי שמוצג להלן:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      כדי לבדוק את גופן ברירת המחדל הנוכחי, השתמש:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      כדי להגדיר את האפשרות להחליף משלך, ליישם:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1.1 1. אם Aspose.Words הוא אינו מסוגל לבצע את החלפת הגופן, הוא מנסה לקבל את הגופן הזמין הראשון ממקורות גופניים זמינים.
1.1 1. לבסוף, אם Aspose.Words לא יכול למצוא גופנים בין מקורות הגופן הזמינים, הוא הופך את המסמך באמצעות הגופן החופשי של Fanwood אשר מוטבע לתוך הגופן. Aspose.Words האסיפה.

{{% alert color="primary" %}}

אם **FontInfo** הוא זמין, חוק ההחלפה *FontInfo* תמיד יפתור את הגופן ויתגבר על כלל הגופן ברירת המחדל. אם אתה רוצה להשתמש בחוק ברירת מחדל, אתה צריך להשבית את חוק ההחלפה *Fontinfo *. שים לב כי הכללת החלפת ה- *FontConfig* תפתור את הגופן ברוב המקרים, ובכך תשתלט על כל החוקים האחרים.

{{% /alert %}}

## כיצד לזהות שם הסרטון: The Font Was Replaced

לפעמים, ייתכן שלא ברור מדוע הפריסה של המסמך השתנתה, או מדוע חלק מהפונטים לא נראים כצפויים. במקרים כאלה, הודעות החלפת גופניות מיושמות על ידי הודעות שהושמו על ידי [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) הממשק בא להציל. יש להם [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) סוג האזהרה ותבנית הטקסט הסטנדרטית, "Font"<originalfont>"לא נמצאו. שימוש ב'<substitutionfont>"גופן במקום. סיבה: <reason>"עם הסיבות הבאות:</reason></substitutionfont></originalfont>

- שם חלופי מן המסמך - להחלפה על ידי [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "שינוי גופני" - להחלפה על ידי כלל פונטו
- "החלפת שולחן" - להחלפה על ידי שלטון שולחן
- "קביעת מידע גופני" - להחלפה על ידי כלל מידע גופני
- "default font substitution" - להחלפה על ידי משטר גופני ברירת מחדל
- "פונט זמין ראשון" - להחלפה עם גופן זמין ראשון

## המונחים: sound

ישנם שני מנגנונים שונים המשמשים Aspose.Words פונטה החלפת ופונט נפילה החלפת עיניים משמשת כאשר הגופן שצוין במסמך לא ניתן למצוא בין מקורות הגופן כפי שתואר בסעיפים לעיל. מנגנון הנפילה של פונטה משמש כאשר הגופן נפתר, אך הוא אינו מכיל אופי ספציפי. במקרה זה, Aspose.Words מנסה להשתמש באחד מגופנים הנפילה עבור הדמות.

יש [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) שיטה אשר בונה באופן אוטומטי את הגדרות הנפילה על ידי סריקת גופנים זמינים. מכיוון ששיטה זו עשויה לייצר נפילה לא-אופטימלית, אתה יכול לשלוט בהתנהגות הנדנדה על ידי שימוש במאפיינים של [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) מעמד. מחלקה זו מפרטת הגדרות של מנגנון הנפילה של גופן. אתה יכול לקבל מקרה של **FontFallbackSettings** השיעור כדלקמן:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

בדומה ל- *Table substitution Rule*, מנגנון זה משתמש בטבלאות XML לתצורה. ניתן לטעון את טבלאות XML אלה ולהצליח בשיטות הבאות:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

The The The Aspose.Words שחרור כולל שני שולחנות: *MsOfficeFallbackSetting.xml* ו *NotoFallbackSetting.xml*.

The The The *MsOfficeFallbackSetting* טבלה מגדירה אסטרטגיה חלופית למגוון דמויות, הדומה לאסטרטגיה שבה נעשה שימוש Microsoft Word. לכן, האסטרטגיה מחייבת את ההתקנה של Microsoft משרד גופנים *MsOfficeFallbackSetting* ניתן להפעיל באמצעות השיטה הבאה:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

The The The *NotoFallbackSetting* שולחן נוצר במיוחד לשימוש Google Noto גופנים (ראו עוד Google Noto הגדרות גופניות בסעיף הבא) וניתן להשתמש בהן כדלקמן:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

הדוגמה הבאה לקוד ממחישה כיצד לטעון הגדרות נפילה מגופן מקובץ XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

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

Aspose.Words מספק הגדרות טרום הדבקה של גופן Google Noto גופנים. אלה הם גופנים חופשיים מורשים תחת רישיון SIL Open Font, שניתן להוריד מהם. Google Noto פונטים The The The **FontFallbackSettings** הכיתה מספקת [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) שיטה. הוא עומס הגדרות טרום-האטה מוגדרות, המשמשות Google Noto גופנים כפי שמוצג בדוגמה הקוד להלן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

רק גופנים בסגנון סן לאו עם משקל קבוע משמשים בהגדרות מוגדרות מראש.

{{% /alert %}}

## היכן והיכן Aspose.Words עקבו אחרי Fonts

Aspose.Words ניסיונות למצוא גופנים אמיתיים במערכת הקבצים באופן אוטומטי. בדרך כלל, אתה יכול לסמוך על התנהגות ברירת המחדל של Aspose.Words למצוא את `TrueType` גופנים, אבל לפעמים אתה צריך לציין תיקיות משלך המכילות גופן TrueType. The The The [תגית: אמת](/words/he/java/specify-truetype-fonts-location/) הנושא מתאר כיצד והיכן Aspose.Words מחפש גופנים, כמו גם כיצד לציין את מיקומים גופן משלך.

## הבדלים בעיבוד פורמטי פונטה ב Aspose.Words ו Microsoft Word

ישנם כמה הבדלים בעיבוד של פורמטים גופניים ב Aspose.Words ו Microsoft Word כפי שמוצג בטבלה למטה:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType fonts and OpenType fonts with TrueType מתווה | נתמך. | נתמך. |
| OpenType fonts with PostScript מתווה | תומך ברוב התרחישים. Embedding לפורמטי דפי קבוע כגון PDF ו XPS הם לא תומכים. הטקסט הוחלף בתמונות bitmap. | נתמך עבור רוב התרחישים, כולל הטמעת פורמטים קבועים. |
| OpenType Font Variations | רק מקרים נקראים נתמכת. שינויים רצופים לא תומכים. | תומך במקרה ברירת המחדל היחיד. מקרים וריאציות רציפות אינם נתמכים. |
| סוג1 גופנים | נתמך Windows גרסאות לפני 2013 וגרסאות MacOS. התמיכה נדחתה Windows גרסאות החל מ-2013 | לא נתמך. |

## ראה גם

- - [Google Noto פונטים](https://fonts.google.com/noto) להורדה free fonts


