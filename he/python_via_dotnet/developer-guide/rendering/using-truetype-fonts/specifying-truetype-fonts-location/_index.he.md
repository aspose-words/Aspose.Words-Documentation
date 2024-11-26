---
title: המונחים True מיקום
second_title: Aspose.Words עבור Python via .NET
articleTitle: המונחים True מיקום
linktitle: המונחים True מיקום
description: "המונחים שונים אמת אמיתית מקורות גופן מסוג: תיקיית מערכת, מקורות משתמשים, גופן טעינה מזרם, מערכת קבצים או זיכרון באמצעות שימוש Python."
type: docs
weight: 30
url: /he/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

נושא זה מתאר את התנהגות ברירת המחדל של Aspose.Words כאשר הוא מחפש גופנים של TrueType, כולל הבדלים ספציפיים במערכת ההפעלה, ומדגים כיצד לציין מקורות גופן משתמשים.

The The The [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) הכיתה משמשת כדי לציין מקורות גופן שונים. ישנם מספר יישום של [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) קטגוריה:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

פרטי יישום עבור שיעורים מסוימים מוסברים להלן.

## טעינת פונטים ממערכת

יש מיוחד [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) שיעור זה משמש תמיד כברירת מחדל. זה מייצג את כל הגופנים TrueType מותקנים על המערכת. לכן, ניתן ליצור רשימת מקורות עם [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) כל מקורות אחרים נדרשים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

מקרה אחד של [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) שיעור מוגדר על ידי ברירת מחדל [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). במערכות הפעלה שונות, גופנים עשויים להיות ממוקמים במקומות שונים. עם זאת, באמצעות [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) כל מסמך אינו פתרון אופטימלי. ברוב המקרים, שימוש [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) צריך להיות מספיק.

יש צורך במקרים של תשלום רק אם יש צורך להשתמש במקורות גופניים שונים עבור מסמכים שונים, וזה מקרה נדיר. שימוש במספר [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) מקרים מורידים את הביצועים מכיוון שהם לא חולקים את ה-cache.

### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Windows

ברוב המקרים, Windows משתמשים אינם מתמודדים עם בעיות משמעותיות עם גופנים מפספסים או הפריסה לא נכונה. בדרך כלל, Aspose.Words עובר דרך מסמך, וכאשר הוא נתקל בקישור של גופן, מביא בהצלחה את נתוני הגופן מהתיקייה המערכת.

On On Windows Aspose.Words הראשון לוקח את כל הגופנים הזמינים מן%-windir%\ תיקיית פונטים הגדרה זו תעבוד עבורכם רוב הזמן. אתה רק מציין תיקיות גופניות משלך אם אתה צריך. Aspose.Words עבור .NET כמו כן, מחפש גופנים נוספים שנרשמו ב *HKEY_LOCAL__LOCAL_ MACHINE-SOFTWAREMicrosoft/Windows NT\CurrentVersion\Fonts * מפתח רישום. בנוסף, Windows 10 מאפשר התקנת גופנים למשתמש הנוכחי. פונטים ממוקמים *%userפרופיל%\ Appdata\LocalMicrosoft/Windowsתיקיית Fonts* ומפורט גם ב *HKEY_CURHU_USER\Software\Microsoft/Windows NT\CurrentVersion שם מקור: Fonts* Register Aspose.Words יחפשו את הגופנים האלה.

אם מסמך מכיל גופנים מוטבעים, Aspose.Words ניתן לקרוא נתונים פונטניים רלוונטיים מהמסמכים ולהשתמש בהם כדי ליצור את הפריסה של המסמך. מסמכים עשויים גם להכיל קישורים לגופנים שאינם בתיקיות המערכת, ובמקרה זה התרחישים הבאים באים לעבודה:

- משתמשים יכולים להגדיר מקורות גופן חדשים דרך [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) הכיתה
- - Aspose.Words ניתן להחליף את הגופן המפספס עם אדם דומה


### מילים על Non-Windows מערכות

Aspose.Words לחפש את הפונטים בתיקיות המערכת. רשימה של תיקיות אלה ניתן לראות על ידי [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) שיטה. אם לא נמצאו גופן נתמך, Aspose.Words ישתמשו בפונט Fanwood.tf.

מאז מדדי הגופן Windows ולא-Windows מערכת ההפעלה שונה, Aspose.Words עושה הכל כדי למצוא גופן דומה ולבנות פריסה דומה למקור. אבל זה לא תמיד אפשרי. במקרים אלה, [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) יש להשתמש בכיתה כדי להוסיף גופנים מותאמים אישית או כללי החלפת.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts On Linux

שונה Linux הפצה עשויה לאחסן גופנים בתיקיות שונות. Aspose.Words מחפש גופנים בכמה מקומות. כברירת מחדל, Aspose.Words מחפש את הגופנים בכל המקומות הבאים: `/usr/share/fonts` `/usr/local/share/fonts` */usr/X11R6/lib/X11/פונטים*. התנהגות ברירת מחדל זו תפעל לרוב Linux הפצה, אבל זה לא מובטח לעבוד כל הזמן, במקרה זה אתה צריך לציין את המיקום של true גופנים מסוג זה במפורש. כדי לעשות זאת, אתה צריך לדעת היכן פונטפונים TrueType מותקנים על שלך. Linux הפצה.

#### היכן והיכן Aspose.Words עקבו אחרי TrueType Fonts on Mac OS X

Aspose.Words מחפש גופנים בתיקיה */Library/Fonts*, שהיא המיקום הסטנדרטי של TrueType על Mac OS X. בעוד הגדרה זו תעבוד עבורך רוב הזמן, ייתכן שתצטרך לציין תיקיות גופניות משלך במקרה בעת הצורך.

## עקבו אחרי Folder

אם המסמך מעובד מכיל קישורים לגופנים שאינם במערכת, או שאתה לא רוצה להוסיף אותם לתיקיית המערכת, או שאין לך הרשאות, אז הפתרון הטוב ביותר יהיה להוסיף תיקיה עם הגופנים שלך באמצעות הפונטים שלך באמצעות הפונטים שלך. [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) שיטה. זה יאפשר להחליף את מקור המערכת עם מקור משתמש. Aspose.Words כבר לא לחפש גופנים במרשם או Windows/ תיקיית פונטה ובמקום זאת רק לסרוק עבור גופנים בתוך התיקיה המפורטת (s). The The The [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) השיטה תחזיר את הערכים המתאימים.

### הצצה אחת או מרובת עיניים

The The The [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) ו [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) שיטות הן קיצורי דרך [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) שיטה עם אחד או מספר [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) מקרים. שיטות אלה משמשות כדי לציין היכן Aspose.Words צריך לחפש גופנים. אם התיקיה אינה קיימת או אינה נגישה, Aspose.Words פשוט להתעלם מהתיקייה הזו. אם כל התיקיות, כולל מקורות להחלפה בגופן, התעלמו מהן, Aspose.Words תשתמשו בגפן פנגווד כברירת מחדל.

הדוגמה הבאה מראה כיצד להגדיר את התיקיה או את המקור, אשר Aspose.Words לאחר מכן יהיה להשתמש כדי לחפש גופנים TrueType במהלך עריכת או הטמעת גופן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

פרמטר בולט נוסף שולט אם גופנים מסורקים מחדש דרך כל התיקיות, ולכן לסרוק את כל התיקיות של הילד של תיקיה מסוימת. הדוגמה הבאה מוכיחה כיצד להגדיר Aspose.Words כדי לחפש תיקיות מרובות עבור גופנים TrueType בעת ביצוע או הטמעת גופנים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

שימו לב לסדרי העדיפויות אם יש גופנים עם אותו שם משפחה וסגנון במקורות גופן שונים, אז Aspose.Words לבחור את הגופן ממקור עם עדיפות גבוהה יותר. ראה את תיאור השדה "פרטיות" למטה.

אם אתה לא רוצה להשתמש בפונטים במערכת בכלל, Aspose.Words מאפשר לך להתעלם מהם ולהשתמש בגפנים שלך רק:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### עדיפות הנכס

The The The **עדיפות** הנכס משמש כאשר יש גופנים עם אותו שם משפחה וסגנון במקורות גופניים שונים. במקרה זה Aspose.Words בחר את הגופן ממקור עם ערך עדיפות גבוה יותר. לדוגמה, יש גרסה ישנה של הגופן בתיקיית המערכת והלקוח הוסיף גרסה חדשה של אותו גופן בתיקיה אישית.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## קבלת רשימה של אפשרויות פנויות

אם אתה רוצה לקבל את רשימת הגופנים הזמינים, אשר, למשל, ניתן להשתמש כדי להפוך מסמך PDF, אתה יכול להשתמש [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) השיטה, כפי שמוצג בדוגמה הבאה של הקוד. The The The [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) המחלקה מפרטת מידע על הגופן הפיזי הזמין ל Aspose.Words מנוע גופן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
