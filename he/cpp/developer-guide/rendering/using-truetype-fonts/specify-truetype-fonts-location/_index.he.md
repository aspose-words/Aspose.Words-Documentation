---
title: ציין TrueType מיקום גופנים ב C++
second_title: Aspose.Words עבור C++
articleTitle: ציין TrueType מיקום גופנים
linktitle: ציין TrueType מיקום גופנים
description: "ציין מקורות גופן שונים TrueType: תיקיית מערכת, מקורות משתמש, טעינת גופנים מזרם, מערכת קבצים או זיכרון."
type: docs
weight: 30
url: /he/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

נושא זה מתאר את התנהגות ברירת המחדל של Aspose.Words כאשר הוא מחפש TrueType גופנים, כולל הבדלים ספציפיים במערכת ההפעלה, ומדגים כיצד לציין מקורות גופן של משתמשים.

הכיתה [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) משמשת כדי לציין מקורות גופן שונים. יש כמה יישומים של הכיתה **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

פרטי יישום עבור כמה שיעורים מוסברים להלן.

## טען גופנים מהמערכת {#loading-fonts-from-system}

יש סוג מיוחד [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) שמשמש תמיד כברירת מחדל. הוא מייצג את כל הגופנים TrueType המותקנים במערכת. לכן, ניתן ליצור רשימת מקורות עם **SystemFontSource** וכל מקורות נדרשים אחרים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

מופע יחיד של הכיתה **SystemFontSource** מוגדר כברירת מחדל ב [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). במערכות הפעלה שונות, גופנים עשויים להיות ממוקמים במקומות שונים. עם זאת, שימוש בדוגמה **FontSettings** עבור כל מסמך אינו פתרון אופטימלי. ברוב המקרים, השימוש ב [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) אמור להספיק.

מקרים לכל מסמך נדרשים רק אם נדרש להשתמש במקורות גופן שונים עבור מסמכים שונים, וזה מקרה נדיר. שימוש במספר מופעים **FontSettings** מקטין את הביצועים מכיוון שהם אינם חולקים את המטמון.

### איפה Aspose.Words מחפש TrueType גופנים ב Windows

ברוב המקרים, Windows משתמשים אינם נתקלים בבעיות משמעותיות בגופנים שהוחמצו או בפריסות שגויות. בדרך כלל, Aspose.Words עובר דרך מסמך, וכאשר הוא נתקל בקישור של גופן, הוא מביא בהצלחה את נתוני הגופן מתיקיית המערכת.

ב Windows, Aspose.Words לוקח תחילה את כל הגופנים הזמינים מהתיקיה _%windir%\Fonts. הגדרה זו תעבוד עבורך רוב הזמן. אתה רק לציין תיקיות גופנים משלך אם אתה צריך. Aspose.Words מחפש גם גופנים נוספים הרשומים במפתח הרישום HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. בנוסף, Windows 10 מאפשר התקנת גופנים עבור המשתמש הנוכחי. גופנים ממוקמים בתיקייה %userprofile%\AppData\Local\Microsoft\Windows\Fonts ומצוינים גם ברישום HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, שם Aspose.Words יחפש גופנים אלה.

אם מסמך מכיל גופנים משובצים, Aspose.Words יכול לקרוא נתוני גופן רלוונטיים מהמסמך ולהשתמש בהם כדי ליצור את פריסת המסמך. מסמכים עשויים להכיל גם קישורים לגופנים שאינם בתיקיות המערכת, ובמקרה זה התרחישים הבאים מגיעים לעבודה:

- משתמשים יכולים להגדיר מקורות גופנים חדשים דרך הכיתה **FontSettings**
- Aspose.Words יכול לנסות להחליף את הגופן שלא נענה בגופן דומה

{{% alert color="primary" %}}

Aspose.Words עיבוד בשרת בדרך כלל לא יעבוד עם יישום ASP.NET שהוגדר לפעול תחת רמת האמון הבינונית, מכיוון שהוא אוסר על גישה לרישום ומגביל את הגישה למערכת הקבצים.

{{% /alert %}}

### גופנים במערכות שאינןWindows

Aspose.Words יחפש את הגופנים בתיקיות גופן המערכת. ניתן לראות רשימה של תיקיות אלה בשיטת [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). אם לא נמצאו גופנים נתמכים, Aspose.Words ישתמש בפאנווד הגופן המובנה המוגדר כברירת מחדל.טי-אף.

מאחר ומדדי הגופן של Windows ולא-Windows OS שונים, Aspose.Words עושה הכל כדי למצוא גופן דומה ולבנות פריסה דומה למקור. עם זאת, זה לא תמיד אפשרי. במקרים אלה, יש להשתמש בכיתה **FontSettings** כדי להוסיף גופנים מותאמים אישית או כללי החלפה.

#### איפה Aspose.Words מחפש TrueType גופנים ב Linux

שונה Linux הפצות עשויות לאחסן גופנים בתיקיות שונות. Aspose.Words מחפש גופנים במספר מיקומים. כברירת מחדל, Aspose.Words מחפש את הגופנים בכל המיקומים הבאים: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. התנהגות ברירת מחדל זו תפעל עבור רוב הפצות Linux, אך לא מובטח שהיא תפעל כל הזמן, ובמקרה זה ייתכן שיהיה עליך לציין את המיקום של גופנים מסוג אמיתי במפורש. לשם כך, עליך לדעת היכן מותקנים גופנים TrueType בהפצה Linux שלך.

#### איפה Aspose.Words מחפש TrueType גופנים ב Mac OS X

Aspose.Words מחפש גופנים בתיקייה `/Library/Fonts`, שהיא המיקום הסטנדרטי עבור TrueType גופנים ב Mac OS X. בעוד הגדרה זו תעבוד בשבילך רוב הזמן, ייתכן שיהיה עליך לציין תיקיות גופנים משלך במקרה כאשר אתה צריך.

#### TrueType גופנים על Android

ב - Android, זרימת העבודה של גופנים מכוסה בכיתה של גופן.
ישנם חמישה סוגים של גופנים, כל גופן מייצג קבוצה של משפחות גופנים דומות:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

לדוגמה, על פי Android של [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) קובץ תצורה," טיימס "שייך למשפחת" סריף " כך NotoSerif-רגיל.ת "פ ישמש כאשר" טיימס " מתבקש:

**Fonts.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

כדי לחפש גופנים דומים, נעשה שימוש באסטרטגיות שתוארו קודם לכן.

בנוסף להם, Aspose.Words יש רשימה משלו של תחליפים לפלטפורמה Android.

נניח שהמסמך מכיל את הגופן PMingLiU - אקסטב, קודם כל, Aspose.Words מחפש את הגופן הנדרש בתוך מקורות המערכת.

רשימת ברירת המחדל של תיקיות הגופן Android היא:

- / מערכת / גופנים
- / מערכת / גופן
- / נתונים / גופנים

Aspose.Words מסתכל דרך מקורות מוגדרים על ידי המשתמש שהוגדרו עם השיטה:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

במקרה שצוין החלפה מפורשת, Aspose.Words מחליף את הגופן החסר בהצעת המשתמש:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

אם אף אחד מהכללים לא עבד, Aspose.Words בדוק את טבלת ההחלפה הפנימית. אם הטבלה מכילה מידע על התאמה טובה, הגופן מוחלף. במקרה שלנו Aspose.Words יבחר `Typeface.SERIF`. אבל אם הטבלה לא יודעת כלום על הגופן המבוקש אז Aspose.Words מרים גופן המבוסס על כללים מיוחדים MS Word או המרחק הקרוב ביותר במרחב פנוז.

#### TrueType גופנים ב .NET Core ו Xamarin

עבור .NET Core ו Xamarin אותו כלל חל כמו עבור Aspose.Words עבור Java גרסה. כברירת מחדל, כל גופני המערכת של הפלטפורמה שעליה פועל היישום זמינים.
ניתן למצוא את רשימת התיקיות בהן יבוצע החיפוש על ידי התקשרות לשיטה:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## טען גופנים מהתיקייה {#loading-fonts-from-folder}

אם המסמך המעובד מכיל קישורים לגופנים שאינם במערכת, או שאינך רוצה להוסיף אותם לתיקיית המערכת, או שאין לך הרשאות, הפתרון הטוב ביותר יהיה להוסיף תיקיה עם גופנים משלך בשיטת [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). זה יאפשר החלפת מקור המערכת במקור משתמש. Aspose.Words לא יחפש עוד גופנים ברישום או Windows\Fתיקיית אונט ובמקום זאת רק לסרוק גופנים בתוך התיקיות שצוינו. שיטת [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) תחזיר את הערכים המתאימים.

### ציין תיקיית גופנים אחת או יותר

השיטות [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) ו - [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) הן קיצורי דרך לשיטה **SetFontSources** עם מופע אחד או כמה [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). שיטות אלה משמשות כדי לציין היכן Aspose.Words צריך לחפש גופנים. אם תיקיה אינה קיימת או שאינה נגישה, Aspose.Words פשוט מתעלם מתיקיה זו. אם התעלמו מכל התיקיות, כולל מקורות להחלפת הגופן, Aspose.Words ישתמש בגופן פאנווד כברירת מחדל.

הדוגמה הבאה מדגימה כיצד להגדיר את התיקיה או המקור, אשר Aspose.Words ישתמש בהמשך כדי לחפש TrueType גופנים במהלך עיבוד או הטמעה של גופנים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

פרמטר בוליאני נוסף שולט אם גופן נסרק באופן רקורסיבי דרך כל התיקיות, ולכן סורק את כל תיקיות הילד של תיקיה מוגדרת. הדוגמה הבאה מדגימה כיצד להגדיר Aspose.Words לחפש בתיקיות מרובות עבור TrueType גופנים בעת עיבוד או הטמעת גופנים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

שימו לב לסדרי העדיפויות. אם יש גופנים עם אותו שם משפחה וסגנון במקורות גופנים שונים, Aspose.Words יבחר את הגופן מהמקור בעדיפות גבוהה יותר. עיין בתיאור השדה" עדיפות " למטה.

אם אינך מעוניין להשתמש בגופני מערכת כלל, Aspose.Words מאפשר לך להתעלם מהם ולהשתמש בגופנים משלך בלבד:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### נכס עדיפות

המאפיין [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) משמש כאשר ישנם גופנים עם אותו שם משפחה וסגנון במקורות גופנים שונים. במקרה זה Aspose.Words בוחר את הגופן מהמקור עם ערך העדיפות הגבוה יותר. לדוגמה, קיימת גרסה ישנה של הגופן בתיקיית המערכת והלקוח הוסיף גרסה חדשה של אותו גופן בתיקיה מותאמת אישית.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## טען גופנים מהזרם {#loading-fonts-from-stream}

Aspose.Words מספק את הכיתה [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), המאפשרת טעינת גופנים מהזרם. כדי להשתמש במקור גופן הזרם, משתמש צריך ליצור מחלקה נגזרת מ **StreamFontSource** ולספק יישום של שיטת [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). שיטת **OpenFontDataStream** יכולה להיקרא מספר פעמים. בפעם הראשונה, זה ייקרא כאשר Aspose.Words סורק את מקורות הגופן שסופקו כדי לקבל רשימה של גופנים זמינים. מאוחר יותר ניתן לקרוא לו אם הגופן משמש במסמך כדי לנתח את נתוני הגופן ולהטמיע את נתוני הגופן בכמה פורמטים של פלט. **StreamFontSource** עשוי להיות שימושי מכיוון שהוא מאפשר לטעון את נתוני הגופן רק כאשר הם נדרשים, ולא לאחסן אותם בזיכרון למשך [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) לכל החיים.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## שמור וטען מטמון לחיפוש גופנים

כאשר מחפשים גופן בפעם הראשונה, Aspose.Words חוזר על מקורות הגופן שצוינו על ידי המשתמש ויוצר מטמון חיפוש גופנים המבוסס על נתונים ממקורות אלה. לפיכך, המטמון יאסוף מידע על הגופנים הזמינים: משפחת גופנים, סגנון, שם גופן מלא ואחרים. בשיחות הבאות, Aspose.Words מחפש מידע על הגופן הרצוי בשמו במטמון חיפוש הגופנים, ולאחר מכן הוא מנתח את הקבצים שצוינו לשימוש בגופן.

ההליך לניתוח כל קבצי הגופן הזמינים לאתחול המטמון הוא די זמן רב. Aspose.Words מאפשר לך לשמור ולטעון את המטמון באמצעות שיטת [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) כדי לפתור את בעיית הביצועים. כלומר, המשתמש יכול לטעון מטמון שנשמר בעבר מקובץ ולדלג על שלב ניתוח כל קבצי הגופנים הזמינים.

{{% alert color="primary" %}}

השתמש באותה שיטה **SaveSearchCache** כדי לעדכן את המטמון.

{{% /alert %}}

{{% alert color="primary" %}}

המטמון מתאים גם לתרחישים אחרים כאשר גופנים נטענים ברשת. או עבור תרחישים שבהם אין דרך לאחסן מופע `FontSettings` עם מטמון טעון.

{{% /alert %}}

## קבל רשימה של גופנים זמינים {#get-a-list-of-available-fonts}

אם ברצונך לקבל את רשימת הגופנים הזמינים, אשר, למשל, ניתן להשתמש בהם כדי לעבד מסמך PDF, תוכל להשתמש בשיטת [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), כפי שמוצג בדוגמה הבאה של הקוד. המחלקה [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) מציינת מידע על הגופן הפיזי הזמין למנוע הגופן Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
