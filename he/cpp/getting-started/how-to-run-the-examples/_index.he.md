---
title: כיצד להפעיל את הדוגמאות
second_title: Aspose.Words עבור C++
articleTitle: כיצד להפעיל את הדוגמאות
linktitle: כיצד להפעיל את הדוגמאות
description: "הורד Aspose.Words עבור C++ דוגמאות מהמאגר GitHub שלנו ולמד כיצד להפעיל אותן כדי להכיר יותר את האפשרויות והתכונות Aspose.Words."
type: docs
weight: 110
url: /he/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

כדי להכיר טוב יותר את האפשרויות והתכונות Aspose.Words אנו מספקים דוגמאות שניתן להוריד מהמאגר GitHub שלנו, להפעיל וללמוד בפירוט.

במאמר זה, אתה יכול למצוא את דרישות המערכת, כמו גם מידע על איך להפעיל את הדוגמאות.

## Windows עם Nuget חבילה

### דרישות תוכנה ותנאים מוקדמים

אנא ודא שאתה עומד בדרישות הבאות לפני ההורדה וההפעלה של הדוגמאות:

1. Visual Studio קוד, Visual Studio 2022.
2. מותקן NuGet מנהל החבילה ואת האחרונה NuGet API גרסה עבור Visual Studio. (אופציונלי)
3. נבחר **nuget.org** אפשרות בתיבת הדו-שיח "כלים ואפשרויות" תחת "NuGet מנהל החבילות מקורות החבילה".
4. חיבור אינטרנט פעיל לשימוש בתכונת שחזור החבילה האוטומטית `NuGet` בפרויקט הדוגמאות. אם אין לך חיבור אינטרנט פעיל במחשב שבו יש לבצע את הדוגמאות, עקוב אחר ההוראות מ Windows עם Cmake חֲבִילָה.

### הורד והפעל את הדוגמאות

כל Aspose.Words עבור C++ דוגמאות מאוחסנות ב [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). אתה יכול לשכפל את המאגר באמצעות הלקוח המועדף עליך GitHub או להוריד [קובץ ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

לאחר קבלת עותק של המאגר, אתה עשוי לגלות כי:

- כל הדוגמאות ממוקמות בתיקייה **Examples**.
- יש Visual Studio קבצי פתרון עבור C++ שנוצרו ב Visual Studio 2022.

כדי להפעיל את הדוגמאות, פתח את קובץ הפתרון ב Visual Studio ובנה את הפרויקט:

- עבור דוגמאות **API Reference**, המבנה מבוסס על שמות כיתות, עבור דוגמאות **Docs** הוא מבוסס בעיקר על [מפתח מפותל](/words/cpp/developer-guide/) סעיף תיעוד.
- בהפעלה הראשונה, התלות יורדו אוטומטית באמצעות NuGet.
- התיקיה **Data** בתיקיית השורש של **Examples** מכילה קבצי קלט ששימשו בדוגמאות.
- ניתן להפעיל את כל הדוגמאות כבדיקות יחידה.

## Windows עם CMake חבילה

### דרישות תוכנה ותנאים מוקדמים

אנא ודא שאתה עומד בדרישות הבאות לפני ההורדה וההפעלה של הדוגמאות:

1. Visual Studio קוד, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. הורד האחרונה CMake חבילה מ https://downloads.aspose.com/words/cpp

### הורד והפעל את הדוגמאות

כל Aspose.Words עבור C++ דוגמאות מאוחסנות ב [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). אתה יכול לשכפל את המאגר באמצעות הלקוח המועדף עליך GitHub או להוריד [קובץ ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

מקם תיקיות `Aspose.Words.Cpp` ו `CodePorting.Native.Cs2Cpp_*` בשורש עותק של המאגר.

כל הדוגמאות ממוקמות בתיקייה **Examples**.

כדי להפעיל את הדוגמאות הפעל את הפקודות הבאות מהשורש של עותק של המאגר:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

הפתרון עבור Visual Studio ייווצר ב `Examples\DocsExamples\build`

כדי להפעיל את הדוגמאות, פתח את קובץ הפתרון ב Visual Studio ובנה את הפרויקט:

- עבור דוגמאות **API Reference**, המבנה מבוסס על שמות כיתות, עבור דוגמאות **Docs** הוא מבוסס בעיקר על [מפתח מפותל](/words/cpp/developer-guide/) סעיף תיעוד.
- התיקיה **Data** בתיקיית השורש של **Examples** מכילה קבצי קלט ששימשו בדוגמאות.
- ניתן להפעיל את כל הדוגמאות כבדיקות יחידה.

## Linux

### דרישות תוכנה ותנאים מוקדמים

אנא ודא שאתה עומד בדרישות הבאות לפני ההורדה וההפעלה של הדוגמאות:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. הורד האחרונה CMake חבילה מ https://downloads.aspose.com/words/cpp

### הורד והפעל את הדוגמאות

כל Aspose.Words עבור C++ דוגמאות מאוחסנות ב [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). אתה יכול לשכפל את המאגר באמצעות הלקוח המועדף עליך GitHub או להוריד [קובץ ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

מקם תיקיות `Aspose.Words.Cpp` ו `CodePorting.Native.Cs2Cpp_*` בשורש עותק של המאגר.

כל הדוגמאות ממוקמות בתיקייה **Examples**.

כדי להפעיל את הדוגמאות הפעל את הפקודות הבאות מהשורש של עותק של המאגר:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- עבור דוגמאות **API Reference**, המבנה מבוסס על שמות כיתות, עבור דוגמאות **Docs** הוא מבוסס בעיקר על [מפתח מפותל](/words/cpp/developer-guide/) סעיף תיעוד.
- התיקיה **Data** בתיקיית השורש של **Examples** מכילה קבצי קלט ששימשו בדוגמאות.
- ניתן להפעיל את כל הדוגמאות כבדיקות יחידה.

{{% alert color="primary" %}}

אנא אל תהסס להושיט יד באמצעות שלנו [Aspose.Words פורום משפחת מוצרים](https://forum.aspose.com/c/words/8) אם יש לך בעיות בהגדרת הדוגמאות או בהפעלתן.

{{% /alert %}}

## לתרום לשיפור הדוגמאות

אם ברצונך להוסיף או לשפר דוגמה, אנו ממליצים לך לתרום לפרויקט. כל הדוגמאות ופרויקטי הראווה במאגר זה הם קוד פתוח וניתן להשתמש בהם באופן חופשי ביישומים שלך.

אתה יכול מזלג המאגר, לערוך את קוד המקור, וליצור בקשת משיכה לתרום. אנו נסקור את השינויים ונכלול אותם במאגר אם נמצא מועיל.

## ראה גם

- [פרטים על אופן ההתקנה NuGet מנהל החבילות](https://docs.microsoft.com/nuget/guides/install-nuget)
