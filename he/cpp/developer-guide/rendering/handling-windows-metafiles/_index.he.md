---
title: טיפול Windows מטא-קבצים ב C++
second_title: Aspose.Words עבור C++
articleTitle: טיפול Windows מטא-קבצים
linktitle: טיפול Windows מטא-קבצים
description: "Aspose.Words עבור C++ מיישם את נגן המטאפיל שלו Windows כדי לשחק פורמט מטאפיל בכל הפלטפורמות ותומך בטיפול בתכונות המטאפיל הבסיסיות ויכול לבצע נסיגה לסוג אחר של נגן מטאפיל."
type: docs
weight: 30
url: /he/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows פורמט מטאפיל הוא פורמט קובץ תמונה שיכול להכיל גם גרפיקה וקטורית וגם גרפיקה רסטר. פורמט זה משמש לאחסון נתונים גרפיים בזיכרון או בקבצים בדיסק. קובץ מטא מאחסן רשימה של שיחות פונקציה בממשק המכשיר הגרפי Windows (GDI) שיש לבצע כדי להציג את התמונה על המסך. המערכת מפרשת ומבצעת פקודות אלה בהקשר לתצוגה.

בעבר, Windows מטאפיל היה פורמט התמונה הווקטורי היחיד שנתמך על ידי Microsoft Word. Microsoft Word תומך כעת גם בפורמט SVG, אך פורמט המטא-קובץ עדיין משמש בדרך כלל במסמכים Word. כמו כן, מטאפיל יכול להיות פורמט חילופי עבור כמה יישומים אחרים, כגון Microsoft ויזיו. בעיקרון, המטרה העיקרית של מטאפיל היא להבטיח את חילופי המידע הגרפי בין יישומים Windows.

יש 3 גרסאות של Windows מטאפיל:

- WMF - חנויות מתקשרות ל-16 ביט GDI.
- EMF - חנויות מתקשרות לזכייה 32 / GDI.
- EMF + חנויות מטאפיל מתקשרות אל GDI+. EMF + מטאפיל יכול להיות גם כפול, המתאר את אותה גרפיקה עם שני EMF ו EMF+ חלקים.

הבעיה הקיימת עם Windows מטא-קובץ היא שהוא אינו נתמך על ידי רוב הפורמטים שאינםWord, אליהם נשמרים בדרך כלל מסמכים. לכן, נדרש להמיר את פורמט המטאפיל לפורמטים אחרים של רסטר או וקטור. קל להמיר Windows מטאפיל לתמונת רסטר ב .NET פשוט על ידי העברתו ל GDI+, אך זה לא אפשרי בפלטפורמות אחרות מכיוון שאפילו GDI+ אינו מספק את הפונקציונליות לחילוץ הגרפיקה הווקטורית ממטאפיל. כדי לפתור בעיות אלה, Aspose.Words מיישם את נגן המטאפיל שלו Windows, המסוגל לנגן פורמט מטאפיל הן גרפיקה וקטורית והן גרפיקה רסטר בכל הפלטפורמות.

## שליטה בנגן המטאפיל Aspose.Words

הכיתה [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) מאפשרת לך לשלוט בנגן המטאפיל. לדוגמה, אתה יכול לקבוע כיצד יש להציג תמונות מטא-קובץ באמצעות המאפיין [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), שיש לו משמעות מיוחדת בעת המרה למפות סיביות (ראה גם המאפיין [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

שמירה למפת סיביות פועלת באופן שונה בפלטפורמות שאינן .NET. בעוד .NET GDI+ טיוח הוא הפניה שעובדת כמעט בצורה מושלמת אפילו עבור פורמט המטא-קובץ המורכב ביותר, בפלטפורמות אחרות היא עלולה לגרום לבעיות או לא להיות נתמכת כלל.

## תמיכה בפעולות סריקה

פעולות רסטר היא תכונה מורכבת של מטאפיל, שיש לה כרגע תמיכה מוגבלת. פעולות רסטר זמינות בפורמטים של WMF ו - EMF. פורמט המטא-קובץ EMF+ אינו משתמש בפעולות רסטר ישירות, אך יכול להכיל EMF חלקים, מוטמעים WMF או EMF מטא-קבצים.

ישנן פעולות סריקה בינאריות ושלישיות:

- פעולות רסטר בינאריות מוחלות על פקודות ציור עט, כגון ציור קווים ועקומות. בעת ציור קו, צבע העט משולב עם צבע מפת הסיביות של היעד (צבע הפיקסל המתאים על פני המכשיר) באמצעות פעולות לוגיות סיביות מוגדרות עם ערכי צבע משושה. דוגמת התמונה שלהלן ממחישה את ההשפעה של כל 16 פעולות הסריקה הבינאריות המיושמות על 20 פסי צבע שונים. פסי הצבע האנכיים נמשכים תחילה, הסורגים האופקיים נמשכים לאחר החלת כל פעולת סריקה בינארית. עבור המקרים הפשוטים, R2_BLACK מצייר שחור, R2_NOT הופך את הצבע, R2_NOP לא משנה את הרקע, ו R2_WHITE מצייר לבן.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- פעולות רסטר שלישיות מוחלות בעת ציור תמונות מפת סיביות. הם משלבים צבעים של פיקסלים תואמים של תמונת מפת סיביות, המברשת ומפת סיביות היעד באמצעות פעולות לוגיות סיביות עם ערכי צבע משושה מוגדרים. אחת המטרות הנפוצות ביותר של שימוש בפעולות רסטר שלישיות היא חיקוי של שקיפות. התמונה המוצגת בדוגמה שלהלן מדגימה כיצד ניתן לחקות שקיפות אייקונים. ישנם שני סוגים של מפות סיביות: מפת הסיביות של מסכת שחור-לבן ומפת הסיביות הצבעונית. ראשית, מפת הסיביות של המסכה מצוירת עם פעולת הסריקה SRCAND. זה משנה את אזור הסמל האטום לשחור ולבן, ומשאיר את האזור השקוף ללא שינוי. ואז מפת הסיביות השנייה מצוירת עם פעולת הסריקה SRCINVERT. הוא מציג את הפיקסלים הצבעוניים באזור השחור, ומשאיר את האזור השקוף ללא שינוי.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

פעולות סריקה לא ניתן להמיר גרפיקה וקטורית ישירות. Aspose.Words מחקה פעולות סריקה על ידי רסטר חלקי של משטח המכשיר המושפע מפעולות סריקה. למטרה זו, נעשה שימוש במאפיין [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

אמנם פעולות סריקה בינאריות אינן נתמכות כרגע והמספר המצומצם של פעולות סריקה שלישיות נתמך על ידי Aspose.Words, הוא יכול להתמודד עם המקרים הבסיסיים של המרה לגרפיקה וקטורית ישירות, למשל, R2_BLACK, R2_WHITE, R2_NOP. כמו כן, רסטר של משטח המכשיר משפיע באופן משמעותי על הביצועים, במיוחד כאשר מספר משמעותי של רשומות פעולת סריקה מעורבים.

{{% /alert %}}

הדוגמה המוצגת להלן מדגימה כיצד Aspose.Words מעביר מטא-קובץ למפת סיביות כאשר לא ניתן לעבד נכון חלק מרשומות המטא-קובץ לגרפיקה וקטורית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## הגדרות נפילה של מטאפיל

Aspose.Words אינו תומך במספר תכונות מטה-קובץ המורכבות או הנדירות ביותר. משתמשים יכולים ליישם את ממשק [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) ולקבל הודעות אזהרה. אם Aspose.Words נתקל בתכונות שאינן נתמכות במטא-קובץ, הוא מוציא הודעת אזהרה עם [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. במקרה זה Aspose.Words יכול לבצע החזרה לסוג אחר של שחקן מטאפיל. הודעת האזהרה לגבי החזרה מונפקת גם כן.

ראשית, Aspose.Words מבצע נסיגה ממנגן המטאפיל הווקטורי לרסטר, הנשלט על ידי המאפיין [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). אם תכונת ההחזרה מושבתת, Aspose.Words מנסה לעבד גרפיקה חלופית במקום התכונות שאינן נתמכות.

Aspose.Words מנגן בהצלחה קובץ מטא לסריקה באמצעות GDI + ב .NET, מה שהופך את אפשרות ההתקשרות הזו לבטוחה.

שנית, יש אפשרות עבור EMF+ מטאפיל כפול כדי לחזור מהמשחק EMF+ חלק ל EMF חלק. הוא נשלט על ידי [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). אם יש כמה בעיות שמתרחשות בעת משחק החלק EMF, אז ניתן לבצע גם חזרה לרסטר.

באשר לפעולות רסטר, אם [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) מושבת, פעולות רסטר נחשבות כלא נתמכות, מה שמפעיל נסיגה לשחקן מטאפיל של מפת סיביות אם הוא מופעל. לכן, אם יש לך קובץ מטא עם פעולות רסטר, אבל אתה לא רוצה להשתמש בדמיון פעולות רסטר ובכל זאת רוצה לקבל את הפלט הווקטורי עם גרפיקה החלפה, ולאחר מכן בחר את [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
