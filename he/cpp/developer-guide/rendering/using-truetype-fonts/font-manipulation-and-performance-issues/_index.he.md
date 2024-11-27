---
title: בעיות מניפולציה וביצועים בגופן ב C++
second_title: Aspose.Words עבור C++
articleTitle: בעיות מניפולציה וביצועים של גופנים
linktitle: בעיות מניפולציה וביצועים של גופנים
description: "Aspose.Words עבור C++ משתמש בגופן שם מלא, שם משפחה, גרסה, סגנון כדי למצוא את נתוני הגופן הנדרשים או תחליף מתאים לגופן המבוקש. FontSettings מאפשר לך להאיץ את טעינת המסמכים."
type: docs
weight: 11
url: /he/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

כל מנגנוני מניפולציה גופנים זמינים כלולים בכיתה [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). מחלקה זו אחראית על הבאת גופנים במקורות גופנים מוגדרים וכן על תהליך החלפת הגופן, כמתואר להלן.

## ניתוח הגופנים שנפתרו

גופנים מנותחים במספר שלבים:

1. קבלת מידע עבור גופן, פתרון מכל הגופנים הזמינים.
1. ניתוח הגופנים שנפתרו כדי לקבל גליפים וערכים זמינים (אופקיים ואנכיים).
1. ניתוח הגופנים שנפתרו להטבעה וקביעת משנה.

כאשר Aspose.Words נתקל בגופן במסמך בפעם הראשונה, הוא מנסה להשיג מידע בסיסי על גופן, כגון שם הגופן המלא, שם המשפחה, הגרסה, הסגנון, מקבצי הגופן הממוקמים בכל מקור גופן. לאחר שאוחזרו כל הגופנים, Aspose.Words משתמש בפרטים אלה כדי למצוא את נתוני הגופן הנדרשים או תחליף מתאים לגופן המבוקש.

## בעיית ביצועים בעת החלפת גופנים

מכיוון שההליך המתואר לעיל גוזל זמן, הוא עלול להשפיע לרעה על ביצועי היישום בהשקתו הראשונה. עם זאת, לכל מופע של **FontSettings** יש מטמון משלו, מה שעלול להפחית את זמן העיבוד של המסמכים הבאים. לדוגמה, תוכל לשתף מופע של הכיתה **FontSettings** בין מסמכים שונים, המאפשר לך להאיץ את טעינת המסמכים. הדוגמה הבאה מראה זאת:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

במקרה שבו **FontSettings** אינו מוגדר במפורש, Aspose.Words משתמש במופע ברירת המחדל **FontSettings**. המקרה הזה גם משותף באופן אוטומטי בין מסמכים, וניתן לחלץ אותו כדלקמן::

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## שימוש במופע ברירת המחדל FontSettings

אם אתה בטוח שכל מסמכי העיבוד דורשים את אותן הגדרות גופן,מומלץ להגדיר ולנצל את מופע ברירת המחדל **FontSettings**. נניח שאתה צריך להשתמש באותם מקורות גופן עבור כל המסמכים שלך. במקרה זה, אתה יכול פשוט לתקן את מופע ברירת המחדל באופן הבא:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

מותאם אישית **FontSettings** יש עדיפות גבוהה יותר מאשר מופע ברירת המחדל.

{{% /alert %}}
