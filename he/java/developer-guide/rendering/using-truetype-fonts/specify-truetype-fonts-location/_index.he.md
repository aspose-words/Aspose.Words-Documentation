---
title: "המונחים True כתובת: Type Fonts Location Java"
second_title: Aspose.Words עבור Java
articleTitle: המונחים True מיקום
linktitle: המונחים True מיקום
description: "המונחים שונים אמת אמיתית מקורות גופן מסוג: תיקיית מערכת, מקורות משתמשים, גופן טעינה מזרם, מערכת קבצים או זיכרון באמצעות שימוש Java."
type: docs
weight: 30
url: /he/java/specify-truetype-fonts-location/
---

נושא זה מתאר את התנהגות ברירת המחדל של Aspose.Words כאשר הוא מחפש גפנים TrueType, כולל שינויים ספציפיים במערכת ההפעלה, ומדגים כיצד לציין מקורות גופן משתמשים.

The The The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) הכיתה משמשת כדי לציין מקורות גופן שונים. ישנם מספר יישום של **FontSourceBase** קטגוריה:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

פרטי יישום עבור שיעורים מסוימים מוסברים להלן.

## עקבו אחרי System {#loading-fonts-from-system}

יש מיוחד [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) שיעור זה תמיד בשימוש כברירת מחדל. זה מייצג את כל גופנים TrueType מותקנים על המערכת. לכן, ניתן ליצור רשימת מקורות עם **SystemFontSource** כל מקורות אחרים נדרשים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

מקרה אחד של **SystemFontSource** שיעור מוגדר על ידי ברירת מחדל [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). במערכות הפעלה שונות, גופנים עשויים להיות ממוקמים במקומות שונים. עם זאת, באמצעות **FontSettings** כל מסמך אינו פתרון אופטימלי. ברוב המקרים, באמצעות [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) צריך להיות מספיק.

יש צורך במקרים של תשלום רק אם יש צורך להשתמש במקורות גופניים שונים עבור מסמכים שונים, וזה מקרה נדיר. שימוש במספר **FontSettings** מקרים מפחיתים את הביצועים כי הם לא חולקים את השפם.

### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Windows

ברוב המקרים, Windows משתמשים אינם מתמודדים עם בעיות משמעותיות עם גופנים מפספסים או פריסות לא נכונות. בדרך כלל, Aspose.Words עובר דרך מסמך, וכאשר הוא נתקל בקישור של גופן, הוא מביא בהצלחה את נתוני הגופן מהתיקייה המערכת.

On On <span notrans="<span notrans=" Windows"=""></span>" Aspose.Words קודם כל לוקח את כל הגופנים הזמינים מה-%windir%\Fonts תיקיה. הגדרה זו תעבוד עבורכם רוב הזמן. אתה רק מציין תיקיות גופניות משלך אם אתה צריך. Aspose.Words גם מחפש גופנים נוספים שנרשמו ב HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts מפתח הרישום בנוסף, Windows 10 מאפשר התקנת גופנים למשתמש הנוכחי. פונטים נכנסים %userprofile%\AppData\Local\Microsoft\Windows\Fonts התיקיה ומפורט גם HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts רישום, איפה Aspose.Words יחפשו את הגופנים האלה.

אם מסמך מכיל גופנים מוטבעים, Aspose.Words ניתן לקרוא נתונים פונטניים רלוונטיים מהמסמכים ולהשתמש בהם כדי ליצור את הפריסה של המסמך. מסמכים עשויים גם להכיל קישורים לגופנים שאינם בתיקיות המערכת, ובמקרה זה התרחישים הבאים באים לעבודה:

- משתמשים יכולים להגדיר מקורות גופן חדשים דרך **FontSettings** הכיתה
- - Aspose.Words ניתן להחליף את הגופן המפספס עם אדם דומה

### מילים על Non-Windows מערכות

Aspose.Words יחפשו את הגופנים בתיקיות גופן המערכת. רשימה של תיקיות אלה ניתן לראות על ידי [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) שיטה. אם לא נמצאו גופן נתמך, Aspose.Words ישתמשו בפונט Fanwood.tf.

מאז מדדי הגופן Windows ולא-Windows מערכת ההפעלה שונה, Aspose.Words עושה הכל כדי למצוא גופן דומה ולבנות פריסה דומה למקור. אבל זה לא תמיד אפשרי. במקרים אלה, **FontSettings** יש להשתמש בכיתה כדי להוסיף גופנים מותאמים אישית או כללי החלפת.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Linux

שונה Linux הפצה עשויה לאחסן גופנים בתיקיות שונות. Aspose.Words מחפש גופנים בכמה מקומות. כברירת מחדל, Aspose.Words מחפש את הגופנים בכל המקומות הבאים: */usr/share/fonts*/usr/local/share/Share/fonts*/usr/X11R6/lib/X11/פונטים התנהגות ברירת מחדל זו תפעל לרוב Linux הפצה, אבל זה לא מובטח לעבוד כל הזמן, במקרה זה אתה צריך לציין את המיקום של true גופן מסוג זה במפורש. כדי לעשות זאת, אתה צריך לדעת היכן פונטפונים TrueType מותקנים על שלך. Linux הפצה.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts on Mac OS X

Aspose.Words מחפש גופנים בתיקיה /Library / Fonts, שהיא המיקום הסטנדרטי עבור TrueType פונטים על Mac OS X. בעוד הגדרה זו תעבוד עבורך רוב הזמן, ייתכן שתצטרך לציין תיקיות גופניות משלך במקרה בעת הצורך.

#### TrueType Fonts Android

On On Android, פונטים של זרימת עבודה הוא מלוטש בכיתה Typeface.
ישנם חמישה סוגים של היבטים, כל סוג של פנים מייצג קבוצה של משפחות גופניות דומות:

- תגית: DeFAULT
- DeFAULT_BOLD
- MONOSPACE
- תגית: SERIF
- תגית: SERIF

למשל, לפי Android" [פונטים](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) קובץ תצורה, "זמן" שייך למשפחה "serif" כך ש-NotoSerif-regular.tf ישמש כאשר "שעות" מתבקש:

**פונטים**

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

כדי לחפש גופנים דומים, האסטרטגיות המתוארות קודם לכן משמשות

בנוסף להם, Aspose.Words יש רשימה משלה של תחליפים Android פלטפורמה.

נניח שהמסמך מכיל את הגופן PMingLiU-ExtB, קודם כל. Aspose.Words מחפש את הגופן הנדרש בתוך מקורות המערכת.

רשימת ברירת המחדל Android התיקיות של גופן הן:

- • מערכת / גופנים
- מערכת /פונט
- נתונים /פונטים

The The The Aspose.Words באמצעות מקורות המוגדרים על ידי משתמשים אשר נקבעו עם השיטה:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

במקרה של תחליף מפורש צוין, Aspose.Words להחליף את הגופן החסר עם הצעת המשתמש:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

אם אף אחד מהכללים לא עבד, Aspose.Words בדוק את שולחן ההחלפה הפנימי. אם השולחן מכיל מידע על התאמה טובה, הגופן מוחלף. במקרה שלנו Aspose.Words יבחר `Typeface.SERIF`. אבל אם השולחן לא יודע כלום על הגופן המבוקש אז Aspose.Words להרים גופן המבוסס על כללי מילה מיוחדים או על המרחק הקרוב ביותר בחלל Panose.

#### TrueType Fonts .NET Core ו Xamarin

For For .NET Core ו Xamarin אותו חוק חל על Aspose.Words עבור Java גרסה. כברירת מחדל, כל גופן המערכת של הפלטפורמה שבה היישום הוא זמין.
ניתן למצוא את רשימת התיקיות שבהן החיפוש יבוצע על ידי קריאת השיטה:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## עקבו אחרי Folder {#loading-fonts-from-folder}

אם המסמך מעובד מכיל קישורים לגופנים שאינם במערכת, או שאתה לא רוצה להוסיף אותם לתיקיית המערכת, או שאין לך הרשאות, אז הפתרון הטוב ביותר יהיה להוסיף תיקיה עם הגופנים שלך באמצעות הפונטים שלך באמצעות הפונטים שלך. `SetFontsSources` שיטה. זה יאפשר להחליף את מקור המערכת עם מקור משתמש. Aspose.Words כבר לא לחפש גופנים במרשם או Windows\Font תיקיה ובמקום זאת רק לסרוק עבור גופנים בתוך התיקיה המפורטת (s). The The The `GetFontSources` השיטה תחזיר את הערכים המתאימים.

### המונחים: one or Multiple Font Folders

The The The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) שיטות SetFontsFolders הן קיצורי דרך **SetFontSources** שיטה עם אחד או מספר [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) מקרים. שיטות אלה משמשות כדי לציין היכן Aspose.Words צריך לחפש גופנים. אם התיקיה אינה קיימת או אינה נגישה, Aspose.Words פשוט להתעלם מהתיקייה הזו. אם כל התיקיות, כולל מקורות להחלפה בגופן, התעלמו מהן, Aspose.Words תשתמשו בגפן פנגווד כברירת מחדל.

הדוגמה הבאה מראה כיצד להגדיר את התיקיה או את המקור, אשר Aspose.Words לאחר מכן יהיה להשתמש כדי לחפש גופנים TrueType במהלך עריכת או הטמעת גופן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

פרמטר בולט נוסף שולט אם גופנים מסורקים מחדש דרך כל התיקיות, ולכן לסרוק את כל התיקיות של הילד של תיקיה מסוימת. הדוגמה הבאה מוכיחה כיצד להגדיר Aspose.Words כדי לחפש תיקיות מרובות עבור גופנים TrueType בעת ביצוע או הטמעת גופנים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

שימו לב לסדרי העדיפויות אם יש גופנים עם אותו שם משפחה וסגנון במקורות גופן שונים, אז Aspose.Words בחר את הגופן ממקור עם עדיפות גבוהה יותר. ראו את התיאור של השדה "פריוריטי" למטה.

{{% /alert %}}

אם אתה לא רוצה להשתמש בפונטים במערכת בכלל, Aspose.Words מאפשר לך להתעלם מהם ולהשתמש בגפנים שלך רק:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### נכס עדיפות

The The The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) הנכס משמש כאשר יש גופנים עם אותו שם משפחה וסגנון במקורות גופן שונים. במקרה זה Aspose.Words בחר את הגופן ממקור עם ערך עדיפות גבוה יותר. לדוגמה, יש גרסה ישנה של הגופן בתיקיה המערכת והלקוח הוסיף גרסה חדשה של אותו גופן בתיקיה אישית.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## עקבו אחרי Stream {#loading-fonts-from-stream}

Aspose.Words מספק [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) הכיתה, המאפשרת עומס גופנים מהזרם. כדי להשתמש במקור גופן זרם, משתמש צריך ליצור מעמד נגזר מן **StreamFontSource** לספק יישום של [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) שיטה. The The The **OpenFontDataStream** ניתן לקרוא שיטה מספר פעמים. בפעם הראשונה זה נקרא מתי Aspose.Words לסרוק את מקורות הגופן המסופקים כדי לקבל רשימה של גופנים זמינים. מאוחר יותר זה יכול להיקרא אם הגופן משמש במסמך כדי לחלק את נתוני הגופן ולהטמיע את נתוני הגופן לפורמטי פלט מסוימים. **StreamFontSource** יכול להיות שימושי כי זה מאפשר לטעון את נתוני הגופן רק כאשר הוא נדרש, ולא לאחסן אותו בזיכרון. `FontSettings` החיים.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** זו אלטרנטיבה [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) מאז תמיד ניתן לטעון זרם לזיכרון ולהעביר אותו לזיכרון. **MemoryFontSource**. ההבדל הוא שה **MemoryFontSource** נשמר בזיכרון כל הזמן, והזיכרון **StreamFontSource** הוא טעון על דרישה וניתוק מיד. אבל זה יכול להיות טעון כמה פעמים, כפי שתואר לעיל. במקרים מסוימים **MemoryFontSource** עדיף, ואחרים, **StreamFontSource**.

## להציל ולטעום חיפוש בפונט

בעת חיפוש גופני בפעם הראשונה, Aspose.Words הוא מסתמך על מקורות הגופן שצוינו על ידי המשתמש ויוצר מטמון חיפוש גופני המבוסס על נתונים ממקורות אלה. כך, המטמון יאסוף מידע על הגופנים הזמינים: משפחת גופן, סגנון, שם גופן מלא ואחרים. בשיחות הבאות, Aspose.Words חיפושים לקבלת מידע על הגופן הרצוי על ידי שמו במטמון החיפוש בגופן, ולאחר מכן הוא משווה את הקבצים המפורטים לשימוש בגופן.

ההליך עבור parsing את כל קבצי הגופן הזמינים כדי לזרז את המטמון הוא די זמן צריכת. Aspose.Words מאפשר לחסוך ולטעום את השפם באמצעות **FontSettings.SaveSearchCache** שיטה לפתרון בעיית הביצוע. כלומר, המשתמש יכול לטעון שפם שנשמר בעבר מקובץ ו לדלג על שלב ההשתתפות בכל קבצי הגופן הזמינים.

{{% alert color="primary" %}}

השתמש באותו אופן **SaveSearchCache** שיטה לעדכן את השפם.

{{% /alert %}}

{{% alert color="primary" %}}

המטמון מתאים גם לתרחישים אחרים כאשר גופנים עמוסים ברשת. או לתרחישים כאשר אין דרך לאחסן `FontSettings` למשל עם שפם טעון.

{{% /alert %}}


## קבלו רשימה של אפשרויות פנויות {#get-a-list-of-available-fonts}

אם אתה רוצה לקבל את רשימת הגופנים הזמינים, אשר, למשל, ניתן להשתמש כדי להפוך מסמך PDF, אתה יכול להשתמש [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) השיטה, כפי שמוצג בדוגמה הבאה של הקוד. The The The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) המחלקה מפרטת מידע על הגופן הפיזי הזמין ל Aspose.Words מנוע גופן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
