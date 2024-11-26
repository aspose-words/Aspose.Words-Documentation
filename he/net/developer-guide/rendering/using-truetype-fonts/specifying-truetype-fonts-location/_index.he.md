---
title: "המונחים True כתובת: Type Fonts Location C#"
second_title: Aspose.Words עבור .NET
articleTitle: המונחים True מיקום
linktitle: המונחים True מיקום
description: "המונחים שונים אמת אמיתית מקורות גופן מסוג: תיקיית מערכת, מקורות משתמשים, גופן טעינה מזרם, מערכת קבצים או זיכרון באמצעות שימוש C#."
type: docs
weight: 30
url: /he/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

נושא זה מתאר את התנהגות ברירת המחדל של Aspose.Words כאשר הוא מחפש גופנים של TrueType, כולל הבדלים ספציפיים במערכת ההפעלה, ומדגים כיצד לציין מקורות גופן משתמשים.

The The The [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) הכיתה משמשת כדי לציין מקורות גופן שונים. ישנם מספר יישום של **FontSourceBase** קטגוריה:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

פרטי יישום עבור שיעורים מסוימים מוסברים להלן.

## עקבו אחרי System {#loading-fonts-from-system}

יש מיוחד [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) שיעור זה משמש תמיד כברירת מחדל. זה מייצג את כל הגופנים TrueType מותקנים על המערכת. לכן, ניתן ליצור רשימת מקורות עם **SystemFontSource** כל מקורות אחרים נדרשים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

מקרה אחד של **SystemFontSource** שיעור מוגדר על ידי ברירת מחדל [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). במערכות הפעלה שונות, גופנים עשויים להיות ממוקמים במקומות שונים. עם זאת, באמצעות **FontSettings** כל מסמך אינו פתרון אופטימלי. ברוב המקרים, שימוש [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) צריך להיות מספיק.

יש צורך במקרים של תשלום רק אם יש צורך להשתמש במקורות גופניים שונים עבור מסמכים שונים, וזה מקרה נדיר. שימוש במספר **FontSettings** מקרים מורידים את הביצועים מכיוון שהם לא חולקים את ה-cache.

### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Windows

ברוב המקרים, Windows משתמשים אינם מתמודדים עם בעיות משמעותיות עם גופנים מפספסים או הפריסה לא נכונה. בדרך כלל, Aspose.Words עובר דרך מסמך, וכאשר הוא נתקל בקישור של גופן, מביא בהצלחה את נתוני הגופן מהתיקייה המערכת.

On On Windows Aspose.Words הראשון לוקח את כל הגופנים הזמינים מן%-windir%\ תיקיית פונטים הגדרה זו תעבוד עבורכם רוב הזמן. אתה רק מציין תיקיות גופניות משלך אם אתה צריך. Aspose.Words עבור .NET גם מחפש גופנים נוספים שנרשמו ב- HKEY_ שם הסרטון: ModFTWAREMicrosoft/Windows NT\CurrentVersion מפתח הרישום של Fonts בנוסף, Windows 10 מאפשר התקנת גופנים למשתמש הנוכחי. פונטים ממוקמים ב%userפרופיל%\ Appdata\LocalMicrosoft/Windows/ תיקיית פונטס ומפורט גם ב HKEY_ CUR_USER/SoftwareMicrosoft/Windows NT\CurrentVersion רישום פונטים, איפה Aspose.Words יחפשו את הגופנים האלה.

אם מסמך מכיל גופנים מוטבעים, Aspose.Words ניתן לקרוא נתונים פונטניים רלוונטיים מהמסמכים ולהשתמש בהם כדי ליצור את הפריסה של המסמך. מסמכים עשויים גם להכיל קישורים לגופנים שאינם בתיקיות המערכת, ובמקרה זה התרחישים הבאים באים לעבודה:

- משתמשים יכולים להגדיר מקורות גופן חדשים דרך **FontSettings** הכיתה
- - Aspose.Words ניתן להחליף את הגופן המפספס עם אדם דומה

{{% alert color="primary" %}}

Aspose.Words ביצוע בשרת בדרך כלל לא יעבוד עם ASP.NET היישום נקבע לרוץ תחת רמת אמון בינונית, כי הוא אוסר גישה למרשם ומגביל את הגישה למערכת הקבצים.

{{% /alert %}}

### מילים על Non-Windows מערכות

Aspose.Words לחפש את הפונטים בתיקיות המערכת. רשימה של תיקיות אלה ניתן לראות על ידי [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) שיטה. אם לא נמצאו גופן נתמך, Aspose.Words ישתמשו בפונט Fanwood.tf.

מאז מדדי הגופן Windows ולא-Windows מערכת ההפעלה שונה, Aspose.Words עושה הכל כדי למצוא גופן דומה ולבנות פריסה דומה למקור. אבל זה לא תמיד אפשרי. במקרים אלה, **FontSettings** יש להשתמש בכיתה כדי להוסיף גופנים מותאמים אישית או כללי החלפת.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Linux

שונה Linux הפצה עשויה לאחסן גופנים בתיקיות שונות. Aspose.Words מחפש גופנים בכמה מקומות. כברירת מחדל, Aspose.Words מחפש את הגופנים בכל המקומות הבאים: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R/lib/X11/` פונטים התנהגות ברירת מחדל זו תפעל לרוב Linux הפצה, אבל זה לא מובטח לעבוד כל הזמן, במקרה זה אתה צריך לציין את המיקום של true גופנים מסוג זה במפורש. כדי לעשות זאת, אתה צריך לדעת היכן פונטפונים TrueType מותקנים על שלך. Linux הפצה.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts on Mac OS X

Aspose.Words מחפש גופנים בתיקיה `/Library/Fonts`, שהיא המיקום הסטנדרטי עבור TrueType פונטים על Mac OS X. בעוד הגדרה זו תעבוד עבורך רוב הזמן, ייתכן שתצטרך לציין תיקיות גופניות משלך במקרה בעת הצורך.

## עקבו אחרי Folder {#loading-fonts-from-folder}

אם המסמך מעובד מכיל קישורים לגופנים שאינם במערכת, או שאתה לא רוצה להוסיף אותם לתיקיית המערכת, או שאין לך הרשאות, אז הפתרון הטוב ביותר יהיה להוסיף תיקיה עם הגופנים שלך באמצעות הפונטים שלך באמצעות הפונטים שלך. [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) שיטה. זה יאפשר להחליף את מקור המערכת עם מקור משתמש. Aspose.Words כבר לא לחפש גופנים במרשם או Windows/ תיקיית פונטה ובמקום זאת רק לסרוק עבור גופנים בתוך התיקיה המפורטת (s). The The The [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) השיטה תחזיר את הערכים המתאימים.

### המונחים: one or Multiple Font Folders

The The The [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) ו [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) שיטות הן קיצורי דרך **SetFontSources** שיטה עם אחד או מספר [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) מקרים. שיטות אלה משמשות כדי לציין היכן Aspose.Words צריך לחפש גופנים. אם התיקיה אינה קיימת או אינה נגישה, Aspose.Words פשוט להתעלם מהתיקייה הזו. אם כל התיקיות, כולל מקורות להחלפה בגופן, התעלמו מהן, Aspose.Words תשתמשו בגפן פנגווד כברירת מחדל.

הדוגמה הבאה מראה כיצד להגדיר את התיקיה או את המקור, אשר Aspose.Words לאחר מכן יהיה להשתמש כדי לחפש גופנים TrueType במהלך עריכת או הטמעת גופן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

פרמטר בולט נוסף שולט אם גופנים מסורקים מחדש דרך כל התיקיות, ולכן לסרוק את כל התיקיות של הילד של תיקיה מסוימת. הדוגמה הבאה מוכיחה כיצד להגדיר Aspose.Words כדי לחפש תיקיות מרובות עבור גופנים TrueType בעת ביצוע או הטמעת גופנים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

שימו לב לסדרי העדיפויות אם יש גופנים עם אותו שם משפחה וסגנון במקורות גופן שונים, אז Aspose.Words לבחור את הגופן ממקור עם עדיפות גבוהה יותר. ראו את התיאור של שדה "פריוריות" למטה.

אם אתה לא רוצה להשתמש בפונטים במערכת בכלל, Aspose.Words מאפשר לך להתעלם מהם ולהשתמש בגפנים שלך רק:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### עדיפות הנכס

The The The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) הנכס משמש כאשר יש גופנים עם אותו שם משפחה וסגנון במקורות גופניים שונים. במקרה זה Aspose.Words בחר את הגופן ממקור עם ערך עדיפות גבוה יותר. לדוגמה, יש גרסה ישנה של הגופן בתיקיית המערכת והלקוח הוסיף גרסה חדשה של אותו גופן בתיקיה אישית.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## עקבו אחרי Stream {#loading-fonts-from-stream}

Aspose.Words מספק [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) הכיתה, המאפשרת עומס גופנים מהזרם. כדי להשתמש במקור גופן זרם, משתמש צריך ליצור מעמד נגזר מן **StreamFontSource** לספק יישום של [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) שיטה. The The The **OpenFontDataStream** ניתן לקרוא שיטה מספר פעמים. בפעם הראשונה זה נקרא מתי Aspose.Words לסרוק את מקורות הגופן המסופקים כדי לקבל רשימה של גופנים זמינים. מאוחר יותר זה יכול להיקרא אם הגופן משמש במסמך כדי לחלק את נתוני הגופן ולהטמיע את נתוני הגופן לפורמטי פלט מסוימים. **StreamFontSource** יכול להיות שימושי כי זה מאפשר לטעון את נתוני הגופן רק כאשר הוא נדרש, ולא לאחסן אותו בזיכרון. [עקבו אחרי](https://fontsettings/) החיים.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** זו אלטרנטיבה [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) מאז תמיד ניתן לטעון זרם לזיכרון ולהעביר אותו לזיכרון. **MemoryFontSource**. ההבדל הוא שה **MemoryFontSource** נשמר בזיכרון כל הזמן, והזיכרון **StreamFontSource** הוא טעון על דרישה וניתוק מיד. אבל זה יכול להיות טעון כמה פעמים, כפי שתואר לעיל. במקרים מסוימים **MemoryFontSource** עדיף, ואחרים, **StreamFontSource**.

## להציל ולטעום חיפוש בפונט

בעת חיפוש גופני בפעם הראשונה, Aspose.Words הוא מסתמך על מקורות הגופן שצוינו על ידי המשתמש ויוצר מטמון חיפוש גופני המבוסס על נתונים ממקורות אלה. כך, המטמון יאסוף מידע על הגופנים הזמינים: משפחת גופן, סגנון, שם גופן מלא ואחרים. בשיחות הבאות, Aspose.Words חיפושים לקבלת מידע על הגופן הרצוי על ידי שמו במטמון החיפוש בגופן, ולאחר מכן הוא משווה את הקבצים המפורטים לשימוש בגופן.

ההליך עבור parsing את כל הקבצים פונטניים זמינים כדי לזרז את השפם הוא די זמן צריכת. Aspose.Words מאפשר לחסוך ולטעום את השפם באמצעות [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) שיטה לפתרון בעיית הביצוע. כלומר, המשתמש יכול לטעון שפם שנשמר בעבר מקובץ ו לדלג על שלב ההשתתפות של כל הקבצים הזמינים בגופן.

{{% alert color="primary" %}}

השתמש באותו אופן **SaveSearchCache** שיטה לעדכן את השפם.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להכין מקורות גופניים וליצור מטמון חיפוש גופני מראש:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

הדוגמה הקודית הבאה מראה כיצד להגדיר מקורות גופניים ולטעום כאבי חיפוש לפני עיבוד מסמכים:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

כאב חיפוש בפונט הוא נהדר Aspose.Words שילוב AWS Lambda בשל מספר מגבלות. לדוגמה, על גודל מיכל הראשי וכתוצאה מכך, על מספר הגופנים.

המטמון מתאים גם לתרחישים אחרים כאשר גופנים עמוסים ברשת. או לתרחישים כאשר אין דרך לאחסן `FontSettings` למשל עם שפם טעון.

{{% /alert %}}

## קבלו רשימה של אפשרויות פנויות {#get-a-list-of-available-fonts}

אם אתה רוצה לקבל את רשימת הגופנים הזמינים, אשר, למשל, ניתן להשתמש כדי להפוך מסמך PDF, אתה יכול להשתמש [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) השיטה, כפי שמוצג בדוגמה הבאה של הקוד. The The The [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) המחלקה מפרטת מידע על הגופן הפיזי הזמין ל Aspose.Words מנוע גופן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
